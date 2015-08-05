AM_Core_StorageOpen={
	_storage= [_this,0,objNull,[objNull]] call BIS_fnc_Param;


	[[player,_storage], "AM_Server_GrabStorage",false] call BIS_fnc_MP;
	systemChat "Fetching...";
};