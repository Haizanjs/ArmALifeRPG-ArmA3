/*---------------------------------------------------------------------------
							 Playershops Buy
								by Author
## DESCRIPTION:
      Proceses the purchasing of an item from player controlled shops
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_PlayerShops_Buy = {
	

	_curSel = _this select 0;
	_num = _this select 1;
	_numparsed = parseNumber(_num);
	if(AM_BuyingItem)exitWith{["Purchasing in progress, please wait", AM_COLGROUP_RED] call AM_Core_message};
	_shopStock = [AM_CUR_playershop select 0,"stock",(AM_CUR_playershop select 1) getVariable "AM_PS_parent"] call AM_Company_ShopInfo;
	
	_psItem = _shopStock select _curSel;
	systemchat str _psItem;

	_psItemClass = _psItem select 0;
	_psItemAmount = _psItem select 1;
	systemChat format["PSIC: %1 | PSIA: %2", _psItemClass,_psItemAmount];

	_psItemPrice = [_psItemClass,"price"] call AM_Inventory_Info;
	_psItemType = [_psItemClass,"type"] call AM_Inventory_Info;
	_psItemModel = [_psItemClass, "model"] call AM_Inventory_Info;
	_psItemName = [_psItemClass, "name"] call AM_Inventory_Info;

	_myCashInHand = ["cash"] call AM_Inventory_GetAmount;
	
	if(_psItemPrice > _myCashInHand)exitWith{["You cannot afford this",AM_COLGROUP_RED] call AM_Core_Message};
	if(_numparsed > _psItemAmount)then{_numparsed = _psItemAmount; ["Not enough stock to buy that much, buying all", AM_COLGROUP_WHITE] call AM_Core_Message};
	AM_BuyingItem = true;
	systemChat str _psItem;
	switch(_psItemType)do{
		case "WEAP":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addWeapon _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;
			systemChat str _psItem;
			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "ITEM":
		{
			["cash",-_psItemPrice*_numparsed] call AM_Inventory_AddItem;
			[_psItemClass,_numparsed] call AM_Inventory_AddItem;
			[format["You bought %3 %1 for $%2", _psItemName, _psItemPrice,_numparsed],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "MAG":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addMagazine _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "ATTACH":
		{	
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addItem _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};	
		case "BKPK":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addBackpack _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "HDGR":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addHeadgear _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "UNIF":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addUniform _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "GOGLE":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addGoggles _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
		case "VEST":
		{
			["cash",-_psItemPrice] call AM_Inventory_AddItem;
			player addVest _psItemModel;
			[format["You bought a %1 for $%2", _psItemName, _psItemPrice],AM_COLGROUP_GREEN] call AM_Inventory_Info;

			_psItem set[1, (_psItemAmount-_numParsed)];
		};
	};
	AM_BuyingItem = false;
	[5] call AM_PlayerShops_AccessAction;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	