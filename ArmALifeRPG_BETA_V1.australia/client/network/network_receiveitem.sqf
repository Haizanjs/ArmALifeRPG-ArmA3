AM_network_recieveitem = {
	_unit = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_amount = [_this,1,0,[0]] call BIS_fnc_Param;
	_item =	[_this,2,"",[""]] call BIS_fnc_Param;
	if(_amount == 0)exitWith{};
	[_item,_amount] call AM_Inventory_AddItem;
	hint format["You received %1 from %2",_item , name _unit];
};