AM_network_initFail = {
	_failType = [_this,0,"safe",[""]] call BIS_fnc_Param;
	if(AM_Init_Failed)exitWith{};
	if(_failType == "safe")exitWith{};
	switch(_failType)do{
		case "ver":
		{
			0 cutText["Version Mismatch between Server and Client!","BLACK FADED"];
			AM_Init_Failed = true;
		};

	};
};
