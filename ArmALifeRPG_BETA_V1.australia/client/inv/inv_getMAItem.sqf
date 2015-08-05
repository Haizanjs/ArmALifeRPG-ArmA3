AM_Inventory_GetMAItem = {
	_class = _this select 0;
	_return = missionNamespace getVariable format["AM_MA_%1",_class];
	hint format ["%1",_return];
	_return;
};