AM_network_retreivevehicle = {
	_id = [_this,0,0,[0]] call BIS_fnc_Param;

	_dbItem = AM_CUR_RetreiveItem;
	_dbID = _dbItem select 0;
	if(_id != ([_dbID] call AM_Core_StrToArr))exitWith{systemChat "ERROR: INCORRECT ID RETREIVED FROM DATABASE!"};
	_dbOBJ = _dbItem select 1;
	DEBUG_obj = _dbOBJ;
	_dbPlate = [_dbItem select 3] call AM_Core_StrToArr;
	_dbStorage = [_dbItem select 4] call AM_Core_StrToArr;
	[_dbOBJ,_dbStorage] call AM_Core_CreateVehicle;
	_plateF = [AM_CUR_Spawncar] call AM_Core_GetFirst;

	_plateString = "";
	{
		_plateString = _plateString + _x;

	}forEach _dbPlate;
	{
		AM_CUR_Spawncar setObjectTextureGlobal[_plateF,format["%1%2.paa",AM_VehiclePack_Common_Plates,_x]];
		_plateF = _plateF + 1;
	}forEach _dbPlate;
	AM_CUR_Spawncar setVariable ["AM_Platestring",_plateString];
	AM_CUR_Spawncar setVariable ["AM_platearray",_dbPlate];
};
