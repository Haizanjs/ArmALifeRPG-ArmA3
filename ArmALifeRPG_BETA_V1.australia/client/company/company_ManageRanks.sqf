/*---------------------------------------------------------------------------
							 	Company Management
								by DEADdem
## DESCRIPTION:
 	Opens Management array
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_ManageRanks = {
	_myCompany = AM_MyCompany;	
	_myRank = [name player,"rank",_myCompany] call AM_Company_PlayerInfo;
	_isManager = [name player,"manager",_myCompany] call AM_Company_PlayerInfo;
	if(!_isManager)then{
		_isManager = [_myRank,_myCompany,"admin"] call AM_Company_RankInfo; // Check if user is ranked admin and not default admin
	};
	if(!_isManager)exitWith{};
	if(!createDialog "AM_Company_Ranks")exitWith{};
	lbAdd[2100,"Administrator"];
	lbAdd[2100,"Not Administrator"];
	_companyRanks = [_myCompany,"ranks"] call AM_Company_Info;
	{
		
		_name = _x select 0;
		_salary = _x select 1;
		_admin = _x select 2;
		lbAdd[2101,format["%1 [S: $%2] [A: %3]",_name,_salary,_admin]];
	}Foreach _companyRanks;
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/