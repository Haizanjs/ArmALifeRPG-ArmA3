/*---------------------------------------------------------------------------
							 	Ticket
								by DEADdem
## DESCRIPTION:
 	Accepts/Denies ticket issued
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Ticket = {
	_a = _this select 0;
	closeDialog 0;
	if(_a == 0)then{
		[[0,0,player],"AM_Network_ReceiveTicketAction",AM_TicketingOfficer] call BIS_fnc_MP;
		["You denied the ticket",AM_COLGROUP_WHITE] call AM_Core_Message;
	}else{
		_price = AM_Ticket select 0;
		if(_price > AM_BankCash)exitWith{[[0,0,player],"AM_Network_ReceiveTicketAction",AM_TicketingOfficer] call BIS_fnc_MP; ["You do not have enough to pay this fine",AM_COLGROUP_RED] call AM_Core_Message};
		[[1,_price,player],"AM_Network_ReceiveTicketAction",AM_TicketingOfficer] call BIS_fnc_MP;
		AM_BankCash = AM_BankCash - _price;
		["You accepted the ticket",AM_COLGROUP_WHITE] call AM_Core_Message;
	};	
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	