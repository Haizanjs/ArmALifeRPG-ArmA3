AM_Core_StoreVehicle = {
	closeDialog 0;
	_index = [_this,0,0,[0]] call BIS_fnc_Param;
	_item = AM_CUR_StorageItems select _index;
	AM_CUR_StoredItem = _item;
	if(typeName _item == "ARRAY")exitWith{["That vehicle is already stored!",AM_COLGROUP_RED] call AM_Core_Message};
	if(!(_item in AM_Cars))exitWith{systemChat "Error: Vehicle not owned by player"};
	_carOBJ = _item getVariable "AM_CAROBJECT";
	_carPS 	= _item getVariable "AM_Platestring";
	_carPA 	= _item getVariable "AM_PlateArray";
	_storage = AM_CUR_Storage;
	if(_item distance _storage > 150)exitWith{["Vehicle too far away from storage point!",AM_COLGROUP_RED] call AM_Core_Message};
	[[player,_carOBJ,_carPS,_carPA,_storage],"AM_Server_StoreVehicle",false] call BIS_fnc_MP;
};