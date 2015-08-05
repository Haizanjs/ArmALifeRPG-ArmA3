AM_Shop_Sell = {
	_itemIndex = _this select 0;
	systemChat str _this;
	_sellAmount = [_this,1,"1",[""]] call BIS_fnc_Param;	
	_sellAmount = parseNumber(_sellAmount);
	_itemSelection = (AM_Inventory select _itemIndex) select 0;
	s_item = _itemSelection;
	if(!(s_item in D_ShopSell))exitWith{["This vendor doesnt accept that item!",AM_COLGROUP_RED] call AM_Core_message};
	_nigger = _sellAmount;
	_itemname = [s_item, "name"] call AM_Inventory_Info;
	_itemtype = [s_item, "type"] call AM_Inventory_Info;
	_itemWorth= [s_item, "price"] call AM_Inventory_Info;
	_sellWorth = [s_item] call AM_Economy_Getvalue;
	_sellWorth = _sellWorth * _sellAmount;
	_ihavehowmuch = [s_item] call AM_Inventory_GetAmount;
	if(_nigger > _ihavehowmuch)exitWith{hint "You do not have enough of that item to sell!";};
	switch(_itemType)do{
		case "ITEM":
		{
			
			["cash",_sellWorth] call AM_Inventory_AddItem;
			[s_item,-_sellAmount] call AM_Inventory_AddItem;
			[format["You sold %1 %2s for $%3", _sellAmount, _itemName, _sellWorth],AM_COLGROUP_GREEN] call AM_Core_Message;
		};	
		case "CAR":
		{


		};
		case "WEAP":
		{
			["cash",_sellWorth] call AM_Inventory_AddItem;
			player removeWeapon _model;
		};
	};
	closeDialog 0;
	[] call AM_Shops_RefreshShop
};