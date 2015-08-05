/*---------------------------------------------------------------------------	
						No Use for Items
						   by DEADdem
## DESCRIPTION:
 	Used when an item has no use which are binded
## UPDATES:
  001:
	Creation
---------------------------------------------------------------------------*/	
_class = _this select 0;
systemChat format["%1 can only be used with a key-binding", [_class,"name"] call AM_Inventory_Info];