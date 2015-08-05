AM_Core_TrunkStore={
	_amount=[_this,1,"1",[""]] call BIS_fnc_Param;
	_sel = [_this,0,1,[1]] call BIS_fnc_Param;
	_amount = parseNumber(_amount);
	_itemInTrunk = [0,0];
	_carTrunk = AM_InteractTarget getVariable "AM_Trunk";
	_item = AM_Inventory select _sel;	
	_class=_item select 0;
	_have = _item select 1;

	{
		if((_x select 0) == _class)then{
			_itemInTrunk = [1,_foreachindex];
		};
	}forEach _carTrunk;

	if(_amount > _have)exitWith{systemChat "You do not have enough of that item!"};
	if(_class == "cash")exitWith{systemChat "You cannot store cash in your trunk"};
	_toPut = [_class,_amount];

	if((_itemInTrunk select 0) == 1)then{
		_carTrunk set [(_itemInTrunk select 1),_toPut];
		[_class,-_amount] call AM_Inventory_AddItem;
	}else{
		_carTrunk set[count _carTrunk, _toPut];
		[_class,-_amount] call AM_Inventory_AddItem;
	};
	AM_InteractTarget setVariable ["AM_Trunk",_carTrunk,true];
	closeDialog 0;
	[] call AM_Core_AccessTrunk;
};