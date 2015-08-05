/*---------------------------------------------------------------------------
							 	Company Management
								by DEADdem
## DESCRIPTION:
 	Opens Management array
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_ManageMent = {
	_myCompany = AM_MyCompany;	
	_myRank = [name player,"rank",_myCompany] call AM_Company_PlayerInfo;
	_isManager = [name player,"manager",_myCompany] call AM_Company_PlayerInfo;
	if(!_isManager)then{
		_isManager = [_myRank,_myCompany,"admin"] call AM_Company_RankInfo; // Check if user is ranked admin and not default admin
	};
 	if(!createDialog "AM_Company_Main")exitWith{};
	if(!_isManager)then{
		ctrlShow [1600, false];
		ctrlShow [1601, false];
		ctrlShow [1602, false];
	};	
	_companyEmployees = [_myCompany,"employees"] call AM_Company_Info;
	_companyStores = [_myCompany,"stores"] call AM_Company_Info;

	{
		_employee = _x select 0;
		_rank = _x select 1;
		lbAdd[1500, format["%1 [%2]",_employee,_rank]];
	}foreach _companyEmployees;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	