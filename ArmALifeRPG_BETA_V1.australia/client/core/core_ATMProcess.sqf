
/*---------------------------------------------------------------------------
							  	ATM Process
								by DEADdem
## DESCRIPTION:
 	Processes info sent from ATM dialog
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_ATMProcess = {
	_withdraw = [_this,0,0,[""]] call BIS_fnc_Param;
	_withdraw = parseNumber(_withdraw);
	_deposit = [_this,1,0,[""]] call BIS_fnc_Param;
	_deposit = parseNumber(_deposit);
	_transfer = [_this,2,0,[""]] call BIS_fnc_Param;	
	_transfer = parseNumber(_transfer);
	_transfer_client = [_this,3,80771512,[0]] call BIS_fnc_Param;
	if(_withdraw >= 1 and _deposit >= 1)exitWith{["You cannot Withdraw and Deposit money at the same time!",AM_COLGROUP_RE] call AM_Core_Message;};
	if(_deposit >= 1)then{
		_ihaveHowMuchCashSir = ["cash"] call AM_Inventory_GetAmount;
		if(_deposit > _ihaveHowMuchCashSir) exitWith{["You dont have enough to Deposit",AM_COLGROUP_RED] call AM_Core_Message;};
		AM_BankCash = AM_BankCash + _deposit;
		["cash",-_deposit] call AM_Inventory_AddItem;
		[format["You have deposited $%1 to your Bank. Your balance is now $%2",_deposit,AM_BankCash],AM_COLGROUP_GREEN] call AM_Core_Message;
	};
	if(_withdraw >= 1)then{
		if(_withdraw > AM_BankCash) exitWith {["You are trying to withdraw too much money! You do not have that much!",AM_COLGROUP_RED] call AM_Core_Message;};
		AM_BankCash = AM_BankCash - _withdraw;
		["cash",_withdraw] call AM_Inventory_AddItem;
		[format["You have withdrawn $%1 to your Bank. Your balance is now $%2",_withdraw,AM_BankCash],AM_COLGROUP_GREEN] call AM_Core_Message;
	};
	if(_transfer >=1 and !(_transfer_client == 80771512))then{
		_client = playableUnits select _transfer_client;

		if(_transfer > AM_BankCash) exitWith {["You are trying to transfer too much money! You do not have that much!",AM_COLGROUP_RED] call AM_Core_Message;};
		AM_BankCash = AM_BankCash - _transfer;	
		[[_transfer, player], "AM_network_receivetransfer",owner _client] call BIS_fnc_MP;
		[format["You sent $%1 to %2",_transfer,name _client],AM_COLGROUP_GREEN] call AM_Core_Message;
	};	
};