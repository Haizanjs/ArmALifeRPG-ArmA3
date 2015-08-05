/*---------------------------------------------------------------------------	
						No Use for Items
						   by DEADdem
## DESCRIPTION:
 	Used when an item has no use
## UPDATES:
  001:
	Creation
---------------------------------------------------------------------------*/	
_class = _this select 0;
systemChat format["%1 has no use!", [_class,"name"] call AM_Inventory_Info];