AM_network_setupsession={
	_packet = [_this,0,[[]],[],[1]] call BIS_fnc_Param;

	AM_SERVERVAR_CARS = (_packet select 0);
	AM_SERVERVAR_JailCode = (_packet select 1);
	systemChat "Session Received and Assigned";	
};