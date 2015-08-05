/*---------------------------------------------------------------------------
							 Access Action
								by Author
## DESCRIPTION:
      Proceses the action selected in the menu
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_PlayerShops_AccessAction = {
	private ["_lbIndex", "_shopStock"];
	_lbIndex = _this select 0;
	if(_lbIndex < 5 || isNil "_lbIndex")exitWith{["Please select an action", AM_COLGROUP_RED] call AM_Core_Message};
	if(_lbIndex == 5)then{
		_shopStock = [AM_CUR_playershop select 0,"stock",(AM_CUR_playershop select 1) getVariable "AM_PS_parent"] call AM_Company_ShopInfo;
		if(count _shopStock == 0)exitWith{closeDialog 0; ["This shop is out of stock!", AM_COLGROUP_RED] call AM_Core_Message};
		if(!createDialog "AM_Shop")exitWith{};

		{
			lbAdd[1500,format["Buy: %1[$%2]",[_x select 0,"name"] call AM_Inventory_Info, [_x select 0,"price"] call AM_Inventory_Info]];
		}forEach _shopStock;
		buttonSetAction[1601, "[lbCurSel 1500,ctrlText 1400] call AM_PlayerShops_Buy"];
		buttonSetAction[1600, ""];
	}else{

	};

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	