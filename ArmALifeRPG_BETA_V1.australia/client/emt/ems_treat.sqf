/*---------------------------------------------------------------------------
							 EMS Treatment
								by DEADdem
## DESCRIPTION:
 	Treats the patient
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_EMS_Treat = {
	if(isNil "AM_interactTarget")exitWith{};
	if(!isplayer AM_interactTarget)exitWith{};
	if(!(AM_interactTarget getVariable "AM_Dead"))exitWith{["Patient is not dead", AM_COLGROUP_RED] call AM_Core_message};
	_tgt = AM_interactTarget;
	_treatment = _this select 0;

	switch(_treatment)do{
		case "stabilize":
		{
			[_tgt] spawn{
				_unit = _this select 0;
				[format["You are stabilizing %1",name _unit], AM_COLGROUP_WHITE] call AM_Core_Message;
				[[player,"AinvPknlMstpSlayWrflDnon_medic"],"AM_Core_Animate",true,false] call BIS_fnc_MP;
				sleep 6;
				[[player,""],"AM_Core_Animate",true,false] call BIS_fnc_MP;
				_random = round(random(100));
				if(_random > 75)then{
					["You failed at sabilizing the patient, try again", AM_COLGROUP_RED] call AM_Core_Message;
				}else{
					_unit setVariable ["AM_Stable",true,true];
					[format["Stabilized %1", name _unit], AM_COLGROUP_GREEN] call AM_Core_Message;	
				};
			};
		};
		case "revive":
		{
		[_tgt] spawn{
			_unit = _this select 0;
			if(!(_unit getVariable "AM_Stable"))exitWith{["Unit hasn't been stabilized!",AM_COLGROUP_RED] call AM_Core_Message;};
			_timeLeft = (_unit getVariable "AM_Time");
			if(isnIl "_timeLeft")exitWith{};
			if(_timeLeft < 240)then{
				_isnearHospital = false;
				{
					if(player distance _x > 50)then{
						_isnearHospital = true;
					};
				}foreach AM_HospitalMarkers;

				if(_isnearHospital)then{
					_unit setVariable ["AM_Dead",false,true];
				}else{
					["You must be near a hospital to revive someone", AM_COLGROUP_RED] call AM_Core_Message;
				};	
			}else{
					_unit setVariable ["AM_Dead",false,true];
			};	
			};	
		};
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	