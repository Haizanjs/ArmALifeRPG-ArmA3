/*---------------------------------------------------------------------------
							 	Update Shop
								by DEADdem
## DESCRIPTION:
      Updates shop information
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_UpdateShops = {
	_company = _this select 0;
	if(AM_CompanyLock)exitWith{["Action in progress, please wait",AM_COLGROUP_RED] call AM_Core_Message};
	AM_CompanyLock = true;

	_shops = [_company,"stores"] call AM_COmpany_Info;	
	{
		_shopClass = _x select 0;
		_shopName = _x select 1;
		
		_inArrayIndex = [_shopClass,AM_PlayerShops] call AM_Inventory_GNI;
		
		if(typeName _inArrayIndex == "BOOL")exitWith{};

		_pShopMarker = AM_PlayerShops select _inArrayIndex select 2;
		_pShopObj = AM_PlayerShops select _inArrayIndex select 1;

		_pShopMarker setMarkerText format["Player Shop [%1]",_shopName];
		_pShopObj setVariable["AM_PS_Parent",_company,true];
	}forEach _shops;
	AM_CompanyLock=false;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	