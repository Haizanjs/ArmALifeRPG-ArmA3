AM_Shops_GetSlot={
	_shop = [_this,0,"",[""]] call BIS_fnc_Param;
	_return = false;
	for[{_m=0},{_m<count AM_ShopsList}, {_m=_m+1}]do{
		_item = AM_ShopsList select _m;
		if((_item select 0) == _shop)then{
			_return = _m;
		};
	};
	_return
};
