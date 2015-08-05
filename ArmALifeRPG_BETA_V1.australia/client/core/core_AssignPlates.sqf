/*---------------------------------------------------------------------------
								Assign Plates
								by DEADdem
## DESCRIPTION:
 	Assigns a unique license plate to vehicles
## UPDATES:
  001:
  Creation
  002:
  Automatic Detection support
---------------------------------------------------------------------------*/
AM_core_AssignPlates = {
	private["_count"];
	_obj = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	object = _obj;
	_temp_plate = [];
	_useablechars = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"];
	for[{_c=0},{count _temp_plate < 7},{c=_c+1}]do{
		_rand = round(random(count(_useablechars)));
		_char = _useablechars select _rand;
		_temp_plate = _temp_plate + [_char];
	};
	waitUntil {(count _temp_plate) == 7};
	_temp_plate_string ="";
	_typeofob = _obj getvariable "AM_CAROBJECT";
	_count = [_obj] call AM_Core_GetFirst;
	DEBUG_COUNT = _count;
	{
		_temp_plate_string = _temp_plate_string + _x;
		_obj setObjectTextureGlobal [_count, format["AM_V_Data\plates\%1.paa",_x]];
		_count = _count + 1;
		DEBUG_COUNT = DEBUG_COUNT + 1;
	}forEach _temp_plate;
	_temp_plate_string = toUpper(_temp_plate_string);


	_obj setVariable ["AM_platestring",_temp_plate_string,true];
	_obj setVariable ["AM_platearray",_temp_plate,true];

	_objName = getText(configFile >> "CfgVehicles" >> _typeofob >> "displayName");
	[format["You assigned your %1 with the license plate: %2",_objName, _temp_plate_string],AM_COLGROUP_GREEN] call AM_Core_Message;
	[[AM_CUR_SpawnCar,player],"AM_server_Insertcar",false] call BIS_fnc_MP;
	systemChat "Registering Vehicle..";
};