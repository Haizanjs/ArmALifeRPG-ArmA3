/*---------------------------------------------------------------------------
							   ANimate
								by DEADdem
## DESCRIPTION:
 	Switches the move of the given unit on a global scope
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Animate = {
	_unit = _this select 0;
	_anim = _this select 1;

	_unit switchMove _anim;
	_unit playMove _anim;
};	
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	