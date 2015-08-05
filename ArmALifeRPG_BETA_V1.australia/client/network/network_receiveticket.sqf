/*---------------------------------------------------------------------------
							  Receive Ticket
								by DEADdem
## DESCRIPTION:
 	Receives ticket request from officer
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_network_ReceiveTicket={
	_r = _this select 0;
	_p = _this select 1;
	_o = _this select 2;

	AM_TicketingOfficer = _o;
	AM_Ticket = [_p,_r];

	if(!createDialog "AM_Ticket_R")exitWith{};

	lbAdd[1500, format["Reason: %1",_r]];
	lbAdd[1500, format["Price:  $%1",_p]];
	lbAdd[1500, format["Officer: %1", name _o]];
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	