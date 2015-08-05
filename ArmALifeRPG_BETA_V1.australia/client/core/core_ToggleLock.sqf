AM_Core_ToggleLock = {
	_obj = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_lockState = locked _obj;
	if(!(_lockState == 0) and !(_lockState == 1)) then{
		_obj lock 0;
		["Unlocked!",AM_COLGROUP_GREEN] call AM_Core_Message;
	}else{
		_obj lock 2;
		["Locked!",AM_COLGROUP_GREEN] call AM_Core_Message;
	};
};
AM_SaveStats = {
	sleep 300;
	[[], "AM_Save",true] call BIS_fnc_MP;
};