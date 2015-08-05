/*---------------------------------------------------------------------------
							      Holster
								by DEADdem
## DESCRIPTION:
 	Processes Holstering/Unholstering of sidearms
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Holster = {
	_side = [_this,0,"left",[""]] call BIS_fnc_Param;
	if(isNil "_side") exitWith{systemChat "FNC: Core_Holster - No side given"};
	_curgun = currentWeapon player;
	if(_side == "left")then{
		if(AM_HolsteredGun_Slot1 == "")then{
			
			systemChat "Holstering..";
			if(currentWeapon player == "")exitWith{["You do not have a weapon to holster!",AM_COLGROUP_RED] call AM_Core_Message;};
			AM_HolsteredGun_Slot1 = _curgun;
			player removeWeapon (_curgun);
			[format["You holstered your %1 on your Primary Holster",(getText(configFile >> "CfgWeapons" >> AM_HolsteredGun_Slot1 >> "displayName"))],AM_COLGROUP_WHITE] call AM_Core_Message;
		}else{
			
			systemChat "Unholstering..";
			if(!(currentWeapon player == ""))exitWith{["You cannot unholster when you have a weapon in-hand",AM_COLGROUP_RED] call AM_Core_Message};
			player addWeapon AM_HolsteredGun_Slot1;
			AM_HolsteredGun_Slot1 = "";
			[format["You unholstered your %1 from your Primary Holster",(getText(configFile >> "CfgWeapons" >> currentWeapon player >> "displayName"))],AM_COLGROUP_WHITE] call AM_Core_Message;
		};
	}else{
		if(AM_HolsteredGun_Slot2 == "")then{
			
			systemChat "Holstering..";
			if(currentWeapon player == "")exitWith{["You do not have a weapon to holster!",AM_COLGROUP_RED] call AM_Core_Message;};
			AM_HolsteredGun_Slot2 = _curgun;
			player removeWeapon (_curgun);
			[format["You holstered your %1 on your Secondary Holster",(getText(configFile >> "CfgWeapons" >> AM_HolsteredGun_Slot2 >> "displayName"))],AM_COLGROUP_WHITE] call AM_Core_Message;
		}else{
			
			systemChat "Unholstering..";
			if(!(currentWeapon player == ""))exitWith{["You cannot unholster when you have a weapon in-hand",AM_COLGROUP_RED] call AM_Core_Message};
			player addWeapon AM_HolsteredGun_Slot2;
			AM_HolsteredGun_Slot2 = "";
			[format["You unholstered your %1 from your Secondary Holster",(getText(configFile >> "CfgWeapons" >> currentWeapon player >> "displayName"))],AM_COLGROUP_WHITE] call AM_Core_Message;
		};
	};	
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	