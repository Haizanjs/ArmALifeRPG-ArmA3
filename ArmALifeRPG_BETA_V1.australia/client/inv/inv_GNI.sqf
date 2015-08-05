AM_Inventory_GNI = {
	_classname = _this select 0;
	_array = [_this, 1, [], [[]]] call BIS_fnc_param;
	_return = false;
	_isLoop = true;
	for[{_l = 0}, {_l < count _array && _isLoop}, {_l = _l + 1}] do{
		_item = _array select _l;
		if((_item select 0) == _classname) then{
			_return = _l;
			_isLoop = false;
		};
	};	
	_return;
};