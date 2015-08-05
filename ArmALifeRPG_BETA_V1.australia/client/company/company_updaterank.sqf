/*-----------------------------------------------------------
							 	Company Update
								by DEADdem
## DESCRIPTION:
 	Updates an existing rank in the company
## UPDATES:
  001:
  Creation
------------------------------------------------------------*/
AM_Company_UpdateRank = {
	_rankName = _this select 0;
	_rankSalary = parseNumber(_this select 1);
	_rankSlot = _this select 2;
	_myC = AM_MyCompany;
	if(AM_CompanyLock)then{["Action in progress, Please wait",AM_COLGROUP_RED] call AM_Core_Message;};
	AM_CompanyLock = true;
	_companyRanks = [AM_MyCompany,"ranks"] call AM_Company_Info;
	_queryRank = _companyRanks select _rankSlot;
	
	_updateRank = [_rankName,_rankSalary,([(_queryRank select 0), AM_MyCompany, "admin"] call AM_Company_RankInfo)];	
	_companyRanks set[_rankSlot,_updateRank];
	
	AM_CompanyLock = false;
	closeDialog 0;
	[] call AM_Company_ManageRanks;
	[] call AM_Company_MakePublic;
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/