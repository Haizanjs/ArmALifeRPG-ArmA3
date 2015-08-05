AM_network_receivewarrants = {
	_allWarrants = [_this,0,[[]],[[]]] call BIS_fnc_Param;
	AM_temp_Warrants = _allWarrants select 0;

	if(!createDialog "AM_WarrantsMenu")exitWith{hint "Cannot create menu!"};
	if(count(_allWarrants select 0) == 0)exitWith{
		lbAdd[1500,"No Current Warrants!"];
	};

	for[{_c=0},{_c<count AM_temp_Warrants},{_c=_c+1}]do{
		_arr = AM_temp_Warrants select _c;
		_wID = _arr select 0;
		_wName = _arr select 1;
		_wType = _arr select 2;
		_wCop = _arr select 3;
		_wInfo = _arr select 4;
		_wStatus = _arr select 5;
		_wReason = _arr select 6;
		lbAdd[1500,format["ID#%3 %1 [%2] [%4]",_wName,_wType,_wID,_wStatus]];
	};
};