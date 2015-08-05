AM_Core_GetFirst = {
	_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_return = 1;
	_sls = getARray(configFile >> "CfgVehicles" >> (_vehicle getVariable "AM_CAROBJECT") >> "hiddenSelections");
	for[{_xd = 0}, {_xd<count _sls},{_xd=_xd+1}]do{
		_sl = _sls select _xd;
		if(_sl == "plate1")then{
			_return = _xd;
		};
	};
	_return;
};