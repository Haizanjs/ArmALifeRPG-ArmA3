iF(!isNil "AM_ServerLoop_Active")exitWith{};
if(isNil "AM_ServerLoop_Active")then{
	AM_ServerLoop_Active = true;
};
while{AM_ServerLoop_Active}do{
	[[], "AM_Save",true] call BIS_fnc_MP;
	diag_log format["-Save- Saving server with %1 players online",count(playableUnits)];
	sleep 300;
};
