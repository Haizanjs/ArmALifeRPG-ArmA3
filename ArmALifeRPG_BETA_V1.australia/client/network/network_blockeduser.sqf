AM_network_blockeduser={
	_player = _this select 0;
	_mode = _this select 1;
	_blockedTypes = [["LgSysBl","Databse Block"], ["LgSysFa","Login System Rejection"]];	
	_id  = [_mode,_blockedTypes] call AM_inventory_GNI;
	hint format["PLAYER %1 BLOCKED: %2",name _player, ((_blockedTypes select _id) select 1)];
};