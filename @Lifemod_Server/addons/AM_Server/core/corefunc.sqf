AM_Server_StrToArr = {
	_str = [_this,0,"[[]]",[""]] call BIS_fnc_Param;
	_return = call compile format["%1",_str];
	_return;
};
AM_Server_ArrToStr = {
	_arr = [_this,0,[],[[]]] call BIS_fnc_Param;
	_return = call compile format["'%1'",_arr];
	_return;
};
AM_Server_RealEscape = {
	_string = [_this,0,"",[""]] call BIS_fnc_param;
	_filter = "'/\`:|;,{}-""<>";
	_string = toArray _string;
	_filter = toArray _filter;
	diag_log format["Real Escape: Filtering(%1)",_string];
	{
		if(_x in _filter) then {
			_string set[_forEachIndex,-1];
		};
	} foreach _string;
	_string = _string - [-1];
	diag_log format["Real Escape: Escaped(%1)",_string];
	toString _string;
};

AM_Server_LogSQL = {
	_toLog = [_this,0,"",[""]] call BIS_fnc_Param;
	diag_log format["-MySQL Logging- %1 -/MySQL Logging-",_toLog];
};

AM_Server_BeginSession={
	_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;

	_packet = [AM_SERVERVAR_Cars, AM_SERVERVAR_JailCode];
	[_packet,"AM_network_seteupsession",owner _unit] call BIS_fnc_MP;
};