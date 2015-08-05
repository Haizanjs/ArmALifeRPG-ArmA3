AM_Core_Skills = {
	waituntil {!(IsNull (findDisplay 46))};

	_SkillStamina = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 17) then {AM_Stamina = AM_Stamina + 0.2}"];

	_SkillVehicles = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 17 and !(vehicle player == player)) then {AM_VehicleS = AM_VehicleS + 0.2}"];

	_SkillShooting = {_x addEventHandler ["fired", {AM_Shooting = AM_Shooting + 1}]}foreach allunits;
};
/*---------------------------------------------------------------------------
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited
---------------------------------------------------------------------------*/