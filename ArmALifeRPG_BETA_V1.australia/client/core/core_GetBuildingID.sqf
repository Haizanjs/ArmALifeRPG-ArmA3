AM_Core_GetBuildingID = {
	_build = _this select 0;
	_sn = toArray (str (_build));
	_sf = false;_ef = false;_na = [];_id = 0;
	for "_i" from 0 to (count _sn)-1  do {
		_item = _sn select _i;
		if (_sf and (not (_ef))) then {
			_na set [count _na,_item];
		};
		if (_item == 35) then {
			_sf = true;
		};
		if (_item == 58) then {
			_ef = true;
		};
	};
	if ((count _na) >=3) then {
		_na set [((count _na)-1) ,"delete"];
		_na = _na - ["delete"];
		_na set [0 ,"delete"];
		_na = _na - ["delete"];
		_return = toString (_na);
	};
	_return
};