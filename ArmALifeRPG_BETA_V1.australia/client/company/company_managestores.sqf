/*---------------------------------------------------------------------------
							 	Company ManageStores
								by DEADdem
## DESCRIPTION:
 	Opens menu to show manageable stores to company owners
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_ManageStores = {
	_myCompany = AM_MyCompany;
if(!createDialog "AM_Company_Shops")exitWith{};
	_stores = [_myCompany,"stores"] call AM_Company_info;
	{
		_store = _x;
		_storeName = _x select 1;
		_storePrice = _x select 2;
		lbAdd[1500,format["%1[$%2]",_storeName,_storePrice]];
	}forEach _stores;		

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	