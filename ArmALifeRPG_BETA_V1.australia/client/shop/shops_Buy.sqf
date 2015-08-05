AM_Shops_Buy = {
	t_buyIndex = [_this,0,10123,[1]] call BIS_fnc_Param;
	_buyAmount = [_this, 1, 0, [""]] call BIS_fnc_Param;
	_buyAmount = parseNumber(_buyAmount);
	if(t_buyIndex == -1)exitWith{["You havent selected an item!",AM_COLGROUP_RED] call AM_Core_Message;};
	if(typename _buyAmount != "SCALAR") exitWith {hint "Scalar needed!"};

	AM_BuyingItem = true;
	_item = (D_ShopBuy select t_buyIndex);
	debug_item = _item;
	_itemname = [debug_item, "name"] call AM_Inventory_Info;	
	_itemPrice = [debug_item, "price"] call AM_Inventory_Info;
	_itemtype = [debug_item, "type"] call AM_Inventory_Info;
	_license = [debug_item, "license"] call AM_Inventory_Info;
	_model = [debug_item, "model"] call AM_Inventory_Info;

	_shopCarSpawn = [AM_Shop_Current, "carspawn"] call AM_Shops_Info;
	_shopGunSpawn = [AM_Shop_Current, "gunspawn"] call AM_Shops_Info;
	_back = unitBackpack player;

	_totalCashToSpend = _itemPrice * _buyAmount;
	_cashIhave = ["cash"] call AM_Inventory_GetAmount;
	_message = "";
	if(_cashIhave < _totalCashToSpend) exitWith {["You dont have enough cash for that!",AM_COLGROUP_RED] call AM_Core_Message;AM_BuyingItem=false;};
	if(!(_license in AM_MyLicenses))exitWith {["You need a required license",AM_COLGROUP_RED] call AM_Core_Message;AM_BuyingItem=false;};
	if (_totalCashToSpend == 0) exitWith {hint "You did not use numbers"};
	switch(_itemType) do{
		case "ITEM":
		{
			["cash",-_totalCashToSpend,true] call AM_Inventory_AddItem;
			[debug_item, _buyAmount,true] call AM_Inventory_AddItem;
			[format["You bought %3 %1 for $%2", _itemName, _totalCashToSpend,_buyAmount],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "CAR":
		{	
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			[_model,_shopCarSpawn] call AM_Core_CreateVEhicle;
			[format["You bought a %1 for $%2", _itemName, _totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			[AM_CUR_SpawnCar] call AM_core_AssignPlates;
			AM_BuyingItem = false;
		};
		case "WEAP":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			_shopGunSpawn addWeaponCargoGlobal [_model,_buyAmount];
			[format["You bought a %1 for $%2", _itemName, _totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "ATTACH":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			_shopGunSpawn addItemCargoGlobal [_model,_buyAmount];
			[format["You bought a %1 for $%2", _itemName, _totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "MAG":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			_shopGunSpawn addMagazineCargogLOBAL [_model,_buyAmount];
			[format["You bought a %1 for $%2", _itemName, _totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "UNIF":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			player addUniform _model;
			[format["You bought a %1 for %2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "BKPK":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			player addBackpack _model;
			[format["You bought a %1 for %2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "GOGLE":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			player addGoggles _model;
			[format["You bought a %1 for %2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "HDGR":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			player addHeadgear _model;
			[format["You bought a %1 for %2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "VEST":
		{
			["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
			player addVest _model;
			[format["You bought a %1 for %2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_BuyingItem = false;
		};
		case "I_ITEM":
        {
            ["cash", -_totalCashToSpend,true] call AM_Inventory_AddItem;
            _back addItemCargoGlobal [debug_item,_buyAmount];
            [format["You bought a %1 for $%2",_itemName,_totalCashToSpend],AM_COLGROUP_GREEN] call AM_Core_Message;
            AM_BuyingItem = false;
        };
	};
	closeDialog 0;
	[] call AM_Shops_RefreshShop;
};