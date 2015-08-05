/*---------------------------------------------------------------------------
							 	Ticket Action
								by DEADdem
## DESCRIPTION:
 	Receives ticket from civilian based on what they chose
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Network_ReceiveTicketAction = {
	_action = _This select 0;
	_price = _this select 1;
	
	if(_action == 1)then{
		[format["%1 has accepted your ticket of $%2",name (_this select 3)],AM_COLGROUP_GREEN] call AM_Core_Message;
		if(_price > 0)then{
			AM_BankCash = AM_BankCash + _price;
		};
	}else{
		[format["%1 has denied your ticket of $%2", name (_this select 3), _price], AM_COLGROUP_RED] call AM_Core_Message;
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	