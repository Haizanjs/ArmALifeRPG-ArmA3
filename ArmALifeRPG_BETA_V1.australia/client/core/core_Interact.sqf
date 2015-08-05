AM_Core_Interact = {
	AM_InteractTarget = cursorTarget;
	if((player getVariable "AM_Cuffed"))exitWith{["Interaction Disabled while cuffed",AM_COLGROUP_RED] call AM_Core_message};
	//if(!(AM_InteractTarget in AM_SERVERVAR_CARS || !isplayer AM_InteractTarget))exitWith{};
	if(player distance AM_InteractTarget > 5)exitWith{};
	[] call AM_Int_Open;
};