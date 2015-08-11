AM_ServerVersion = 0.01;
AM_Server_Init = false;

publicVariable "AM_ServerVersion";
waitUntil{!isNil "AM_Defines_Done"};
if(AM_ServerVersion != AM_ClientVersion)exitWith{
	[["ver"],"AM_network_initFail",true,false] call BIS_fnc_MP;
};
AM_Server_DBActive = false;
AM_IllegalCharacters = [39,96];
AM_SaveExpected = 6; //Entries in the array sent to be saved.
diag_log format["AM Server Version: %1",AM_ServerVersion];
diag_log format["AM Client Version: %1",AM_ClientVersion];
diag_log format["=================Starting Server Side================="];

[] execVM "\AM_Server\variables.sqf";
[] execVM "\AM_Server\core\corefunc.sqf";
[] execVM "\AM_Server\sql\sql_func.sqf";
[] execVM "\AM_Server\functions.sqf";
[] execVM "\AM_Server\serverloop.sqf";
diag_log format ["AM_SERVERVAR_JailCode"];