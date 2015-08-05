/*---------------------------------------------------------------------------
							 	Drag Client
								by DEADdem
## DESCRIPTION:
 	Attaches interaction object to player
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_DragClient = {
	if(isNil "AM_InteractTarget")exitWith{};
	if(AM_InteractTarget isKindOF "CAR" || AM_InteractTarget isKindOf "SHIP" || AM_InteractTarget isKindOf "Air")exitWith{systemChat "Unit is not a man!"};
	_players = nearestObjects[player,["Man"],3] select 0;
	if(!(_players getVariable "AM_Cuffed"))exitWith{["Unit is not restrained",AM_COLGROUP_RED] call AM_Core_Message};
	if(!isNil "AM_AttachedUnit")exitWith{["You Already have someone attached!", AM_COLGROUP_RED] call AM_Core_Message};
	if (!isPlayer AM_InteractTarget) exitWith {systemChat "Unit is AI!"};
	["Release Player: CTRL+H", AM_COLGROUP_RED] call AM_Core_Message;
	AM_AttachedUnit = AM_InteractTarget;
	AM_InteractTarget attachTo[player,[0,1,0]];
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	