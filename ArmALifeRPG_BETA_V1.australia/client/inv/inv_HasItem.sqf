AM_Inventory_HasItem = {
	_item = _this;
	_return = false;
	_isLoop = true;
	for[{_l = 0}, {_l < count AM_Inventory}, {_l = _l + 1}] do{
		_invItem = AM_Inventory select _l;
		if((_invItem select 0) == _item) then {
			_return = _l;
			_isLoop = false;
		};
	};	
	_return;
};