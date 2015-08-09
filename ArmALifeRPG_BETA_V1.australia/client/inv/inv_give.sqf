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

AM_Inventory_GiveItem = {
	_amount = ctrlText 1400;

	if((lbCurSel 2100) == -1) exitWith {hint "No one was selected!";};
	_unit = lbData [2100,lbCurSel 2100];
	_unit = call compile format["%1",_unit];
	if((lbCurSel 2) == -1) exitWith {hint "You didn't select an item you wanted to give.";};
	_item = lbData [2,(lbCurSel 2)];
	if(isNil "_unit") exitWith {};
	if(_unit == player) exitWith {};
	if(isNull _unit) exitWith {};

	if (_totalCashToSpend == 0) exitWith {hint "You did not use numbers"};
	if(isNil "_unit") exitWith {hint "The selected player is not within range";};

	[[_unit,_amount,_item,player],"AM_network_recieveitem",_unit,false] spawn life_fnc_MP;
	_type = [_item,0] call AM_Inventory_AddItem;
	hint format["You gave %1 - %2 - %3",name _unit,_amount,_type];
};