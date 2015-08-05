AM_Core_TrunkTake = {
	_amount = [_this,1,"1",[""]] call BIS_fnc_Param;
	_selection = [_this,0,1,[1]] call BIS_fnc_Param;
	_amount = parseNumber(_amount);
	_trunk = AM_InteractTarget getVariable "AM_Trunk";
	_trunkSelection=_trunk select _selection;
	_class = _trunkSelection select 0;
	_amountIn = _trunkSelection select 1;

	if(_amount > _amountIn)exitWith{systemChat "There is not enough of that item in the trunk!"};
	_amountIn = _amountIn - _amount;
	_trunkSelection set [1,_amountIn];

	[_class,_amount] call AM_Inventory_AddItem;
	
	AM_InteractTarget setVariable ["AM_Trunk",_trunk,true];
	closeDialog 0;
	[] call AM_Core_AccessTrunk;
};