[] execFSM "client\core\client_loop.fsm";
if((_this select 1))then{
	[player, "AM_Server_BeginSession",false] call BIS_fnc_MP;
	systemChat "initialising JIP";
};