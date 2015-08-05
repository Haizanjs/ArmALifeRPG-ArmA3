AM_Inventory_AddItem = {
	item = [_this, 0, "", [""]] call BIS_fnc_param;
	amount = [_this, 1, 1, [1]] call BIS_fnc_param;
	_note = _this select 2;
	if(!isNil "_note")then{
		_note = true;
	}else{
		_note = false;
	};
	_isExist = item call AM_Inventory_HasItem;
	

	if(typeName _isExist == "BOOL") then{
		AM_Inventory set [(count AM_Inventory), [item, amount]];
		if(_note)then{
			[1,2,item,amount] call AM_Inventory_NoteAdd;
		};
	}else{
		_slot = AM_Inventory select _isExist;
		_itemAmount = _slot select 1;
		_toAdd = _itemAmount + amount;
		if(_note)then{
			[_itemAmount,_toAdd,item,amount] call AM_Inventory_NoteAdd;
		};
		if(_toAdd <= 0)then{
			AM_Inventory = AM_Inventory - [(AM_Inventory select _isExist)];
		}else{
			AM_Inventory set [_isExist, [item, _toAdd]];
		};
	};
};

/*---------------------------------------------------------------------------
		NOTE: Had to globalize a variable, If it has drastic effects,
		Will remove noting function completely
---------------------------------------------------------------------------*/