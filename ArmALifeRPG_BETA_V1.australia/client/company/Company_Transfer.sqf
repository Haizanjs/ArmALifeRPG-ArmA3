/*---------------------------------------------------------------------------
							 	Company Transfer
								by DEADdem
## DESCRIPTION:
 	Handles the transferring of stock between warehouses and shops
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_Transfer = {
	_itemINDEX = _this select 0;
	_amount = parseNumber(_this select 1);
	_mode = _this select 2;

	if(AM_CompanyLock)exitWith{["Action in progress, please wait",AM_COLGROUP_RED] call AM_Core_Message};
	AM_CompanyLock = true; 
	if(isNil "_mode")then{_mode = ""};
	if(_mode == "TO_WAREHOUSE")then{
		_companyInventory = [AM_MyCompany, "warehouse"] call AM_Company_Info;		
		_stores = ([AM_MyCompany, "stores"] call AM_Company_Info);
		_shopInventory = [AM_CUR_COmpanyShop,_stores] call AM_Inventory_GNI;
		_shopInventory = (_stores select AM_CUR_COmpanyShop_i) select 3;

		_transferItem = _shopInventory select _itemINDEX;
		_transferItem_Class = _transferItem select 0;
		_deleteWhenDone = false;
		if(_amount >= (_transferItem select 1))then{
			_amount = _transferItem select 1;
			_deleteWhenDone = true;

			["You do not have that much of this item. Transferring all of it.",AM_COLGROUP_RED] call AM_Core_Message;

		};
		_hasItemInWarehouse = [_transferItem_Class,_companyInventory] call AM_Inventory_GNI;

		if(typeName _hasItemInWarehouse == "BOOL")then{
			_companySlot = [AM_MyCompany,"slot"] call AM_COmpany_info;
			_companySlot = AM_ActiveCompanies select _companySlot;
			_companyInventory = _companySlot select 6;
			_companyInventory set[count(_companyInventory),[_transferItem_Class,_amount]];
		}else{
			_companySlot = [AM_MyCompany,"slot"] call AM_COmpany_info;
			_companySlot = AM_ActiveCompanies select _companySlot;
			_companyInventory = _companySlot select 6;
			_currentItemSlot = _companyInventory select _hasItemInWarehouse;
			_currentItemAmount = _currentItemSlot select 1;
			_newitemAmount = _currentItemAmount + _amount;
			_currentItemSlot set[1,_newitemAmount];
		};
		AM_CompanyLock = false; 
		if(_deleteWhenDone)then{
			_shopInventory deleteAt _itemINDEX;
		}else{
			_transferItem set[1,((_transferItem select 1) - _amount)];
		};
	}else{


		_companySlot = [AM_MyCompany,"slot"] call AM_Company_info;
		_companyShops = [AM_MyCompany, "stores"] call AM_Company_Info;
		_companyWarehouse = [AM_MyCompany,"warehouse"] call AM_Company_Info;

		_shopStock = [AM_CUR_COmpanyShop,"stock",AM_MyCompany] call AM_Company_ShopInfo;
		
		_itemInWarehouse = _companyWarehouse select _itemINDEX;
		_itemC = _itemInWarehouse select 0;
		_itemA = _itemInWarehouse select 1;

		_itemIsInShop = [_itemC, _shopStock] call AM_Inventory_GNI;
		_deleteWhenDone = false;
		if(_amount >= _itemA)then{
			_amount = _itemA;
			_deleteWhenDone = true;
			["You do not have that much of this item. Transferring all of it.",AM_COLGROUP_RED] call AM_Core_Message;
		};
		if(typeName _itemIsInShop == "BOOL")then{
			_shopStock set[count(_shopStock), [_itemC,_amount]];
		}else{
			_itemToEdit = _shopStock select _itemIsInShop;
			
			_itemAC = _itemToEdit select 1;
			_itemAN = _itemAC + _amount;

			_itemToEdit set[1,_itemAN];
		};

		if(_deleteWhenDone)then{
			_companyWarehouse deleteAt _itemINDEX;
		}else{
			_itemInWarehouse set[1,((_itemInWarehouse select 1) - _amount)];
		};
		AM_CompanyLock = false;
	};
	closeDialog 0;
	["Transfer Complete",AM_COLGROUP_GREEN] call AM_Core_Message;
	[AM_CUR_COmpanyShop_i] call AM_Company_TransferMenu;
	[] call AM_Company_MakePublic;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	