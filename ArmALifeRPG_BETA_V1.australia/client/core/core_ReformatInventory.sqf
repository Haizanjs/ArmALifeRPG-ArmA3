/*---------------------------------------------------------------------------
							 	Reformat Inventory
								by DEADdem
## DESCRIPTION:
 	Reformats the Inventory ARray to work with the Stat saver
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_ReformatInventory = {
	
	_toBringBackToNormal = AM_Inventory;

	_normal = call compile format["%1", toString(_toBringBackToNormal)];

	if(typeName _normal == "ARRAY")then{
		AM_Inventory = _normal;
		systemChat "Inventory Reformatted";
		AM_REFORMATCOMPLETE = true;
	}else{
		AM_Inventory = [];
		systemChat "Failure in creating saved array, Applying default";
		AM_REFORMATCOMPLETE = true;
	};

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	