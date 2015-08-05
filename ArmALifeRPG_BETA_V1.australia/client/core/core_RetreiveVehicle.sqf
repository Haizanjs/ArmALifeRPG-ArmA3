AM_Core_RetreiveVehicle = {
	closeDialog 0;
	_selection = [_this,0,0,[0]] call BIS_fnc_Param;
	_dbItem = AM_CUR_StorageItems select _selection;
	_dbStorage = [_dbItem select 4] call AM_core_StrToArr;

	AM_CUR_RetreiveItem = _dbItem;

	if(typeName _dbItem != "ARRAY")exitWith{["This vehicle is already out!",AM_COLGROUP_RED] call AM_Core_Message};
	iF(_dbStorage != AM_CUR_STorage)exitWith{["Vehicle is not at this storage!",AM_COLGROUP_RED] call AM_Core_Message};

	_dbID = [_dbItem select 0] call AM_core_StrToArr;
	[[_dbID,player],"AM_Server_RequestRetreival",false] call BIS_fnc_MP;
};