/*---------------------------------------------------------------------------	
						Open Factory Script
						    by DEADdem
## DESCRIPTION:
 	Opens the factory dialog
## UPDATES:
  001:
	Creation
---------------------------------------------------------------------------*/	
AM_Core_OpenFactory = {
	if(!createDialog "AM_Factory")exitWith{};
	
	{
		_invItem = _x;
		_class = _invItem select 0;
		_amount = _invItem select 1;
		_name = [_class,"name"] call AM_Inventory_Info;
		lbAdd[1501,format["%1 (x%2)",_name,_amount]];
	}forEach AM_Inventory;	

	{
		_factitem = _x;
		_class = _factitem select 0;
		_amount = _factitem select 1;
		_progress = _factitem select 2;

		_name = [_class,"name"] call AM_Inventory_Info;
		lbAdd[1500, format["[%2%4] %1 (x%3)",_name,_progress,_amount,"%"]];
	}forEach AM_MyFactory;	

	if(AM_FactoryActive)then{
		ctrlSetText[1602,"Hold Factory"];
	}else{
		ctrlSetText[1602,"Process Factory"];
	};
};