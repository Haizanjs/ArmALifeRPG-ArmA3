AM_network_receivetransfer = {
	_cash = [_this,0,0,[0]] call BIS_fnc_Param;
	_player = [_this,1,objNull,[objNull]] call BIS_fnc_Param;
	if(_cash == 0)exitWith{};
	AM_BankCash = AM_BankCash + _cash;
	hint format["You received $%1 from %2",_cash, name _player];
};	