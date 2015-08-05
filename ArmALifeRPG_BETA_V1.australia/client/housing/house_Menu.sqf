/*---------------------------------------------------------------------------
					Function Title
	   		       by Your Name Here
				
## DESCRIPTION:
	Opens house menu
## UPDATES:
  001:                      
  Creation
---------------------------------------------------------------------------*/
AM_Housing_Menu = {
	_house = nearestObjects[player,AM_HousingTypes,20] select 0;
	if(AM_ClientRunningQuery)exitWith{["Database Active, Please wait..",AM_COLGROUP_RED] call AM_Core_Message};
	AM_ClientRunningQuery = true;
	AM_CUR_House = _house;
	AM_CUR_HouseInfo = nil;
	call AM_CheckHouse;

	waitUntil{!isNil "AM_CUR_HouseInfo"};
	_hType = typeOf(AM_CUR_House);
	_hPI = AM_HousingPrices select ([_hType] call AM_Inventory_GNI) select 1;
	_cIH = ["cash"] call AM_Inventory_GetAmount;
	_bID = [AM_CUR_House] call AM_Core_BuildingID;
	_houseID = [_house] call AM_Core_BuildingID;

	_amITheOwner = if(!(_houseID in AM_MyHouses))then{
		false;
	}else{
		true;
	};

	_dlg = createDialog "AM_Housing";
	AM_ClientRunningQuery = false;

	
	if(_amITheOwner)then{
		lbClear 1500;
		lbAdd[1500, format["Sell House: $%1", _hPI]];
		lbAdd[1500, format["Lock/Unlock House"]];
		lbAdd[1500, format["Access Storage"]];
	}else{
		lbAdd[1500, format["Buy House: $%1", _hPI]];
	};
};
AM_HouseStorage = {
	closeDialog 0;
	_def = (nearestObjects[player,AM_HousingTypes,20] select 0);
	if(!AM_CUR_HouseIsOwned)exitWith{systemChat "Not your House"};
	if(!createDialog "AM_GunRack")exitWith{systemChat "Couldnt create dialog"};
	AM_MyGear = weapons player + magazines player + [vest player];
	_carGear =  _def getVariable "AM_GunRack";
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
/*---------------------------------------------------------------------------	
			Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	