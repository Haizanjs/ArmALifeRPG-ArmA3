AM_JobSalary =
{
AM_Hired = true;
[format["You have a Allowance %1,For now you will get a $450 allowance every 8 mins. Good Luck", name player],AM_COLGROUP_GREEN] call AM_Core_Message;
_uid = getPlayerUID player;
AM_Jobplayer = AM_Jobplayer + [_uid];
while {true} do
{
	sleep 500;	
	_allowance = AM_Allowance; 
    _salary = AM_Salary;	
	_allowance = _allowance + 450;
	if (AM_PoliceDuty) then {
		_allowance = _allowance + 500;
	};
	if (AM_EMSDuty) then {
	_allowance = _allowance + 500;
	};
	AM_BankCash = AM_BankCash + _salary;
	AM_BankCash = AM_BankCash + _allowance;
};	

};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/