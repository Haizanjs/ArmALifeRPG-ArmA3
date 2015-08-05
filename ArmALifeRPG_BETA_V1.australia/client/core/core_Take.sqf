AM_core_Take = {
	_class = [_this,0,"",[""]] call BIS_fnc_Param;
	_num = [_this,1,1,[1]] call BIS_fnc_Param;
	_object = [_this,2,noSpawn, [objNull]] call BIS_fnc_Param;
	if(!((_object getVariable "isAnItem") == 1)) exitWith {};
	[_class,_num] call AM_Inventory_AddItem;
	deleteVehicle _object;
};