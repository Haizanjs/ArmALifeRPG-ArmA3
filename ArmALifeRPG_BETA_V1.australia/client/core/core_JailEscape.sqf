AM_Core_JailEscape = {
	_player = _this select 0;
	if (!alive player) then {
	[["Someone has died in prison",AM_COLGROUP_RED],"AM_CORE_MESSAGE", civilian] call BIS_fnc_MP;
	} else {
	[["Prison escape in progress!",AM_COLGROUP_RED],"AM_CORE_MESSAGE", civilian] call BIS_fnc_MP;
	};
};
