if(isNil "AM_ServerLoopActive")exitWith{
	diag_log "Server loop exiting due to second execution";
};
AM_ServerLoopActive = true;
diag_log "Server Loop Initialised";
[] execVM "\AM_Server\coderesets.sqf";
AM_SaverActive = false;

while{true}do{
	systemChat "Loop Active Chat";
	sleep 350;
	waitUntil {!AM_SaverActive};
	_time = time;
	[["Stat Saving has begun",AM_COLGROUPWHITE],"AM_Core_Message",true] call BIS_fnc_MP;
	AM_SaverActive = true;
	publicVariable "AM_SaverActive";
	_cnt = 0;
	{
		if(AM_Server_DBActive)then{
			waitUntil {!AM_Server_DBActive};
			[["Your queue position has been reached for saving",AM_COLGROUP_WHITE],"AM_Core_Message",(_x)] call BIS_fnc_MP;
			[[], "AM_Save",(_x)] call BIS_fnc_MP;
		};
		_cnt = _cnt + 1;
	}forEach playableUnits;
	waitUntil{_cnt == count(playableUnits)};
	[[format["Processed %1 players in %2sec",_cnt,(time - _time)], AM_COLGROUP_WHITE],"",true] call BIS_fnc_MP;
	AM_SaverActive = false;
	publicVariable "AM_SaverActive";
};