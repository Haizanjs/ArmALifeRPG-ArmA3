AM_network_storedvehicle = {
	_obj = [_this,0,"",[""]] call BIS_fnc_Param;
	[format["You stored your %1 successfully!",(getText(configFile >> "CfgVehicles" >> _obj >> "displayName"))],AM_COLGROUP_GREEN] call AM_Core_message;
	AM_Cars = AM_cars - [AM_CUR_StoredItem];
	AM_SERVERVAR_Cars = AM_SERVERVAR_Cars - [AM_CUR_StoredItem];
	publicVariable "AM_SERVERVAR_Cars";
	deleteVehicle AM_CUR_StoredItem;
};
