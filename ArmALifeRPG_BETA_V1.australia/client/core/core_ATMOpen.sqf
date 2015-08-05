
/*---------------------------------------------------------------------------
								Open Factory
								by DEADdem
## DESCRIPTION:
 	Opens the ATM dialog
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_ATMOpen = {
	if(!createDialog "AM_ATM")exitWith{};
	ctrlSetText [1400,"0"];
	ctrlSetText [1401,"0"];	
	ctrlSetText [1402,"0"];
	{
		lbAdd[2100,format["%1",name _x]];
	}forEach playableUnits;
};