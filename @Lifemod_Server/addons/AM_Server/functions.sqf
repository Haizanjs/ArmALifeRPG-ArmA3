AM_Save = compileFinal "
	_toSend = [name player,AM_MyLicenses,AM_Inventory,AM_BankCash,weapons player,magazines player,AM_Jailtime,[uniform player],items player,[backpack player],[vest player],[headgear player],[goggles player]];
	[[player,_toSend], ""AM_server_savestats"",false,true] call BIS_fnc_MP;
	systemChat 'Statistics Saved!';
";
publicVariable "AM_Save";

AM_Load = compileFinal "
	[[player],""AM_Server_Requestplayer"",false] call BIS_fnc_MP;
";
publicVariable "AM_Load";

AM_AddonSecurity = compileFinal "
	_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	if(isNil ""_vehicle"")exitWith{systemChat 'ERROR(AM_AddonSecurity) - Vehicle not given';};

	_vehicle animate[AM_SERVERVAR_AddonSecurity,1];
";
publicVariable "AM_AddonSecurity";
AM_SetupVars = compileFinal "
	_player = _this select 0;
	[[_player], ""AM_Server_SendVariables"", false] call BIS_fnc_MP;
";
publicVariable "AM_SetupVars";
AM_Server_SendVariables = {
	_player = _this select 0;

	_varList = [AM_SERVERVAR_CARS,AM_SERVERVAR_AddonSecurity];
	[_varList,"AM_ReceiveVars",(_player)] call BIS_fnc_MP;
};
AM_ReceiveVars = compileFinal "
	_varCars = _this select 0;
	_varAddonSec = _this select 1;

	AM_SERVERVAR_CARS = _varCars;
	AM_SERVERVAR_AddonSecurity = _varAddonSec;
	AM_SERVERVAR_Setup = true;
	systemChat ""Received Updated Server Variables"";
";
publicVariable "AM_ReceiveVars";

AM_CheckHouse = compileFinal "
	if(isNil 'AM_CUR_House')exitWith{};
	[[AM_CUR_House, player], ""AM_Server_CheckHouse"",false] call BIS_fnc_MP;
";
publicVariable "AM_CheckHouse";
AM_UpdateCUrrentHouse = compileFinal "
	[[AM_CUR_House,player], ""AM_Server_UpdateHouse"",false] call BIS_fnc_MP;
";
publicVariable "AM_UpdateCUrrentHouse";
