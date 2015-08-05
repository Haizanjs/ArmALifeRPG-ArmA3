/*---------------------------------------------------------------------------
							 	Company ShopInfo
								by DEADdem
## DESCRIPTION:
 	Grabs information on a company owned shop
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_ShopInfo = {
	_shop = _this select 0;
	_request = _this select 1;
	_company = _this select 2;
	
	_cShops = [_company,"stores"] call AM_Company_info;
	_shopSlot = [_shop,_cShops] call AM_Inventory_GNI;

	_shopSlot = _cShops select _shopSlot;
	_return = "";

	switch(_request)do{
		case "name":
		{
			_return = _shopSlot select 1;
		};
		case "price":
		{
			_return = _shopSlot select 2;
		};
		case "stock":
		{
			_return = _shopSlot select 3;
		};
	};
	_return;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	