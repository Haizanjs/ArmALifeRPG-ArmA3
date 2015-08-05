AM_Core_SpeedCamHandler = {
	if(!isNil "AM_SCLoop_Active")exitWith{systemChat "Double spawn, exiting"};
	AM_SCLoop_Active = true;
	while{AM_SCLoop_Active}do{
		_vehicle = vehicle player;
		_driver= driver vehicle player;
		{

			if((player distance _x < 8) and (speed _vehicle > AM_MinSpeedCam) and (_driver == player))then{
				_speed = round (speed _vehicle);
				[[player,vehicle player, _speed], "AM_Server_SpeedCamTicketPlayer",false] call BIS_fnc_MP;
				systemChat format["Speedcam has caught you going %1! Ticketing System will be updated!",round(_speed)];
				sleep 1;
			};
		}forEach am_speedcams;
	};
	sleep 0.3;
};	