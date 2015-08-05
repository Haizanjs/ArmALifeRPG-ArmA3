/*---------------------------------------------------------------------------	
					Virtual Inventory System
						   by DEADdem
## DESCRIPTION:
 	Handles all aspects of v-inv manipulation.
## UPDATES:
  001:
  	Creation				
  002:
  	Moved information functions to 1 function
---------------------------------------------------------------------------*/	
AM_Inventory_CreateDialog = {
	_dialog = [_this,0,"",[""]] call BIS_fnc_param;
	_dlg = createDialog _dialog;	
};
cunt = {["cash",100] call AM_Inventory_AddItem;["testitem1",100] call AM_Inventory_AddItem};
AM_Inventory_DONE = 1;