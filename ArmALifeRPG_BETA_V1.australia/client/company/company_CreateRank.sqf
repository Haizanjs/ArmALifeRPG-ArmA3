/*---------------------------------------------------------------------------
							 	Company Create Rank
								by DEADdem
## DESCRIPTION:
 	Creates a rank
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_CreateRank = {
	_rankName = _this select 0;
	_rankSalary = _this select 1;
	_admin = _this select 2;
	if(_rankname == "Rank Name" || isNil "_rankname")exitWith{["Please specify a rank name",AM_COLGROUP_RED] call AM_Core_Message};
	if(_rankSalary == "Rank Salary" || isNil "_rankSalary")exitWith{["Please specify a rank salary",AM_COLGROUP_RED] call AM_Core_Message};
	if(isNil "_admin")exitWith{["Please select admin permission",AM_COLGROUP_RED] call AM_Core_Message};
	if(AM_CompanyLock)exitWith{["Action in progress, please wait", AM_COLGROUP_RED] call AM_Core_Message;};
	AM_CompanyLock = true;
	_rankSalary = parseNumber(_this select 1);
	_companySlot = [AM_MyCompany,AM_ActiveCompanies] call AM_Inventory_GNI;
	_companySlot = AM_ActiveCompanies select _companySlot;
	_companyRanks = _companySlot select 4;

	_companyBank = [AM_MyCompany,"account"] call AM_Company_info;
	_companyName = [AM_MyCompany,"name"] call AM_Company_info;
	_companyEmployees = [AM_MyCompany,"employees"] call AM_Company_info;
	_companyRanks = [AM_MyCompany,"ranks"] call AM_Company_info;
	_companyShops = [AM_MyCompany,"stores"] call AM_Company_info;
	_adminRank=false;
	if(_admin == 1)then{
		_adminRank=true;
	};
	_companyRanks set[count(_companyRanks),[_rankName,_rankSalary,_adminRank]];
	_temp_company = [AM_MyCompany, _companyName, _companyEmployees, _companyRanks, _companyShops];
	closeDialog 0; 
	["You have created a new rank",AM_COLGROUP_GREEN] call AM_Core_Message;
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