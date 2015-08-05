/*---------------------------------------------------------------------------
							 	Company ShopInfo
								by DEADdem
## DESCRIPTION:
 	Grabs information on a company owned shop
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_ForceIntoVehicle = {
	if(isNil "AM_InteractTarget")exitWith{};
	_isCuffed = AM_InteractTarget getVariable "AM_Cuffed";
	_isDead   = AM_InteractTarget getVariable "AM_Dead";
	if(!_isCuffed and !(_isDead and !AM_EMSDuty))exitWith{["Unit is not dead or restrained",AM_COLGROUP_RED] call AM_Core_Message};
	
	if(!(AM_InteractTarget isKindOf "Car"))then{		
		_v = nearestObjects[player,["Car","Air","Ship"],10] select 0;
		if(isNil "_v")exitWith{["No nearby vehicles (10 meters)", AM_COLGROUP_RED] call AM_Core_message};

		[_v,AM_InteractTarget] spawn {
			_vehicle = _this select 0;
			_unit = _this select 1;

			systemChat "Forcing unit into vehicle";
			sleep 3;
			_unit moveInCargo _vehicle;
		};
	}else{
		_unit = crew AM_InteractTarget select 0;
		_unit action["Eject", vehicle _unit];

		if(_unit getVariable "AM_Cuffed")then{
			AM_InteractTarget = _unit;
			["asd"] spawn AM_Core_BoundPlayer;
		};	
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	