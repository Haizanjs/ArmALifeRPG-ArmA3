AM_Inventory_License = {
	_license = [_this, 0, "",[""]] call BIS_fnc_param;
	_action = [_this, 1, "give", [""]] call BIS_fnc_param;

	if ((_license in AM_MyLicenses)) exitWith {[format["%1 you already have that license",name player],AM_COLGROUP_RED] call AM_Core_Message;};

	if(_action == "give") then{
		_licenseIndex = [_license, AM_Licenses] call AM_Inventory_GNI;
		_licenseItem = AM_Licenses select _licenseIndex;

		_licPrice = _licenseItem select 2;
		_licName = _licenseItem select 1;

		_cashIHave = ["cash"] call AM_Inventory_GetAmount;
		if(_licPrice > _cashIHave)exitWith{["You do not have enough to buy this license!",AM_COLGROUP_RED] call AM_Core_Message};
		["cash",-_licPrice] call AM_Inventory_AddItem;
		AM_MyLicenses = AM_MyLicenses + [_license];
		[format["%1 you have just bought a %2",name player,_licName],AM_COLGROUP_GREEN] call AM_Core_Message;
	}else{
		AM_MyLicenses = AM_MyLicenses - [_license];
	};
};