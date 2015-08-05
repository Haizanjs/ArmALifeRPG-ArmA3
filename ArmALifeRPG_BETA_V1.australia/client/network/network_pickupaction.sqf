AM_network_pickupaction = {
	_obj = [_this,0,noSpawn,[objNull]] call BIS_fnc_Param;
	if(_obj == noSpawn)exitWith{systemChat "exited"};
	if(!((_obj getVariable "isANItem") == 1)) exitWith{systemChat "Exited"};
	_obj_itemAmount = (_obj getVariable "droparray") select 1;
	_obj_items 		= (_obj getVariable "droparray") select 0;
	_obj_items_name = [_obj_items, "name"] call AM_Inventory_Info;
	AM_GroundItems set[count(AM_GroundItems), _obj];
	_obj addAction [format["Pick Up %1(x%2)", _obj_items_name, _obj_itemAmount], {(_this select 3) call AM_Core_Take},[_obj_items, _obj_itemAmount,_obj]];
};