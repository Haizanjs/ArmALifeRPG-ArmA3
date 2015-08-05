/*---------------------------------------------------------------------------
							 	Company Info
								by DEADdem
## DESCRIPTION:
 	Grabs info from company array
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_Info = {
	_companyClass = [_this,0,"nope",[""]] call BIS_fnc_param;
	_info = [_this,1,"nope",[""]] call BIS_fnc_param;
	if(isNil "_companyClass" || _companyClass == "nope")exitWith{};

	_slot = [_companyClass] call AM_Company_GetSlot;
	_companyArray = AM_ActiveCompanies select _slot;

	_return = "";
	switch(_info)do{
		case "name":
		{
			_return = _companyArray select 1;
		};
		case "account":
		{
			_return = _companyArray select 2;
		};
		case "employees":
		{
			_return  = _companyArray select 3;
		};
		case "ranks":
		{
			_return = _companyArray select 4;
		};
		case "stores":
		{
			_return = _companyArray select 5;
		};
		case "warehouse":
		{
			_return = _companyArray select 6;
		};
		case "slot":
		{
			_return = [_companyClass,AM_ActiveCompanies] call AM_Inventory_GNI;
		};
	};	

	_return;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	