AM_Shops_Info = {
	_shop = [_this, 0, "",[""]] call BIS_fnc_Param;
	_request = [_this, 1, "", [""]] call BIS_fnc_Param;
	_shopIndex = [_shop] call AM_Shops_GetSlot;
	if(typeName _shopIndex == "BOOL") exitWith {hint "Shop not found!"};
	_arr = AM_ShopsList select _shopIndex;
	_return = false;
	switch(_request) do{
		case "name":
		{
			_return = (_arr select 1) select 0;
		};
		case "sell":
		{
			_return = (_arr select 1) select 2;
		};	
		case "buy":
		{
			_return = (_arr select 1) select 1;
		};
		case "whitelist":
		{
			_return = (_arr select 2);
		};
		case "gunspawn":
		{
			_return = (_arr select 3);
		};
		case "carspawn":
		{
			_return = (_arr select 4);
		};
	};
	_return;
};

