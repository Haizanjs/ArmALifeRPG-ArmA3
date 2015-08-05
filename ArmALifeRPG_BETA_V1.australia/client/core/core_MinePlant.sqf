AM_Core_MinePlant = {
	_plant = [_this,0,objNull,["",objNull]] call BIS_fnc_Param;
	_plant_obj = _plant;
	_plantType = typeOf(_plant_obj);
	_plant = str(_plant);
	if(AM_PickupLock)exitWith{["Please wait, pickup script is busy", AM_COLGROUP_RED] call AM_Core_Message};
	AM_PickupLock=true;
	_slot = 0;
	for[{_l = 0},{_l < count AM_MyPlants},{_l = _l + 1}]do{
		if(((AM_MyPlants select _l) select 0) == _plant)then{
			_slot = _l;
		};
	};
	AM_MyPlants set[_slot,-1];
	AM_MyPlants = AM_MyPlants - [-1];
	_plantSlot = [_plantType] call AM_Core_GetPlantByGameClass;
	_plantVirtualClass = (AM_PlantsByClass select _plantSlot) select 1;
	_plantName = [_plantVirtualClass,"name"] call AM_Inventory_Info;
	deleteVehicle _plant_obj;
	[_plantVirtualClass,1] call AM_Inventory_AddItem;
	[format["You picked  up %1",_plantName],AM_COLGROUP_GREEN] call AM_Core_Message;
	AM_PickupLock=false;
};