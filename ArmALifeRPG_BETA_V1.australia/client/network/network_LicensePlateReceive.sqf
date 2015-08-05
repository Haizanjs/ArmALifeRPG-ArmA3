AM_network_LicensePlateReceive = {
	_type = [_this,0,"",[""]] call BIS_fnc_Param;
	_owner = [_this,1,"",[""]] call BIS_fnc_Param;
	_plate = [_this,2,"",[""]] call BIS_fnc_Param;
	_real_type = getText(configfile >> "CfgVehicles" >> _type >> "displayName");
	closeDialog 0;
	if(!createDialog "AM_PlateLookup")exitWith{};
	lbAdd[1500, format["Vehicle License Plate: %1",_plate]];
	lbAdd[1500, format["Vehicle Type: %1",_real_type]];
	lbAdd[1500, format["Registered Owner: %%1",_owner]];
};
