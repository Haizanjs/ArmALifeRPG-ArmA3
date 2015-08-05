AM_core_StrToNum = {
	// USED ONLY FOR MYSQL RETURNS 
	_string = [_this,0,"",[""]] call BIS_fnc_Param;
	_return = parseNumber(_string);
	_return;	
};