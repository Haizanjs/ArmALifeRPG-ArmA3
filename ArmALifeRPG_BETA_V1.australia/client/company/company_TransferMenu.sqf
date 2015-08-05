/*---------------------------------------------------------------------------
							 	Company ManageStores
								by DEADdem
## DESCRIPTION:
 	Opens menu to show manageable stores to company owners
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_TransferMenu = {
	_shop = _this select 0;
	AM_CUR_CompanyShop_i = _shop; 
	if(isNil "_shop")exitWith{["Please select a shop",AM_COLGROUP_RED] call AM_Core_Message};
	_cShops = [AM_MyCompany,"stores"] call AM_Company_info;
	_cWarehouse = [AM_MyCompany,"warehouse"] call AM_Company_info;

	_shopSlot = _cShops select _shop;
	_shopClass = _shopSlot select 0;
	AM_CUR_CompanyShop = _shopClass;
	_shopStocks = _shopSlot select 3;
	if(!createDialog "AM_Company_Transfer")exitWith{};
	{
		lbAdd[1500,format["%1[x%2]",[(_x select 0),"name"] call AM_Inventory_Info,(_x select 1)]];
	}forEach _shopStocks;
	{
		lbAdd[1501,format["%1[x%2]",[(_x select 0),"name"] call AM_Inventory_Info,(_x select 1)]];
	}forEach _cWarehouse;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	