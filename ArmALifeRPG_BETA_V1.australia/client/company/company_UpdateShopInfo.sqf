/*---------------------------------------------------------------------------
							 Company update Shop info
								by DEADdem
## DESCRIPTION:
 	Updates the Name and/or Store Price
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_UpdateShopInfo = {
	_lb = _this select 0;
	_name = _this select 1;
	_price = parseNumber(_this select 2);
	systemChat str _this;
	_shops = [AM_MyCompany,"stores"] call AM_Company_Info;
	_shopArr = _shops select _lb;

	_shopArr set[1,_name];
	_shopArr set[2,_price];
	closeDialog 0;
	["You have updated the shop information",AM_COLGROUP_GREEN] call AM_Core_Message;
	[] call AM_Company_ManageStores;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	