 AM_Shops_OpenShop = {

	_shopSelection = [_this, 0, "noShop",[""]] call BIS_fnc_Param;


	AM_Shop_Current = _shopSelection;
	D_shopName = [_shopSelection, "name"] call AM_Shops_Info;
	D_shopSell = [_shopSelection, "sell"] call AM_Shops_Info;
	_shopBuy = [_shopSelection, "buy"] call AM_Shops_Info;
	D_ShopBuy = _shopBuy;
	D_shopWhitelist = [_shopSelection, "whitelist"] call AM_Shops_Info;
	D_shopCarSpawn = [_shopSelection, "carspawn"] call AM_Shops_Info;
	D_shopGunSpawn = [_shopSelection, "gunspawn"] call AM_Shops_Info;
	_isLoop = true;
	_nil = createDialog "AM_Shop";
	ctrlSetText[1400, "1"];
	ctrlSetText[1401, "1"];
	ctrlSetText [1000,D_shopName];
	for[{_c = 0}, {_c < count D_ShopBuy}, {_c = _c + 1}] do{
		iF(!AM_InShop)exitWith{};
		_item = D_shopBuy select _c;
		AM_item = _item;
		_itemLic = [AM_item, "license"] call AM_Inventory_Info;
		_itemName = [AM_item, "name"] call AM_Inventory_Info;
		_itemPrice = [AM_item, "price"] call AM_Inventory_Info;
		_itemWeight = [AM_item, "weight"] call AM_Inventory_Info;
		lbAdd[1500, format["Buy: %1 [$%2, %3kg]", _itemName, _itemPrice, _itemWeight]];
	};	

	for[{_m = 0}, {_m < count AM_Inventory}, {_m = _m + 1}]do{
		iF(!AM_InShop)exitWith{};
		_sitem = (AM_Inventory select _m) select 0;
		_sitemAmount = (AM_Inventory select _m) select 1;
		_sitemName = [_sitem, "name"] call AM_Inventory_Info;
		_sitemPrice = [_sitem] call AM_Economy_Getvalue;
		if((_sitemAmount > 0)) then {
			lbAdd[1501, format["Sell: %1($%2) [You Have: %3]", _sitemName, _sitemPrice, _sitemAmount]];
		};
	};
};

AM_Shops_OpenCars = {
    _shopSelection = [_this, 0, "noShop",[""]] call BIS_fnc_Param;


    AM_Shop_Current = _shopSelection;
    D_shopName = [_shopSelection, "name"] call AM_Shops_Info;
    D_shopSell = [_shopSelection, "sell"] call AM_Shops_Info;
    _shopBuy = [_shopSelection, "buy"] call AM_Shops_Info;
    D_ShopBuy = _shopBuy;
    D_shopWhitelist = [_shopSelection, "whitelist"] call AM_Shops_Info;
    D_shopCarSpawn = [_shopSelection, "carspawn"] call AM_Shops_Info;
    D_shopGunSpawn = [_shopSelection, "gunspawn"] call AM_Shops_Info;
    _isLoop = true;
    _nil = createDialog "AM_Shop_Cars";
    ctrlSetText[1400, "1"];
    ctrlSetText [1000,D_shopName];
    for[{_c = 0}, {_c < count D_ShopBuy}, {_c = _c + 1}] do{
        iF(!AM_InShop)exitWith{};
        _item = D_shopBuy select _c;
        AM_item = _item;
        _itemLic = [AM_item, "license"] call AM_Inventory_Info;
        _itemName = [AM_item, "name"] call AM_Inventory_Info;
        _itemPrice = [AM_item, "price"] call AM_Inventory_Info;
        _itemWeight = [AM_item, "weight"] call AM_Inventory_Info;
        lbAdd[1500, format["Buy: %1 [$%2, %3kg]", _itemName, _itemPrice, _itemWeight]];
    };  
};

