/*---------------------------------------------------------------------------
							Company Make Public
								by DEADdem
## DESCRIPTION:
 	Sends Current company data to all clients
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_MakePublic = {
	AM_CompanyLock = true;
	publicVariable "AM_CompanyLock"; // Lock all clients from editing companies
	publicVariable "AM_ActiveCOmpanies";
	AM_CompanyLock = false;
	publicVariable "AM_CompanyLock";
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/