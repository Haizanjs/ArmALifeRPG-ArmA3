AM_network_openstorage={
	_result = [_this,0,[],[[]]] call BIS_fnc_Param;
	_storage = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	AM_CUR_Storage = _storage;
	if(!createDialog "AM_VehicleStorage")exitWith{hint "couldnt create the menu"};
	_dbCars = _result select 0;
	_mycars = AM_Cars;
	AM_CUR_StorageItems = _dbCars + _mycars;
	for[{_c=0},{_c<count AM_CUR_StorageItems},{_c=_c+1}]do{
		_item = AM_CUR_StorageItems select _c;
		if(_item in _myCars)then{
			_obj = _item getVariable "AM_CAROBJECT";
			_plate = _item getVariable "AM_PlateString";
			lbAdd[1500,format["[OUT] %1 [Plate: %2]",(getText(configFile >> "CfgVehicles" >> _obj >> "displayName")),_plate]];
		}else{
			_dbClass = _item select 1;
			_dbPlate = [_item select 3] call AM_Core_StrToArr;
			_dbPlate_new = "";
			{
				_dbPlate_new = _dbPlate_new + _x;
			}forEach _dbPlate;
			_dbPlate = _dbPlate_new;
			_dbStorage = [_item select 4] call AM_Core_StrToArr;
			if(_dbStorage == AM_CUR_Storage)then{
				lbAdd[1500,format["[IN] %1 [Plate: %2 | HERE]",(getText(configFile >> "cfgvehicles" >> _dbClass >> "displayname")),_dbPlate]];
			}else{
				lbAdd[1500,format["[IN] %1 [Plate: %2 | NOT HERE]",(getText(configFile >> "cfgvehicles" >> _dbClass >> "displayname")),_dbPlate]];
			};
		};


	};
};
