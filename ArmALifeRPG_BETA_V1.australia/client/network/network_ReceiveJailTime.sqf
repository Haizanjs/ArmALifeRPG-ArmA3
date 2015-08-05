AM_network_receivejailtime = {
		_jailtime = _this select 0;
		_officer = _this select 1;
		_action = [_this,2,"remove",[""]] call BIS_fnc_Param;
		if(player distance AM_Jail > 50)exitWith{};
		if(_action == "add")then{
			AM_JailTime = AM_JailTime + _jailtime;
			[] spawn AM_Core_Jail;
		}else{
			AM_JailTime = AM_JailTime - _jailtime;
		};		
		[format["Your current Jail Time Set to %1", (AM_JailTime / 3600) call AM_Core_NumToTime], AM_COLGROUP_GREEN] call AM_Core_message;
};



