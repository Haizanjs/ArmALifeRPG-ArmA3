AM_Core_PlantIsMine = {
	_plant = [_this,0,objNull,["",objNull]] call BIS_fnc_Param;
	_plant = str(_plant);
	_return = true;
	for[{_l = 0},{_l < count AM_MyPlants},{_l = _l + 1}]do{
		if(((AM_MyPlants select _l) select 0) == _plant)then{
			_return = true;
		};
	};
	_return;
};