AM_Core_Jail = {
	if(!AM_Inprison)then{
		AM_inPrison = true;
	};
	if(AM_Jailtime < 5)exitWith{};
	while{AM_JailTime > 4}do{
		if(player distance AM_Jail > 50)exitWith{[player] call AM_Core_JailEscape};
		AM_JailTime = AM_JailTime - 1;
		titleText[format["Time Left: %1",(AM_Jailtime / 3600) call AM_Core_NumToTime], "PLAIN DOWN"];
		sleep 1;
	};
	waitUntil{AM_JailTime == 5};
	["You served your time in Prison. be good now.",AM_COLGROUP_WHITE] call AM_Core_Message;
};