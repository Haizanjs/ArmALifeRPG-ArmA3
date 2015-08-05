AM_Core_GetNear = {
	_classname = [_this, 0, [], [[]], 1] call BIS_fnc_Param;
	_range = [_this, 1, 5, [5]] call BIS_fnc_Param;
	_return = nearestObjects [player, _classname, _range];
	if(count _return == 0) then{
		_return = false;
	};
	_return;
};