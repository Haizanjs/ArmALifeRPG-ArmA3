AM_Core_PlantIsMineable = {
	_plant = [_this,0,objNull,["",objNull]] call BIS_fnc_Param;
	_plant = str(_plant);
	_slot = 0;
	for[{_l = 0},{_l < count AM_MyPlants},{_l = _l + 1}]do{
		if(((AM_MyPlants select _l) select 0) == _plant)then{
			_slot = _l;
		};
	};
	if((AM_MyPlants select _slot) select 1 > 100)then{
		true;
	}else{
		false;
	};
};