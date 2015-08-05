AM_Inventory_GetAmount = {
	_itemClassName = [_this,0,"",[""]] call BIS_fnc_param;
	_return = 0;
	for[{_l = 0}, {_l < count AM_Inventory}, {_l = _l + 1}] do{
		_invItem = AM_Inventory select _l;
		if((_invItem select 0) == _itemClassName) then {
			_return = (_invItem select 1);
		};
	};		
	_return;
};
