AM_CorE_RegisterUser = {
	_username = [_this,0,"",[""]] call BIS_fnc_Param;	
	_password = [_this,1,"",[""]] call BIS_fnc_Param;
	if(isNil "_username" || isNil "_password")exitWith{};
	[[player,_username,_password], "AM_Server_Registration", false] call BIS_fnc_MP;
};