/*---------------------------------------------------------------------------
Responsible for handling SQL Related features via A2NMySQL
---------------------------------------------------------------------------*/
AM_Server_RequestPlayer = {
	_player = _this select 0;
	if(isNil "_player" || isNull _player)exitWith{diag_log "Received Invalid Player for Stat Request"};

	_uid = getplayeruid _player;

	_query_stats = format["SELECT AM_UserName,AM_Licenses,AM_Inventory,AM_Bank,AM_Weapons,AM_Magazines,AM_Jailtime,AM_Uniform,AM_Items,AM_Backpack,AM_Vest,AM_Headgear,AM_Goggles FROM playerdata WHERE AM_UID='%1'",_uid];
	_query_ranks = format["SELECT * FROM ranks WHERE AM_UID='%1'",_uid];

	_pStats = [_query_stats] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_pStats"};

	_pStats = [_pStats] call AM_Server_StrToArr;

	if(count(_pStats select 0) == 0)then{
		[[],"AM_Network_ReceiveStats",_player] call BIS_fnc_MP;
	}else{
		_pRanks = [_query_ranks] call AM_Server_ProcessQuery;
		waitUntil{!isNil "_pRanks"};
		_pRanks	= [_pRanks] call AM_Server_StrToArr;

		_pRanks = (_pRanks select 0) select 0;

		_rCop = [_pRanks select 1] call AM_Server_StrToArr;
		_rEMS = [_pRanks select 2] call AM_Server_StrToArr;
		_rAdmin = [_pRanks select 3] call AM_Server_StrToArr;
		_rDonator = [_pRanks select 4] call AM_Server_StrToArr;

		_pStats = (_pStats select 0) select 0;

		_sUsername = _pStats select 0;
		_sLicenses =  [(_pStats select 1)] call AM_Server_StrToArr;
		_sInventory = [(_pStats select 2)] call AM_Server_StrToArr;
		_sBank		= [(_pStats select 3)] call AM_Server_StrToArr;
		_sGuns 		= [(_pStats select 4)] call AM_Server_StrToArr;
		_sMagazines = [(_pStats select 5)] call AM_Server_StrToArr;
		_sJailtime	= [(_pStats select 6)] call AM_Server_StrToArr;
		_sUniform   = [(_pStats select 7)] call AM_Server_StrToArr;
		_sItems     = [(_pStats select 8)] call AM_Server_StrToArr;
		_sBackpack  = [(_pStats select 9)] call AM_Server_StrToArr;
		_sVest      = [(_pStats select 10)] call AM_Server_StrToArr;
		_sHeadgear  = [(_pStats select 11)] call AM_Server_StrToArr;
		_sGoggles   = [(_pStats select 12)] call AM_Server_StrToArr;

		_statPacket = [[_rCop,_rEMS,_rAdmin,_rDonator],[_sUsername,_sLicenses,_sInventory,_sBank,_sGuns,_sMagazines,_sJailtime,_sUniform,_sItems,_sBackpack,_sVest,_sHeadgear,_sGoggles]];
		[_statPacket, "AM_Network_ReceiveStats", _player] call BIS_fnc_MP;
	};
};


AM_SERVER_SaveStats = {
	_player = _this select 0;
	if(isNil "_player" || isNull _player)exitWith{diag_log "Received Invalid Player for Stat Request"};
	_time = time;
	_stats = _this select 1;

	_sUsername = _stats select 0;
	_sLicenses =  _stats select 1;
	_sInventory = _stats select 2;
	_sBank		= _stats select 3;
	_sGuns 		= _stats select 4;
	_sMagazines = _stats select 5;
	_sJailtime	= _stats select 6;
	_sUniform   = _stats select 7;
	_sItems		= _stats select 8;
	_sBackpack	= _stats select 9;
	_sVest		= _stats select 10;
	_sHeadgear  = _stats select 11;
	_sGoggles	= _stats select 12;

	_query = format["UPDATE playerdata SET AM_Licenses='%1',AM_Inventory='%2',AM_Bank='%3',AM_Weapons='%4',AM_Magazines='%5',AM_Jailtime='%6',AM_Uniform='%7',AM_Items='%8',AM_Backpack='%9',AM_Vest='%10',AM_Headgear='%11',AM_Goggles='%12' WHERE AM_UID='%13'",_sLicenses,_sInventory,_sBank,_sGuns,_sMagazines,_sJailtime,_sUniform,_sItems,_sBackpack,_sVest,_sHeadgear,_sGoggles,getPlayerUID _player];
	_statSave = [_query] call AM_Server_ProcessQuery;
	waitUntil{!iSnil "_statSave"};
	_statSave = [_statSave] call AM_Server_StrToArr;

	if(count(_statSave select 0) == 0)then{
		[[format["Your statistics were saved in %1sec",(time - _time)],AM_COLGROUP_GREEN],"AM_Core_message",_player];
	}else{
		[[format["An Error Occured While Saving Stats [CONTACT ADMIN]"],AM_COLGROUP_RED],"AM_Core_message",_player];
	};
};
AM_Server_PlayerExists = {

};
AM_Server_SQLEmptyResult = {

};

AM_Server_VehicleActive = {
	_plateStrign = [_this,0,"",[""]] call BIS_fnc_Param;
	_sql = format["SELECT * FROM vehicledata WHERE AM_PlateS='%1'",_plateStrign];

	waitUntil {!AM_Server_DBActive};
	AM_Server_DBActive = true;
	_result = nil;
	_count = 0;
	while{_count < 11 and isNil "_result"}do{
		_result = "ArmA2NET.Unmanaged" callExtension format["ArmA2NETMySQLCommandAsync ['%1','%2']","liefmod",_sql];
		if(_result == "")then{_result = nil;};
		_count = _count + 1;
		sleep 0.3;
	};
	waitUntil{!isNil "_result"};
	AM_Server_DBActive=false;

	_item = _result select 0;
	_itemcount = count _result;
	if(_itemcount == 0)then{
		_return = false;
	}else{
		_return = true;
	};

	_return;
};

AM_Server_Insertcar = {
	_obj = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_owner = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	if(isNull _obj)exitWith{};

	_plateArray = _obj getVariable "AM_Platearray";
	_plateStrign = _obj getVariable "AM_Platestring";



	_type = typeOf(_obj);
	_uid = getplayeruid _owner;
	_randomIdentifier = round(random(40000));
	_insert = format["INSERT INTO vehicledata (AM_VehicleType,AM_VehicleA,AM_VehicleS,AM_OwnerUID,AM_RandIdentity) VALUES ('%1','%2','%3','%4','%5')",_type,_plateArray,_plateStrign,_uid,_randomIdentifier];
	waitUntil {!AM_Server_DBActive};
	AM_Server_DBActive = true;
	_result = nil;
	_count = 0;
	while{_count < 11 and isNil "_result"}do{
		_result = "ArmA2NET.Unmanaged" callExtension format["ArmA2NETMySQLCommandAsync ['%1','%2']","liefmod",_insert];
		if(_result == "")then{_result = nil;};
		_count = _count + 1;
		sleep 0.3;
	};

	waitUntil{!isNil "_result"};
	AM_Server_DBActive=false;

	_clientID = owner _owner;
	[[_randomIdentifier],"AM_network_receivenewcar",_clientID] call BIS_Fnc_MP;
};

AM_Server_GetPDDBInfo = {
	_cop = _this select 0;
	_sus = _this select 1;
	if(isnil "_cop" || isnil "_sus")exitWith{};
	_prepSQL = format["SELECT AM_UID FROM playerdata WHERE AM_UserName = '%1'",_sus];
	_result = [_prepSQL] call AM_Server_ProcessQuery;
	waitUntil{!isnIl "_result"};
	_result = [_result] call AM_Server_StrToArr;
	if(count(_result select 0) == 0)then{
		[[],"AM_PD_ShowPDDBInfo",owner _cop] call BIS_fnc_MP;
	}else{
		_susID = ((_result select 0) select 1) select 0;;
		_vehs = format["SELECT * FROM vehicledata WHERE AM_OwnerUID='%1'",_susID];
		_warrants = format["SELECT * FROM warrantdata WHERE WarrantName = '%1'",_sus];
		_alldata = format["SELECT * FROM playerdata WHERE AM_UID='%1'",_susID];

		_resVehs = [_vehs] call AM_Server_ProcessQuery;
		waitUntil {!isnil "_resVehs"};
		_resWarr = [_warrants] call AM_Server_ProcessQuery;
		waitUntil {!isnil "_resWarr"};
		_resData = [_alldata] call AM_Server_ProcessQuery;
		waitUntil {!isnil "_resData"};

		_resVehs = [_resVehs] call AM_Server_StrToArr;
		_resWarr = [_resWarr] call AM_Server_StrToArr;
		_resData = [_resData] call AM_Server_StrToArr;
		[[_resVehs,_resWarr,_resData],"AM_PD_ShowPDDBInfo",owner _cop] call BIS_fnc_MP;
	};
};

AM_Server_ProcessQuery = {
	_query = [_this,0,"",[""]] call BIS_fnc_Param;
	waitUntil {!AM_Server_DBActive};
	AM_Server_DBActive= true;
	_result = nil;
	for[{_sql_count = 0},{_sql_count < 4},{_sql_count = _sql_count + 1}]do{
		_result = "ArmA2NET.Unmanaged" callExtension format["ArmA2NETMySQLCommandAsync ['%1','%2']","liefmod",_query];
		if(_result == "")then{_result = nil};
		if(_sql_count == 4)exitWith{
			[format["Query %1 Failed, Time out",_query]] call AM_Server_LogSQL;
			_result = "[[]]";
		};
		sleep 0.7;
		_sql_count = _sql_count + 1;
	};
	waitUntil {!IsNil "_result"};
	AM_Server_DBActive = false;
	[format["Tried Query: %1 | Got Result: %2",_query,_result]] call AM_Server_LogSQL;
	_return = _result;
	_return;
};
//[player, _suspect,_reason,_info,_type,_status];
AM_Server_SubmitWarrant = {
	_sender = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_suspect = [_this,1,"",[""]] call BIS_fnc_Param;
	_reason = [_this,2,"",[""]] call BIS_fnc_Param;
	_info = [_this,3,"",[""]] call BIS_fnc_Param;
	_type = [_this,4,"",[""]] call BIS_fnc_Param;
	_status = [_this,5,"",[""]] call BIS_fnc_Param;
	_suspect = [_suspect] call AM_Server_RealEscape;
	_reason = [_reason] call AM_Server_RealEscape;
	_info = [_info] call AM_Server_RealEscape;
	_query = format["INSERT INTO warrantdata (WarrantName,WarrantType,WarrantCop,WarrantInfo,WarrantStatus,WarrantReason) VALUES ('%1','%2','%3','%4','%5','%6')",_suspect,_type,name _sender,_info,_status,_reason];
	_sendQuery = [_query] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_sendQuery"};
	_queryReturn = [_sendQuery] call AM_Server_StrToArr;
	_well = count(_queryReturn select 0);
	if(_well == 0)then{
		[["Warrant Submitted Successfully!",AM_COLGROUP_GREEN],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	}else{
		[["Warrant submission rejected!",AM_COLGROUP_RED],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	};
};
AM_Server_UpdateWarrant = {
	_sender = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_suspect = [_this,1,"",[""]] call BIS_fnc_Param;
	_reason = [_this,2,"",[""]] call BIS_fnc_Param;
	_info = [_this,3,"",[""]] call BIS_fnc_Param;
	_type = [_this,4,"",[""]] call BIS_fnc_Param;
	_status = [_this,5,"",[""]] call BIS_fnc_Param;
	_ID = [_this,6,0,[0,""]] call BIS_fnc_Param;

	_suspect = [_suspect] call AM_Server_RealEscape;
	_reason = [_reason] call AM_Server_RealEscape;
	_info = [_info] call AM_Server_RealEscape;
	_query = format["UPDATE warrantdata SET WarrantReason='%2',WarrantInfo='%3',WarrantType='%4',WarrantStatus='%5' WHERE WarrantID='%6'",'skipe',_reason,_info,_type,_status,_ID];
	_sendQuery = [_query] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_sendQuery"};
	_queryReturn = [_sendQuery] call AM_Server_StrToArr;
	_well = count(_queryReturn select 0);
	if(_well == 0)then{
		[["Warrant Submitted Successfully!",AM_COLGROUP_GREEN],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	}else{
		[["Warrant submission rejected!",AM_COLGROUP_RED],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	};
};

AM_Server_GetWarrants = {
	_sender = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_suspect = [_this,1,"",[""]] call BIS_fnc_Param;

	_suspect = [_suspect] call AM_Server_RealEscape;
	_kike = format["SELECT * FROM warrantdata WHERE WarrantName='%1'",_suspect];
	_kike = [_kike] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_kike"};
	_kike = [_kike] call AM_Server_StrToArr;

	[[_kike],"AM_network_receivewarrants",owner _sender] call BIS_fnc_MP;
};

AM_Server_DeleteWarrant = {
	_warrant_ID = [_this,0,0,[0]] call BIS_fnc_Param;
	_sender = [_this,1,objNull,[objNull]] call BIS_fnc_Param;

	_sql = format["UPDATE warrantdata SET Warrantname='Trash Bin' WHERE WarrantID = '%1'",_warrant_ID];
	_sendQuery = [_sql] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_sendQuery"};
	_queryReturn = [_sendQuery] call AM_Server_StrToArr;
	_well = count(_queryReturn select 0);
	if(_well == 0)then{
		[["Warrant Deleted Successfully!",AM_COLGROUP_GREEN],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	}else{
		[["Warrant Deletion rejected!",AM_COLGROUP_RED],"AM_Core_Message",(owner _sender)] call BIS_fnc_MP;
	};
};

AM_Server_GrabStorage = {
	_player = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_storage =[_this,1,objNull,[objNull]] call BIS_fnc_Param;

	_uid = getPlayerUID _player;
	_owner = owner _player;

	_query = format["SELECT * FROM storage WHERE AM_Owner = '%1'",_uid];
	_result = [_query] call AM_Server_ProcessQuery;
	waitUntil {!isNil "_result"};

	_result = [_result] call AM_Server_StrToArr;
	[[_result,_storage],"AM_network_openstorage",_owner] call BIS_fnc_MP;
};

AM_Server_SpeedCamTicketPlayer = {
	_player = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_vehicle = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	_speed = [_this,2,80,[0]] call BIS_fnc_Param;

	_name = name _player;
	_warrantType = "Ticket";
	_warrantSubmit = "SYSTEM";
	_warrantreason = format["Automatic Speedcam Ticketing System"];
	_warrantInfo	= format["Speeding(%1) Plate(%3)",_speed,(getTexT(configFile >> "cfgVehicle" >> typeOf(_vehicle) >> "displayName")), _vehicle getVariable "AM_Platestring"];
	_warrantStatus = "Open";

	_sql = format["INSERT INTO warrantdata (WarrantName,WarrantType,WarrantCop,WarrantInfo,WarrantStatus,WarrantReason) VALUES ('%1','%2','%3','%4','%5','%6')",_name, _warrantType, _warrantSubmit, _warrantInfo, _warrantStatus, _warrantreason];
	_result = [_sql] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_result"};
	_result = [_result] call AM_Server_StrToArr;
	_item = _result select 0;
	if(count _item == 0)then{
		[[format["The Speed Camera Caught you going %1!",_speed], AM_COLGROUP_RED],"AM_Core_message",owner _player] call BIS_fnc_MP;
	};
};
AM_Server_LicensePlateInfo = {
	_plate = [_this,0,"",[""]] call BIS_fnc_Param;
	_player = [_this,1,objNull,[objNull]] call BIS_fnc_Param;

	_escaped_plate = [_plate] call AM_Server_RealEscape;

	_sql = format["SELECT AM_VehicleType,AM_OwnerUID,AM_VehicleS FROM vehicledata WHERE AM_VehicleS = '%1'",_escaped_plate];
	_info = [_sql] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_info"};
	_info = [_info] call AM_Server_StrToArr;

	if(count(_info select 0) == 0)exitWith{
		[[], "AM_network_LicensePlateReceive", owner(_player)] call BIS_fnc_MP;
	};

	_allinfo = (_info select 0) select 0;

	_carType = _allinfo select 0;
	_carOwner = _allinfo select 1;
	_carPlate = _allinfo select 2;

	_userinfo = format["SELECT AM_UserName FROM playerdata WHERE AM_UID='%1'",_carOwner];
	_getName = [_userinfo] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_getName"};
	_getname = [_getname] call AM_Server_StrToArr;
	if(count(_getName select 0) == 0)then{
		_carOwner = "ERR_UNKNOWN_OWNER";
	}else{
		_carOwner = ((_getName select 0) select 0) select 0;
	};

	[[_carType,_carOwner,_carPlate], "AM_network_LicensePlateReceive", owner(_player)] call BIS_fnc_MP;
};
AM_Server_StoreVehicle = {
	_unit = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_obj = [_this,1,"",[""]] call BIS_fnc_param;
	_platestring = [_this,2,"",[""]] call BIS_fnc_Param;
	_plateArray = [_this,3,[],[[]], [7,6]] call BIS_fnc_Param;
	_storage = [_this,4,objNull,[objNull]] call BIS_fnc_Param;
	if(isNull _storage)exitWith{diag_log format["[BUG] Cannot process %1's vehicle due to null storage item.",name _unit]};
	_query = format["INSERT INTO storage(AM_Class,AM_Owner,AM_PlateInfo,AM_StoragePlace) VALUES ('%1','%2','%3','%4')",_obj,getPlayerUID _unit,_plateArray,_storage];
	_storage_rs = [_query] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_storage_rs"};
	_storage_rs = [_storage_rs] call AM_Server_StrToArr;
	if(count(_storage_rs select 0) == 0)then{
		[[_obj], "AM_network_storedvehicle", owner _unit] call BIS_fnc_MP;
	}else{
		[["Your vehicled failed to save to our database",AM_COLGROUP_RED],"AM_Core_Message", owner _unit] call BIS_fnc_MP;
	};
};
AM_Server_RequestRetreival={
	_id = [_this,0,0,[0]] call BIS_fnc_Param;
	_player = [_this,1,objNull,[objNull]] call BIS_fnc_Param;

	_sql = format["DELETE FROM storage WHERE AM_StorageID='%1'",_id];
	_rs = [_sql] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_rs"};
	_rs = [_rs] call AM_Server_StrToArr;
	if(count(_rs select 0) == 0)then{
		[[_id],"AM_network_retreivevehicle",owner _player] call BIS_fnc_MP;
	}else{
		[["Failed to retreive your vehicle from the database!",AM_COLGROUP_RED],"AM_Core_Message",owner _player] call BIS_fnc_MP;
	};

};
AM_Server_Registration = {
	_player = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_username = [_this,1,"",[""]] call BIS_fnc_param;
	_password = [_this,2,"",[""]] call BIS_fnc_Param;
	_username = [_username] call AM_Server_RealEscape;
	_password = [_password] call AM_Server_RealEscape;
	_uid = getplayeruid _player;
	_sql = format["INSERT INTO loginsys (AM_UID,AM_Username,AM_Password) VALUES ('%1','%2','%3')",_uid,_username,_password];
	_registration_result = [_sql] call AM_Server_ProcessQuery;
	waitUntil {!isNil "_registration_result"};
	_registration_result = [_registration_result] call AM_Server_StrToArr;
	[[],"AM_Core_GetLogin",(owner _player)] call BIS_fnc_MP;
	[["Registration successful", AM_COLGROUP_GREEN], "AM_Core_Message",owner _player] call BIS_fnc_MP;
};
AM_Server_GetPlayerLoginInfo = {
	_player = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	iF(isNull _player)exitWith{};

	_player_uid = getPlayerUID _player;
	_prepQuery = format["SELECT AM_Password,AM_Username,AM_Blocked FROM loginsys WHERE AM_UID='%1'",_player_uid];
	_result = [_prepQuery] call AM_Server_ProcessQuery;
	waitUntil {!isNil "_result"};
	_result = [_result] call AM_Server_StrToArr;


	_information = _result select 0;
	if(count(_information) == 0)then{
		[["none","none","none"],"AM_network_OpenLoginSys",owner(_player)] call BIS_fnc_MP;
	}else{
		_information = _information select 0;
		_password = _information select 0;
		_username = _information select 1;
		_blocked  = _information select 2;
		[[_username,_password,_blocked],"AM_network_OpenLoginSys",owner(_player)] call BIS_fnc_MP;
	};
};

AM_Server_CheckHouse = {
	_house = _this select 0;
	_player = _this select 1;

	_buildingID = [_house] call AM_COre_BuildingID;

	_q = format["SELECT * FROM housing WHERE AM_HouseID = '%1'",_buildingID];
	_houseInfo = [_q] call AM_Server_ProcessQuery;
	waitUntil{!isNil "_houseInfo"};
	_houseInfo = [_houseInfo] call AM_Server_StrToArr;	
	if(count(_houseInfo select 0))then{
		[[],"AM_Network_ReceiveHouseRequest",_player] call BIS_fnc_MP;
	}else{
		[[_houseInfo], "AM_Network_ReceiveHouseRequest",_player] call BIS_fnc_MP;
	};
};

AM_Server_UpdateHouse = {
	_house = _this select 0;
	_player = _this select 1;

	_bId = [_house] call AM_COre_BuildingID;

	_getIsExistent = format["SELECT * FROM housing WHERE AM_HouseID = '%1'", _buildingID];	
	_existent = [_getIsExistent] call AM_Server_ProcessQuery;
	waitUntil {
	  !isnIl "_existent";
	};
	_existent = [_existent] call AM_Server_StrToArr;

	if(count (_existent select 0) == 0)then{
		_insertQ = format["INSERT INTO housing (AM_HouseID, AM_HouseStorage, AM_HouseOwner) VALUES ('%1','%2','%3')", _bId, [], getPlayerUID _player];
		_queryGo = [_insertQ] call AM_Server_ProcessQuery;
	}else{
		_updateQ = format["UPDATE housing SET AM_HouseStorage='%1'", str(_house getVariable "AM_HouseStorage")];
		_queryGo = [_updateQ] call AM_Server_ProcessQuery;

	};
};