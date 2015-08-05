/*---------------------------------------------------------------------------
							 Company PlayerInfo
								by DEADdem
## DESCRIPTION:
 	Gets information about player in the company
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_PlayerInfo = {
	_nameOf = _this select 0;
	_request = _this select 1;
	_company = _this select 2;
	if(isNil "_nameOf" || isNil "_request")exitWith{};
	if(AM_MyCompany == "")exitWith{};
	
	_CompanyEmployees = [_company,"employees"] call AM_Company_Info;
	_slot = [_nameOf,_CompanyEmployees] call AM_Inventory_GNI;
	if(_slot == 999)exitWith{};

	_playerslot = _CompanyEmployees select _slot;
	_return = false;
	if(_request == "rank")then{
		_return = (_playerslot select 1);
	};
	if(_request == "manager")then{
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