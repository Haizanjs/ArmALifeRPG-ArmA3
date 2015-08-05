/*---------------------------------------------------------------------------
							 Car Information
								by DEADdem
## DESCRIPTION:
 	Displays information about vehicle
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_CarInfo = {
	if(isNil "AM_InteractTarget")exitWith{};
	if(!(AM_InteractTarget in AM_SERVERVAR_Cars))exitWith{};

	_plate = toUpper(AM_InteractTarget getVariable "AM_PlateString");	
	_type = getText(configFile >> "cfgVehicles" >> typeOf(AM_InteractTarget) >> "displayName");

	hint parseText format["
		<t size='1.5'>Vehicle Information</t><br/><br/>
		<t size='1.25'>Type</t>
		%1
		<br/><br/>
		<t size='1.25'>License Plate</t>
		%2

	",_type,_plate];
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	