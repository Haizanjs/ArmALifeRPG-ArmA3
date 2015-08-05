/*---------------------------------------------------------------------------
							 	Building ID
								by Twirly
## DESCRIPTION:
 	Grabs ID of given building
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_BuildingID = {
	_building = _this select 0;
	if(typename _building != "OBJECT")exitWith{"Object expected, "+ typeName _building + " Given"};
		_build = _this select 0;

	_buildingArray = toArray (str (_build));

	_sf = false;_ef = false;_na = [];_id = 0;

	for "_i" from 0 to (count _buildingArray)-1  do {
		_item = _buildingArray select _i;
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
		_id = toString (_na);
	};
	_id;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited with the exclusion of this file, provided by a 3rd Party.							
---------------------------------------------------------------------------*/	