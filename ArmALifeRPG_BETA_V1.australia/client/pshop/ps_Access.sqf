/*---------------------------------------------------------------------------
							Player Shop Access
								by Author
## DESCRIPTION:
      Brings up menu which accesses the player owned shop.
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_PlayerShops_Access = {
	private ["_shopClass", "_object", "_shopName", "_shopStock", "_shopCompany", "_shopPrice"];

	_shopClass = _this select 0;
	_object = _this select 1;
	AM_CUR_PlayerShop = [_shopClass,_object];

	_shopName = [_shopClass,"name", (_object getVariable "AM_PS_Parent")] call AM_Company_ShopInfo;
	_shopStock = [_shopClass, "stock",(_object getVariable "AM_PS_Parent")] call AM_Company_ShopInfo;
	_shopCompany = [(_object getVariable "AM_PS_Parent"),"name"] call AM_Company_info;		
	_shopPrice = [_shopClass, "price",(_object getVariable "AM_PS_Parent")] call AM_Company_ShopInfo;
	_shopStock = count(_shopStock);
	if(!createDialog "AM_PlayerShop_Access")exitWith{};
	lbAdd[1500,"===============INFORMATION==========="];
	lbAdd[1500,format["Shop Name: %1",_shopName]];
	lbAdd[1500,format["Parent Company: %1",_shopCompany]];
	lbAdd[1500,format["Stock: %1", _shopStock]];
	lbAdd[1500,"================ACTIONS=============="];
	lbAdd[1500,format["Access Shop"]];
	lbadd[1500,format["Purchase Shop(%1)",_shopPrice]];
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	