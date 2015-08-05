AM_Core_KeyHandler = {
	_key = [_this, 1, 0, [0]] call BIS_fnc_Param;
	_shift = [_this, 2, false, [false]] call BIS_fnc_Param;
	_ctrl = [_this, 3, false, [false]] call BIS_fnc_Param;

	switch(_key)do{
		case 2:
		{
			if(_ctrl)then{
				["left"] call AM_Core_Holster;
			};
		};
		case 3:
		{
			if(_ctrl)then{
				["right"] call AM_Core_Holster;
			};
		};
		case 18: {
			if(!isNull (FindDisplay 909)) exitWith {hint "You already have interaction menu open already!"};
			[] call AM_Core_Interact;
		};
		case 15:
		{
			if(!_ctrl)then{
				if(!isNull (FindDisplay 202)) exitWith {hint "You already have the inventory menu open!"};
				[] call AM_Inventory_Open;
			};
		};
		case 38:
		{
			_veh = (nearestObjects[player,["Air","Ship","Car"], 5]) select 0;
			if(_veh in AM_Cars)then{
				[_veh] call AM_Core_ToggleLock;
			};
		};
		case 35:
		{
			if(_ctrl)then{
				detach AM_AttachedUnit;
				AM_AttachedUnit = nil;
			};
		};
		case 211: {
			[] call AM_AdminMenu;
		};
		case 207: {
			[] call AM_Debug;
		};
	};
	_handled = true;
};