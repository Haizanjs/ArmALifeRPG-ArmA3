AM_Core_GetPlantByGameClass = {
	_plant = [_this,0,"",["",objNull]] call BIS_fnc_Param;

	_return = 0;
	{
		if(_x select 0 == _plant)then{
			_return = _forEachIndex;
		};
	}foreAch AM_PlantsByClass;		
	_return;
};