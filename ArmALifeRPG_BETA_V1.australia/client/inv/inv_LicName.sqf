AM_Inventory_LicName = {
	_licName = [_this,0,"",[""]] call BIS_fnc_param;
	for[{_m=0},{_m<count AM_Licenses},{_m=_m+1}]do{
		_item = AM_Licenses select _m;
		if((_item select 0) == _licName) then{
			slot = _m;
		};
	};
	l_name = (AM_Licenses select slot) select 1;
	_return = l_name;
	_return; // For readings sakes
};