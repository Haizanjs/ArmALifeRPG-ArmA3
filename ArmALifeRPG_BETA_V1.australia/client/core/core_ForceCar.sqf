/*---------------------------------------------------------------------------
							 Force Into Vehicle
								by DEADdem
## DESCRIPTION:
 	Forces interaction unit into nearby vehicle
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_ForceIntoVehicle = {
	private["_unit"];
	_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	if(isNil "AM_InteractTarget")exitWith{};
	if(!isPlayer AM_InteractTarget)exitWith{};
	if(!(AM_InteractTarget getVariable "AM_Cuffed"))exitWith{["Unit is not restrained!",AM_COLGROUP_RED] call AM_Core_Message};

	_Allcars = nearestObjects[player,["Car"],10] select 0;
	if(count _AllNearCars == 0)exitWith{["No nearby vehicles!",AM_COLGROUP_RED] call AM_Core_Message};

	[[_Allcars],"AM_Putincar",_unit,false] call BIS_fnc_MP;
};
AM_Putincar = compileFinal
"
	player moveInCargo (_this select 0);
";
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	