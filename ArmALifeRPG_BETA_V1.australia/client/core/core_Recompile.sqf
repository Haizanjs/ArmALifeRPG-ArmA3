AM_Core_Recompile={
	if(AM_ServerMode == 1)exitWith{hint "RECOMPILE: CANNOT RECOMPILE WHILE SERVER IS ACTIVE"};
	[] execVM "client\inv\invfunc.sqf";
	[] execVM "client\shop\shopfunc.sqf";
	[] execVM "client\police\pd_func.sqf";
	[] execVM "client\core\basic_fnc.sqf";
	[] execVM "client\core\display.sqf";	
	hint "RECOMPILED CLIENT!";
};