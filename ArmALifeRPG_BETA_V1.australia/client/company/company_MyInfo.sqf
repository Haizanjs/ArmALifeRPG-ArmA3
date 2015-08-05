/*---------------------------------------------------------------------------
							 Company MyInfo
								by DEADdem
## DESCRIPTION:
 	Displays information about players employment
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_MyInfo = {
	_myRank = [name player, "rank", AM_MyCompany] call AM_Company_PlayerInfo;
	_manager = [name player, "manager", AM_MyCompany] call AM_Company_PlayerInfo;

	_mySalary = [_myRank,AM_MyCompany,"salary"] call AM_Company_RankInfo;
	_rankAdmin = [_myRank,AM_MyCompany,"admin"] call AM_Company_RankInfo;
	iF(_rankAdmin || _manager)then{_manager = true};
	hint parseText format["<t size='1.5'>%1</t><br/>%2<br/><br/>Salary:<br/>$%3<br/><br/>Management: %4",name player,_myRank,_mySalary,str(_manager)];
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/