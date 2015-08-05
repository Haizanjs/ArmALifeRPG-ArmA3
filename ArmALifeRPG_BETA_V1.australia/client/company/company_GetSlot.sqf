/*---------------------------------------------------------------------------
							 	Company GetSlot
								by DEADdem
## DESCRIPTION:
 	Gets the slot of the company
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Company_GetSlot = {
	_company = _this select 0;
	if(isNil "_company")exitWith{};

	_return = 999999;
	{
		if(_x select 0 == _company)then{
			_return = _foreachindex;
		};
	}forEach AM_ActiveCompanies;	
	_return;	
};

/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/