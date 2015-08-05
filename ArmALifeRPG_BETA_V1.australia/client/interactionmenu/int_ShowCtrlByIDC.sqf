/*---------------------------------------------------------------------------
							 	Company ShopInfo
								by DEADdem
## DESCRIPTION:
 	Grabs information on a company owned shop
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_INT_ToggleCtrlByIDC = {
	_idc= _this select 0;
	_onOff = _this select 1;

	_slot = [_idc,AM_Int_Icons] call AM_Inventory_GNI;
	_item = AM_Int_Icons select _slot;
	
	if(_onOff == 1)then{
		ctrlShow[(_item select 0),true];
		ctrlShow[(_item select 1),true];
	}else{
		ctrlShow[(_item select 0),false];
		ctrlShow[(_item select 1),false];
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	