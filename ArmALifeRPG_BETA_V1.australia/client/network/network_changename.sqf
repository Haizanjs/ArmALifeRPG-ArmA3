AM_network_changename = {
	_prevName = [_this,0,"",[""]] call BIS_fnc_Param;
	_unit = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	hint parseText format["<t size='1.5' color='#FF0000'>Alert!</t><br/> %1 has changed their name from %2 to %3!",_unit,name _unit, _prevName];
};

