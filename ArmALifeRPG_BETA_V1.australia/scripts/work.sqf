private["_jobactive"];
_act = ((_this select 3) select 0);
_jobmoney = 0;
_markerdistance = 0;

if (_act == "startJOB") then
{
	AM_Jobisactive = true;
	deleteMarkerLocal "Workmarker";
	_markercreator = (floor (random ( count AM_Jobmarker)));
	_markerlocation = (AM_Jobmarker select _markercreator);			
	_markerobj = createmarkerlocal ["Workmarker",[0,0]];
	_markername = "Workmarker";
	_markerobj setmarkershapelocal "Icon";
	"Workmarker" setmarkertypelocal "mil_start";
	"Workmarker" setmarkercolorlocal "ColorGreen";
	"Workmarker" setmarkersizelocal [1, 1];
	"Workmarker" setmarkertextlocal "Job Opportunity";
	_markername Setmarkerposlocal _markerlocation;

[format["Welcome to your new job %1,hope it's amazing you'll have a good time!", name player],AM_COLGROUP_GREEN] call AM_Core_Message;

	sleep 2;
	_playerlocation = getpos vehicle player;
	_markerdistance = _playerlocation distance _markerlocation;
	_jobactive = 0;
	while {AM_Jobisactive} do
	{
	if (vehicle player distance _markerlocation <= 15) then 
		{
			while {_jobactive <= 120} do 
		    {
			_jobactive = _jobactive + 1;
			if (vehicle player distance _markerlocation >= 40) exitWith {
				[format["You left your job %1 Why? You will need to sign-up again.", name player],AM_COLGROUP_RED] call AM_Core_Message;
				AM_Jobisactive = false;
				deleteMarkerLocal "Workmarker";
			    };
		    };	
			if (_jobactive == 120) then {
			_jobmoney = (150 * AM_JobMoney);
			AM_BackCash = AM_BackCash + _jobmoney;	
            [format["You have earned %1,Thanks for being a huge help here %2.You can sign-up again if you wish.", _jobmoney, name player],AM_COLGROUP_GREEN] call AM_Core_Message;			
			deleteMarkerLocal "Workmarker";
			AM_Jobisactive = false;
			};
		};
};

};

if (_act == "stopJOB") then
{
AM_Jobisactive = false;	
deleteMarkerLocal "Workmarker";
[format["You have ended the job %1.You will have to wait for a new job opportunity to appear.", _jobmoney, name player],AM_COLGROUP_RED] call AM_Core_Message;			
AM_Jobwaittime = true;
sleep 120;
AM_Jobwaittime = false;
};
/*---------------------------------------------------------------------------    
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited                            
---------------------------------------------------------------------------*/