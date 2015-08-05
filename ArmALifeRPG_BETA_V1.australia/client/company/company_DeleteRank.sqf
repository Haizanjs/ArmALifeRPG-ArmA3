/*-----------------------------------------------------------
							 	Company Update
								by DEADdem
## DESCRIPTION:
 	Updates an existing rank in the company
## UPDATES:
  001:
  Creation
------------------------------------------------------------*/
AM_Company_DeleteRank = {
	_lb = _this select 0;
	if(AM_CompanyLock)exitWith{["Action in progress, please wait"] call AM_Core_message;};

	AM_CompanyLock = true;
	_companySlot = [AM_MyCompany,AM_ActiveCompanies] call AM_Inventory_GNI;
	_companySlot = AM_ActiveCompanies select _companySlot;

	_companyRanks = _companySlot select 4;
	_companyRanks deleteAt _lb;

	closeDialog 0;
	["You have deleted this rank",AM_COLGROUP_GREEN] call AM_Core_Message;

	[] call AM_Company_ManageRanks;
	AM_CompanyLock = false;
	[] call AM_Company_MakePublic;

}; 
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/