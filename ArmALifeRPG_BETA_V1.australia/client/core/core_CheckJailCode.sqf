/*---------------------------------------------------------------------------
							Check Jail Code
								by DEADdem
## DESCRIPTION:
 	Checks Jail code made by server
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_CheckJailcode = {closeDialog 0;
	_code = [_this,0,"",[""]] call BIS_fnc_Param;	
	if(isNil "AM_SERVERVAR_JailCode")exitWith{};
	if(_code == str(AM_SERVERVAR_JailCode))then{
		am_jail animate[format["Cell_%1",AM_CUR_SelectedCell], 1];
	}else{
		[AM_CUR_SelectedCell] call AM_Core_JailCell;
		["Incorrect Jail Code!",AM_COLGROUP_RED] call AM_Core_Message;
	};
};