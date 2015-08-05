while {true} do {
	if(!(call TFAR_fnc_getTeamSpeakChannelName == "TaskForceRadio"))then{
		titleText["You are not in the TaskForceRadio Channel!","BLACK"];
		player enableSimulation false;
		waitUntil {(call TFAR_fnc_getTeamSpeakChannelName == "TaskForceRadio")};
	}else{
		titleText ["Move around!","PLAIN"];
		player enableSimulation true;
	};
};

