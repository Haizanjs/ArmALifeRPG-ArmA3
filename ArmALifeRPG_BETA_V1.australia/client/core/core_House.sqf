/*---------------------------------------------------------------------------
						   		  House
								by DEADdem
## DESCRIPTION:
 	Handles house action given by dialog
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Housing = {
	_action = _this select 0;
	closeDialog 0;

	switch(_action)do{
		case 0:
		{	
			systemChat "Processing Transaction..";
			if(Count (AM_Cur_HouseInfo select 0) == 0)then{
				if(count AM_MyHouses == 5)exitWith{
					["You cannot own more than 5 houses",AM_COLGROUP_RED] call AM_Core_message;
					AM_Cur_HouseInfo = nil;
				};
				_hType = typeOf(AM_CUR_House);
				_hPI = AM_HousingPrices select ([_hType] call AM_Inventory_GNI) select 1;
				_cIH = ["cash"] call AM_Inventory_GetAmount;
				_bID = [AM_CUR_House] call AM_Core_BuildingID;
				if(_bID in AM_MyHouses)exitWith{
					AM_MyHouses = AM_MyHouses - [(_bID)];
					
					["cash",_hPI] call AM_Inventory_AddItem;
					[format["You sold this house for $%1",_hPI], AM_COLGROUP_GREEN] call AM_Core_Message;
					AM_Cur_HouseInfo = nil;
					[(_bID)] call AM_DeleteHouse;
				};	
				if(_hPI > _cIH)exitWith{["You do not have enough cash for this house!", AM_COLGROUP_RED] call AM_Core_Message};
				["cash",-_hPI] call AM_Inventory_AddItem;
				AM_MyHouses = AM_MyHouses + [_bID];
				["You bought a %1 for $%2",getText(configFile >> "cfgVehicles" >> typeOf(AM_CUR_House) >> "displayName"), _hPI];
				AM_CUR_House setVariable ["AM_GunRack",[[],[]],true];
				call AM_UpdateCurrentHouse;
				AM_Cur_HouseInfo = nil;
				[] call AM_Housing_Menu;
				
			}else{
				_uid = AM_Cur_HouseInfo select 0 select 0 select 1;
				if(!(_uid == getPlayerUID player))exitWith{};
				_hType = typeOf(AM_CUR_House);
				_hPI = AM_HousingPrices select ([_hType] call AM_Inventory_GNI) select 1;
				_cIH = ["cash"] call AM_Inventory_GetAmount;
				_bID = [AM_CUR_House] call AM_Core_BuildingID;
				[(_bID)] call AM_DeleteHouse;
				["cash",_hPI] call AM_Inventory_AddItem;
				AM_MyHouses = AM_MyHouses - [_bID];
				[format["You sold this house for %1!",_hPI], AM_COLGROUP_GREEN] call AM_Core_message;
				closeDialog 0;
				AM_Cur_HouseInfo = nil;
				[] call AM_Housing_Menu;


			};
		};
		case 1:
		{
			if(Count AM_Cur_HouseInfo == 0) then
			{
				hint "This is not your house"
			} else {
				_houseLockState = AM_CUR_House getVariable ["AM_HouseLocked",false];
				if(!_houseLockState)then{
					AM_Cur_House setVariable ["AM_HouseLocked",true,true];
					["You locked your house", AM_COLGROUP_WHITE] call AM_Core_message;
				}else{
					AM_Cur_House setVariable ["AM_HouseLocked",false,true];
					["You unlocked your house", AM_COLGROUP_WHITE] call AM_Core_message;
				};
			};
		};
		case 2:
		{
			if(Count AM_Cur_HouseInfo == 0) then
			{
				hint "This is not your house"
			}else{
				call AM_HouseStorage;
			};
		};
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	