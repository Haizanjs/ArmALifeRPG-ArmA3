AM_Inventory_Open = {
	_nil = createDialog "AM_Inventory";
	ctrlSetText [1400, "1"];
	for[{_m=0},{_m<count AM_Inventory}, {_m=_m+1}]do{
		_InvItem = AM_Inventory select _m;
		_item = _invItem select 0;
		_ItemAmount = _InvItem select 1;
		if (_ItemAmount == 0) then {[_item, -_ItemAmount] call AM_Inventory_AddItem;};
		
		_ItemName = [_Item, "name"] call AM_Inventory_Info;
		systemchat str _InvItem;
		lbAdd[2, format["%1 [x%2]", _ItemName, _itemAmount]];
	};

	{
		if(_x in playableUnits)then{	lbAdd[2100,format["%1",name _x]];};

	}forEach (nearestObjects [player,["Man"],20]);
};