AM_Inventory_UseItem = {
	_index = [_this,0,0,[0]] call BIS_fnc_param;
	_amount = [_this,1,"",[""]] call BIS_fnc_param;
	_wholeThing = AM_Inventory select _index;
	_classname = _wholeThing select 0;
	systemChat _classname;
	_codeToExecute = format["['%2', %3] execVM '%1'",[_classname, "script"] call AM_Inventory_Info, _classname, _amount];
	call compile _codeToExecute;
	closeDialog 0;
	[] call AM_Inventory_Open;
};