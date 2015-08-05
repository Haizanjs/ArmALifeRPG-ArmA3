AM_Inventory_GetSlot = {
	_class = [_this, 0, "",[""]] call BIS_fnc_param;
	_return = false;
	_isLoop = true;
	for[{_l = 0}, {_l < count AM_Items}, {_l = _l + 1}] do{
		_item = AM_items select _l;
		if((_item select 0) == _class) then{
			_return = _l;
		};
	};
	_return;
};
