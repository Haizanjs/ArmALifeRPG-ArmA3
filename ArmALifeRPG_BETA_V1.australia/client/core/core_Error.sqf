/*---------------------------------------------------------------------------
							 		Error
								by DEADdem
## DESCRIPTION:
 	Displays error text formatted correctly
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Error = {
	_lnNumber = _this select 0;
	_text = _this select 1;
	_fl = _this select 2;

	systemChat format["[ERROR] %1.sqf Line %2: %3",_fl, _lnNumber, _text];
	diag_log format["[ERROR] %1.sqf Line %2: %3 [Logged At Uptime: %4]",_fl, _lnNumber, _text, [round(time) / 3600] call AM_Core_NumToTime];

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	