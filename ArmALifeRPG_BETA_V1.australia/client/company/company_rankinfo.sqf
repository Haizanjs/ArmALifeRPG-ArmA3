/*---------------------------------------------------------------------------
							 	Company RankInfo
								by DEADdem
## DESCRIPTION:
 	Gets information from a rank
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_RankInfo = {
	_rank = _this select 0;
	_request = _this select 2;
	_company = _this select 1;
	if(AM_MyCompany == "")exitWith{};
	
	_CompanyRanks = [_company,"ranks"] call AM_Company_Info;

	_slot = [_rank,_CompanyRanks] call AM_Inventory_GNI;

	if(_slot == 999)exitWith{};

	_playerslot = _CompanyRanks select _slot;

	_return = false;
	if(_request == "salary")then{
		_return = (_playerslot select 1);
	};
	if(_request == "admin")then{
		_return = (_playerslot select 2);
	};
	_return;
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/