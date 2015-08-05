/*---------------------------------------------------------------------------
						Police Funcions
						   by DEADdem
## DESCRIPTION:
 	Policing-Related functions
## UPDATES:
  001:
  	Creation
  002:
  	Police Warrant Database System
---------------------------------------------------------------------------*/
AM_PD_Open = {
	_character = [_this,0,objNull, [objNull]] call BIS_fnc_Param;
	if(_character)exitWith{};
};

AM_PD_OpenWarrantsSubmit=  {
	if(!createDialog "AM_WarrantsSubmit")exitWith{};
	{
		lbAdd[2100,_x];
	}forEach AM_WarrantsMenu_Types;
	{
		lbAdd[2101,_x];
	}forEach AM_WarrantsMenu_Status;
};
AM_PD_Computer = {
	if(vehicle player == player)exitWith{};
	if(!createDialog "AM_PolicePC")exitWith{};
};
AM_PD_SubmitWarrant = {
	_suspect = [_this,0,"empty",[""]] call BIS_fnc_Param;
	_reason = [_this,1,"empty",[""]] call BIS_fnc_Param;
	_info = [_this,2,"empty",[""]] call BIS_fnc_Param;
	_type = [_this,3,4,[0]] call BIS_fnc_Param;
	_status = [_this,4,4,[0]] call BIS_fnc_Param;
	if(_suspect == "empty" || _reason == "empty" || _info == "empty" || _type == 4 || _status == 4)exitWith{
		["You are missing some information!",AM_COLGROUP_RED] call AM_Core_Message;
	};
	_type = AM_WarrantsMenu_Types select _type;
	_status = AM_WarrantsMenu_Status select _status;
	_toSubmit = [player, _suspect,_reason,_info,_type,_status];
	[_toSubmit, "AM_Server_SubmitWarrant",false] call BIS_fnc_MP;
};

AM_PD_GetWarrants = {
	_suspect = [_this,0,"empty",[""]] call BIS_fnc_Param;
	if(_suspect == "empty")exitWith{hint "No suspect given!"};
	[[player,_suspect],"AM_Server_GetWarrants",false] call BIS_fnc_MP;
	closeDialog 0;
	systemChat "Fetching...";

};

AM_PD_ViewWarrant = {
	_index = [_this,0,0,[0]] call BIS_fnc_Param;
	if(!createDialog "AM_WarrantsMenu")exitWith{hint "Cannot create menu!"};
	ctrlShow[1000,false];
	ctrlShow[1600,false];
	ctrlShow [1601,false];
	ctrlShow [1602,false];
	ctrlShow [1400,false];
	ctrlShow[1800,false];
	buttonSetAction[1603,"closeDialog 0"];
	ctrlSetText[1603,"Back"];
	_arr = AM_temp_Warrants select _index;
	_wID = _arr select 0;
	_wName = _arr select 1;
	_wType = _arr select 2;
	_wCop = _arr select 3;
	_wInfo = _arr select 4;
	_wStatus = _arr select 5;
	_wReason = _arr select 6;
	lbAdd[1500,format["Warrant ID#: %1",_wID]];
	lbAdd[1500,format["Suspect Name: %1",_wName]];
	lbAdd[1500,format["Warrant Type: %1",_wType]];
	lbAdd[1500,format["Submitting Officer: %1",_wCop]];
	lbAdd[1500,format["Warrant Status: %1",_wStatus]];
	lbAdd[1500,format["Reason for Warrant: %1",_wReason]];
	lbAdd[1500,format["Warrant Information: %1",_wInfo]];
};
AM_PD_GetPoliceDBInfo = {
	if(AM_ClientRunningQuery)exitWith{["Database Active, Please wait..",AM_COLGROUP_RED] call AM_Core_Message};
	_name = [_this,0,"NO_NAME",[""]] call BIS_fnc_Param;
	if(isNil "_name" || _name == "NO_NAME")exitWith{systemChat "Enter a name"};
	[[player,_name],"AM_Server_GetPDDBInfo",false] call BIS_fnc_MP;
	AM_ClientRunningQuery = true;
};
AM_PD_ShowPDDBInfo = {
	closeDialog 0;
	AM_ClientRunningQuery = false;
	if(!createDialog "AM_PoliceDB")exitWith{};

	if(count _this == 0)exitWith{lbAdd[1500,"ERROR: UNKNOWN PLAYER"]};
		systemChat str (_this select 0);
	_arrVehicles = [_this,0,[],[[]]] call BIS_fnc_Param;
	_arrWarrants = [_this,1,[],[[]]] call BIS_fnc_Param;
	_arrData 	 = [_this,2,[],[[]]] call BIS_fnc_Param;

	_vehicles = (_arrVehicles select 0);
	_warrants = (_arrWarrants select 0);
	_arrData  = (_arrData select 0);
	lbAdd[1500,"=======VEHICLES======="];
	{
		_vType = _x select 1;
		_vPlate = _x select 3;

		lbAdd[1500,format["
		[%1] %2
		",_vPlate,(getText(configFile >> "CfgVehicles" >> _vType >> "displayName"))]];
	}forEach _vehicles;
	if(count _warrants == 0)then{
		lbAdd[1500,"=======WARRANT FLAGS======="];
		lbADd[1500,"No Warrants to show"];
	}else{
		lbAdd[1500,"=======WARRANT FLAGS======="];
		{
			_warrantType = _x select 2;
			_warrantname = _x select 1;
			lbAdd[1500,format["
				[%1] %2
			",_warrantType,_warrantname]];
		}forEach _warrants;
	};
};
AM_PD_EditWarrant = {
	_ID = [_this,0,0,[0]] call BIS_fnc_Param;
	_arr = AM_temp_Warrants select _ID;
	_warrant_id = (AM_temp_Warrants select _id) select 0;

	if(!createDialog "AM_WarrantsSubmit")exitWith{};
	{
		lbAdd[2100,_x];
	}forEach AM_WarrantsMenu_Types;
	{
		lbAdd[2101,_x];
	}forEach AM_WarrantsMenu_Status;

	_wID = _arr select 0;
	_wName = _arr select 1;
	_wType = _arr select 2;
	_wCop = _arr select 3;
	_wInfo = _arr select 4;
	_wStatus = _arr select 5;
	_wReason = _arr select 6;

	ctrlSetText[1400,_wName];
	ctrlSetText[1401,_wReason];
	ctrlSetText[1402,_wInfo];

	buttonSetAction[1600,format["[ctrlText 1400,ctrlText 1401,ctrlText 1402,lbCurSel 2100,lbCurSel 2101,%1] call AM_PD_EditUpdate;closeDialog 0;",_wID]];
};
AM_PD_EditUpdate = {
	_suspect = [_this,0,"empty",[""]] call BIS_fnc_Param;
	_reason = [_this,1,"empty",[""]] call BIS_fnc_Param;
	_info = [_this,2,"empty",[""]] call BIS_fnc_Param;
	_type = [_this,3,4,[0]] call BIS_fnc_Param;
	_status = [_this,4,4,[0]] call BIS_fnc_Param;
	_ID = [_this,5,0,[0]] call BIS_fnc_Param;
	_type = AM_WarrantsMenu_Types select _type;
	_status = AM_WarrantsMenu_Status select _status;
	_toSubmit = [player, _suspect,_reason,_info,_type,_status,_ID];
	[_toSubmit,"AM_Server_UpdateWarrant",false] call BIS_fnc_MP;
};

AM_PD_deleteWarrant = {
	_ID = [_this,0,0,[0]] call BIS_fnc_Param;
	_arr = AM_temp_Warrants select _ID;
	_wID = _arr select 0;
	_wName = _arr select 1;
	_wType = _arr select 2;
	_wCop = _arr select 3;
	_wInfo = _arr select 4;
	_wStatus = _arr select 5;
	_wReason = _arr select 6;
	_toDelete = [_wID,player];
	[_toDelete,"AM_Server_DeleteWarrant",false] call BIS_fnc_MP;
};

AM_PD_OpenTicketing = {
	if(!createDialog "AM_Ticket")exitWith{};
};
AM_PD_IssueTicket = {
	if(isNil "AM_InteractTarget")exitWith{systemChat "No target"};
	_ticketReason = _this select 0;
	_ticketPrice = _this select 1;
	_ticketPrice = parseNumber(_ticketPrice);

	[[_ticketReason,_ticketPrice,player], "AM_network_ReceiveTicket",(AM_InteractTarget)] call BIS_fnc_MP;

};
AM_PD_Duty = {
	AM_GearPlayer = [uniform player,weapons player,magazines player,items player,backpack player,vest player,headgear player,goggles player];
	call AM_RemoveGear;
	if(AM_CopRank == 0)exitWith{["You are not whitelisted for LEO",AM_COLGROUP_RED] call AM_Core_message};
	if(AM_EMSDuty)exitWith{["You are currently on a duty as EMT",AM_COLGROUP_RED] call AM_Core_message};
	if(AM_JailTime > 0)exitWith{["You have pending jail time to serve",AM_COLGROUP_RED] call AM_Core_Message};
	AM_PoliceDuty=true;
	
	[[[format["%1 has gone on duty as a police officer!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	systemChat "You have gone on duty, Go to the Kit Store to buy your ranking kit!";

	AM_MyLicenses = AM_MyLicenses + ["police_auth"];

};
AM_PD_OffDuty = {
		call AM_RemoveGear;
		AM_PoliceDuty = false;
		[[[format["%1 has gone off-duty as a police officer!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
		AM_MyLicenses = AM_MyLicenses - ["police_auth"];
		player addUniform (AM_Gearplayer select 0);
		{
			player addWeapon _x;
		}forEach (AM_Gearplayer select 1);

		{
			player addMagazine _x;
		}forEach (AM_Gearplayer select 2);
	    {
			player addItem _x;
		}forEach (AM_Gearplayer select 3);
		player addBackpack (AM_Gearplayer select 4);
		player addVest (AM_Gearplayer select 5);
		player addHeadgear (AM_Gearplayer select 6);
		player addGoggles (AM_Gearplayer select 7);
		AM_HolsteredGun_Slot1 = "";
		AM_HolsteredGun_Slot2 = "";	
		AM_Gearplayer = [];
};

AM_PD_FetchLicensePlateInfo = {
	_plate = [_this,0,"", [""]] call BIS_fnc_Param;
	if(isNil "_plate")exitWith{hint "You must enter a license plate!"};
	[[_plate,player], "AM_Server_LicensePlateInfo",false] call BIS_Fnc_MP;
};

AM_PD_GunRack = {
	closeDialog 0;
	if(!AM_PoliceDuty)exitWith{systemChat "You arent on duty!"};
	if(!createDialog "AM_GunRack")exitWith{systemChat "Couldnt create dialog"};
	if(isNil "AM_InteractTarget")exitWith{closeDialog 0;};
	AM_MyGear = weapons player + magazines player + [vest player];
	_carGear = AM_InteractTarget getVariable "AM_GunRack";
	AM_MyGear = AM_MyGear - [""];
	{
		_isAWeaponClassOrIsAMagazineClass = ["CfgWeapons",_x] call AM_Core_IsClass;
		if(_isAWeaponClassOrIsAMagazineClass)then{
			lbAdd[1500,format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")]];
		}elsE{
			lbAdd[1500,format["%1",getText(configFile >> "cfgMagazines" >> _x >> "displayName")]];
		};
	}forEach AM_MyGear;
	_allcaritems = (_carGear select 0)+(_carGear select 1);
	{
		_isGun = ["CfgWeapons",_x] call AM_Core_IsClass;
		if(_isGun)then{
			lbAdd[1501,format["%1",getText(configFile >> "cfgWeapons" >> _x >> "displayName")]];
		}else{
			lbAdd[1501,format["%1",getText(configFile >> "cfgMagazines" >> _x >> "displayName")]];
		};
	}forEach _allcaritems;
};

AM_PD_StoreGunRack = {
	_sel = [_this,0,0,[0]] call BIS_fnc_Param;
	systemChat "Storing weapon..";
	_VRACK = AM_InteractTarget getVariable "AM_GunRack";
	_item = AM_MyGear select _sel;
	_isWeapon = ["CfgWeapons",_item] call AM_Core_IsClass;
	if(_isWeapon)then{
		_insert_cell = _VRACK select 0;
		_insert_cell set [count _insert_cell, _item];
		player removeWeapon _item;
		_putBack = [_insert_cell, (_VRACK select 1)];
		AM_InteractTarget setVariable ["AM_GunRack",_putBack,true];
	}else{
		_insert_cell = _VRACK select 1;
		_insert_cell set[count _insert_cell, _item];
		player removemagazine _item;
		_putBack = [(_VRACK select 0), _insert_cell];
		AM_InteractTarget setVariable ["AM_GunRack",_putBack,true];
	};
	closeDialog 0;
	[] call AM_PD_GunRack;
};

AM_PD_TakeGunRack ={
	_sel = [_this,0,0,[0]] call BIS_fnc_Param;
	_allitems = ((AM_InteractTarget getVariable "AM_GunRack") select 0) + ((AM_InteractTarget getVariable "AM_GunRack") select 1);

	_weps = ((AM_InteractTarget getVariable "AM_GunRack") select 0);
	_mags = ((AM_InteractTarget getVariable "AM_GunRack") select 1);

	_item = _allitems select _sel;
	_isgun = ["CfgWeapons",_item] call AM_Core_IsClass;
	if(_isGun)then{
		_weps = _weps - [_item];
		player addWeapon _item;
		_allitems = [_weps,_mags];
		AM_InteractTarget setVariable ["AM_GunRack",_allitems,true];
	}else{
		{
			player addMagazine _item;
		}forEach _mags;
		_mags = _mags - [_item];
		_allitems = [_weps,_mags];
		AM_InteractTarget setVariable ["AM_GunRack",_allitems,true];
	};
	closeDialog 0;
	[] call AM_PD_GunRack;
};

AM_PD_AddJailTime = {
	_timeInSec = [_this,0,0,[0]] call BIS_fnc_Param;
	_timeInMin = [_this,1,0,[0]] call BIS_fnc_Param;
	_timeInHr = [_this,2,0,[0]] call BIS_fnc_Param;
	if(_timeInmin == -1)then{_timeInMin = 0};
	if(_timeInSec == -1)then{_timeInSec = 0};
	if(_timeInHr == -1)then{_timeInHr = 0};
	systemChat format["%1 %2 %3",_timeInSec,_timeInMin,_timeInHr];
	_timeInsec = AM_NumArray_Sixty select _timeInSec;
	_timeInMin = AM_NumArray_Sixty select _timeInMin;
	_timeInHr  = AM_NumArray_TwentyFour select _timeInHr;

	if(isnil "AM_InteractTarget")exitWith{};
	if(player distance AM_Jail > 100)exitWith{};
	_totalTimeToAdd = 0;

	_timeInMin = _timeInMin * 60;
	_timeInHr   = _timeInHr * 60 * 60;

	_totalTimeToAdd = _timeInHr + _timeInMin + _timeInSec;
	[[_totalTimeToAdd,player,'add'],"AM_network_receivejailtime", AM_InteractTarget] call BIS_fnc_MP;
};

AM_PD_PerformmenuAction = {
	_action = [_this,0,0,[0]] call BIS_fnc_Param;
	_type = AM_PoliceMenu_Options select _action;
	_call = _type select 1;
	closedialog 0;
	call compile _call;
};

AM_PD_PoliceDialog = {
	_action = [_this,0,"lock",[""]] call BIS_fnc_Param;

	switch(_action)do{
		case "lock":{};
		case "imprison":{
			if(!createDialog "AM_PrisonTimer")exitWith{hint "Failed to make dialog"};
			_numSixty = [60] call AM_Core_CreateNumberArray;
			_numTwentyFour = [24] call AM_Core_CreateNumberArray;
			{
				lbAdd[2100,format["%1",_x]];
				lbAdd[2101,format["%1",_x]];
			}foreAch _numSixty;
			{
				lbAdd[2102,format["%1",_x]];
			}foreach _numTwentyFour;
		};
		case "restrain":
		{
			[format["Not Implemented Yet"],AM_COLGROUP_RED] call AM_Core_Message;
		};
		case "cite":
		{

			[format["Not Implemented Yet"],AM_COLGROUP_RED] call AM_Core_Message;
		};
		case "identify":
		{
			_target = name cursorTarget;
			[format["The name of the subect is %1", _target],AM_COLGROUP_Green] call AM_Core_Message;
		};
		case "ticket":{

			[format["Not Implemented Yet"],AM_COLGROUP_RED] call AM_Core_Message;
		};
		case "disarm":{
			if(isNil "AM_InteractTarget")exitWith{};
			_target = AM_InteractTarget;
			_targetname = name _target;
			removeAllWeapons _target;
			[format["You have disarmed %1", _targetname],AM_COLGROUP_Green] call AM_Core_Message;
		};
	};
};
