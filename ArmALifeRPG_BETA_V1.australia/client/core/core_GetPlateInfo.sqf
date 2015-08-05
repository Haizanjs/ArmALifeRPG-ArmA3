AM_Core_GetPlateInfo = {
	// 1 - Array - 2 - String
	_info = [_this,0,1,[1]] call BIS_fnc_Param;	
	_object = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	if(isNull _object)exitWith{};

	switch(_info)do{
		case 1:
		{
			_return = _object getVariable "AM_Platearray";
		};
		case 2:
		{
			_return = _object getVariable "AM_Platestring";
		};
	};
	_return;
};