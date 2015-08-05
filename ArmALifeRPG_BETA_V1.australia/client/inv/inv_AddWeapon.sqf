AM_Inventory_AddWeapon = {
	_gun = _this select 0;
	_mag = _this select 1;

	systemChat format["You have recieved: %1 and %2", _gun, _mag];
	player addWeapon _gun;
	player addMagazines _mag;
};