/*---------------------------------------------------------------------------
						Gangs
	   		       by Taliban
				
## DESCRIPTION:
	Handles gang functions
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
id = -1;
AM_GangName = {
	_gangname = [_this,0,0,[""]] call BIS_fnc_Param;
	_player = name player;
	_created = false;
	id = id + 1;
	AM_IDdeletegang = id;
		for "_i" from 0 to (count AM_GangArray - 1) do {
			if (((AM_GangArray select _i) select 0) == _gangname) exitWith 
			{
			_created = true;
		};
	};
	if (_created) exitWith {hint "Same gang name as someone else"};
	if (AM_GangMember) exitWith {["You are already in a gang",AM_COLGROUP_RED] call AM_Core_Message;};
	if (AM_GangLeader) exitWith {["You already have a gang",AM_COLGROUP_RED] call AM_Core_Message;};
	AM_GangMember = true;
	AM_GangLeader = true;
	hint format["you've created a gang called %1",_gangname];
	AM_GangData = [_gangname , [_player] , AM_IDdeletegang];
	AM_GangArray = AM_GangArray + [AM_GangData];
	["You have created a gang!",AM_COLGROUP_GREEN] call AM_Core_Message;
	closedialog 0;
	[] call AM_GangMenu;
};


AM_JoinGang = {
	_gangname = [_this,0,0,[""]] call BIS_fnc_Param;
	_list = -1;
	_player = name player;
	for "_i" from 0 to (count AM_GangArray - 1) do {
		if (((AM_GangArray select _i) select 0) == _gangname) exitWith 
		{
			_list = _i;
		};
	};
	if (AM_GangLeader) exitWith {["You own a gang!",AM_COLGROUP_RED] call AM_Core_Message;};
	if (AM_GangMember) exitWith {["You are already in a gang!",AM_COLGROUP_RED] call AM_Core_Message;};
	_gangs = AM_GangArray select _id;
	_gangplayers = _gangs select 1;

	_gangplayers = _gangplayers + [_player];
	_gangs set [1,_gangplayers];

	AM_GangArray set [_list,_gangs];
	["You have joined this gang!",AM_COLGROUP_GREEN] call AM_Core_Message;
	closedialog 0;
	[] call AM_GangMenu;
};

AM_LeaveGang = {
	for "_i" from 0 to (count AM_GangArray - 1) do {
		_gangs = AM_GangArray select _i;
		_gangplayers = _gangs select 1;
		_player = name player;
		if (_player in _gangplayers) then
		{
			_gangplayers = _gangplayers - [_player];
			_gangs set [1,_gangplayers];

			AM_GangArray set [_i,_gangs];
		};
	};
	AM_GangMember = false;
	["You have left your gang!",AM_COLGROUP_GREEN] call AM_Core_Message;
	closedialog 0;
	[] call AM_GangMenu;
};

AM_GangMenu = {
if (!(createdialog "AM_Gang")) exitWith {hint "Dialog Error"};

for [{_i=0}, {_i < (count AM_GangArray)}, {_i=_i+1}] do 
{		
	_gangs = AM_GangArray select _i;
	_index = lbAdd [1500, format ["Gang Name : %1 - Players In Gang : %2 - ID : %3", (_gangs select 0), (_gangs select 1),(_gangs select 2)]];
	lbSetData [1500, _index, format ["%1", (_gangs select 0)]];
	};
};
AM_RemoveGang =
{
for "_i" from 0 to (count AM_GangArray - 1) do {
			_gangs = AM_GangArray select _i;
			_gang = _gangs select 2;
			if (_gang == AM_IDdeletegang) then {
			AM_GangLeader = false;
			AM_GangMember = false;
			AM_GangArray = AM_GangArray - [AM_GangData];
			AM_GangData = [];
			lbDelete [1500,AM_IDdeletegang];
			["You as the gang leader left you gang and by doing that you have removed it",AM_COLGROUP_GREEN] call AM_Core_Message;
			closedialog 0;
			[] call AM_GangMenu;
			} else {
			["This is not your gang!",AM_COLGROUP_RED] call AM_Core_Message;
		};
	};
};
/*---------------------------------------------------------------------------	
			Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL","YOUR TAG" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	