/*---------------------------------------------------------------------------
						Jobs
	   		       by Taliban
				
## DESCRIPTION:
	Handles job functions
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
id = -1;
AM_CreateMarker = {
	_name = [_this,0,0,[""]] call BIS_fnc_Param;
	_salary = [_this,1,0,[""]] call BIS_fnc_Param;
	_uid = getplayeruid player;
	_player = name player;
	AM_jobsalary = parseNumber(_salary);
	AM_jobname = _name;
	AM_jobcreator = _uid;
	id = id + 1;
	AM_IDdeletejob = id;
	_created = false;
	if (_name == "" || _salary == "") exitWith {hint "forgot a name or salary"};
	if (AM_Jobtimer) exitWith {hint "you still have a timer on you"};
	_markerobj = createmarker [_name, position player];
	_markerobj setmarkershape "Icon";
	_name setmarkertype "Flag";
	_name setmarkercolor "ColorRed";
	_name setmarkersize [1, 1];
	_name setmarkertext format ["Job: %1",_name];
	AM_JobData = [AM_jobname,AM_jobsalary,_player,AM_IDdeletejob];
	AM_Joblist = AM_Joblist + [AM_JobData];
	if (playableUnits in AM_Joblooking) then {[[[format["%1 is looking for %2 and is paying %3",name player,_name,_salary]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;};
	hint "job created";
	closeDialog 0;
	[] call AM_JobMenu;
};

AM_Endjob = {
	_index = [_this,0,0,[0]] call BIS_fnc_Param;
	_selection = AM_joblist select _index;
	_person = _selection select 2;
	_id = _selection select 3;
	_player = name player;
	if (_player == _person) then {
	deleteMarker AM_jobname;
	_player = name player;
	AM_Joblist = AM_Joblist - [AM_JobData];
	lbDelete [1500,AM_IDdeletejob];
	[[[format["%1 has ended %2 job",name player,AM_jobname]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	closeDialog 0;
	[] call AM_JobMenu;
	} else {
	hint "you are not the creator of the job";
	};
};
AM_FindJob = {
	_uid = getplayeruid player;
	[format["%1 you are put into our database and will be alerted when a job is found",name player],AM_COLGROUP_GREEN] call AM_Core_Message;
	AM_Joblooking = AM_Joblooking + [_uid];
};

AM_CreateJob = {
	private ["_time"];
	AM_JobTimer = true;
	hint "you now have a timer 120 sec";
	_time = 0;
	while {AM_JobTimer} do {
		while {_time <= 120} do
		{
			_time = _time + 1;
		};
		if (_time == 120) then {
		hint "you can create a job now";
		AM_JobTimer = false;
		};
	};
};
AM_JobMenu = {
if (!(createdialog "AM_JobMarker")) exitWith {hint "Dialog Error"};

	for [{_i=0}, {_i < (count AM_Joblist)}, {_i=_i+1}] do 
	{		
	_jobs = AM_Joblist select _i;
	_index = lbAdd [1500, format ["Job Name : %1 - Job Creator : %3 - Job Salary : $%2", (_jobs select 0),(_jobs select 1),(_jobs select 2)]];
	lbSetData [1500, _index, format ["%1", (_jobs select 0)]];
	};
};
AM_TakeJob = {
	_index = [_this,0,0,[0]] call BIS_fnc_Param;
	_selection = AM_joblist select _index;
	_person = _selection select 2;
	_player = name player;
	if (_player == _person) then {
	hint "this is your job";
	} else {
	[[[format["%2 has accepted your job offer %1",_person,_player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	};
};
/*---------------------------------------------------------------------------	
			Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL","YOUR TAG" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	