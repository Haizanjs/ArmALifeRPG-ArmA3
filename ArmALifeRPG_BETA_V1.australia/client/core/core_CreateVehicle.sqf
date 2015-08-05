
/*---------------------------------------------------------------------------
							  	Create Vehicle
								by DEADdem
## DESCRIPTION:
 	Creates vehicle safe for the mission
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_CreateVehicle= {
	_classname = [_this,0,"",[""]] call BIS_fnc_Param;
	_position = [_this,1,noSpawn,[objNull]] call BIS_fnc_Param;
	_num = round(time);
	_str = format["car_%1_%2",_num,player];
	AM_CUR_SpawnCar = _classname createVehicle position pre_spawn;
	AM_CUR_SpawnCar allowDamage false;
	AM_CUR_SpawnCar setVariable ["AM_CAROBJECT",typeOf(AM_CUR_SpawnCar),true];
	AM_CUR_SpawnCar setVariable ["AM_Trunk",[],true];
	AM_CUR_SpawnCar setVariable ["AM_GunRack",[[],[]],true];
	AM_SERVERVAR_CARS set[count AM_SERVERVAR_CARS, AM_CUR_SpawnCar];
	publicVariable "AM_SERVERVAR_CARS";
	_obj = AM_CUR_SpawnCar getVariable "AM_CAROBJECT";
	AM_CUR_SpawnCar setVariable ["AM_GLOBAL_CAROWNERS", [getplayeruid player], true];
	AM_CUR_SpawnCar setVehicleVarName format["vehicle_%1_%2",player, round(time)];
	AM_Cars set[count AM_Cars, AM_CUR_SpawnCar];
	AM_CUR_SpawnCar lock 2;	
	[AM_CUR_SpawnCar] call AM_AddonSecurity;
	AM_CUR_SpawnCar setPos [getPos player select 0, getPos player select 1, (getPos player select 2) +3];
	AM_CUR_SpawnCar setPosATL (getPosATL _position);
	AM_CUR_SpawnCar allowDamage true;
};