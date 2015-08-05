_test = [_this,0,"",[""]] call BIS_fnc_Param;
switch(_test)do{
	case "drivers":
	{
		if(!createDialog "AM_LicenseTest")exitWith{systemChat "Script failed to load"};
		

	};		
};