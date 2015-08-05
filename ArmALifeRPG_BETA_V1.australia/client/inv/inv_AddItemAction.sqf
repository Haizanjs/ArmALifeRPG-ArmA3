/*---------------------------------------------------------------------------
						  Inventory Add Item Action
								by DEADdem
## DESCRIPTION:
 	Returns a Boolean based on whether or not an item was added or taken away from
 	inventory
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/

AM_Inventory_AddItemAction = {
	_itemAmount 	= _this select 0;
	_amountAdded	= _this select 1;

	if(_amountAdded > _itemAmount)then{
		true;
	}else{
		false;
	};
};

/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	