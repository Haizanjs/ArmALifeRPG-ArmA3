/*---------------------------------------------------------------------------
							 	Car Radar
								by DEADdem
## DESCRIPTION:
 	Sets necessary data on the Radar
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_HUD_UIRadar = {
	disableSerialization;
	if(vehicle player == player)exitWith{}; 
	if(isNil "AM_Radar_LockFast")then{
		AM_Radar_LockFast = 0;
	};
	_target = (nearestObjects [vehicle player, ["Car"], 100]);
	if(count _target > 1)then{
		_target = _target select 1;
		DEBUG_TARGET = _target;
	}else{
		_target = objNull;
	};

	if(isNull (driver _target))then{
		AM_Radar_TargetSpeed = [48,48,48];
	}else{
		_targetSpeed = round(speed(_target));

		_tSpeedArr = toArray(str(_targetSpeed));
		_TSpeedaRR = _tSpeedArr - [45];
		if(_targetSpeed > AM_Radar_LockFast)then{
			AM_Radar_LockFast = _targetSpeed;
		};
		if(count _tSpeedArr == 1)then{
			AM_Radar_TargetSpeed = [48,48,(_tSpeedArr select 0)];
		};
		if(count _tSpeedArr ==2)then{
			AM_Radar_TargetSpeed = [48,(_tSpeedArr select 0),(_tSpeedArr select 1)];
		};
		if(count _tSpeedArr == 3)then{
			AM_Radar_TargetSpeed = _tSpeedArr;
		};
	};

	_patrolSpeed = round(speed(vehicle player));
	_pSpeedArr = toArray(str(_patrolSpeed));
	_pSpeedArr = _pSpeedArr - [45];
	if(count _pSpeedArr == 1)then{
		AM_Radar_Patrol = [48,48,(_pSpeedArr select 0)];
	};
	if(count _pSpeedArr == 2)then{
		AM_Radar_Patrol = [48,(_pSpeedArr select 0),(_pSpeedArr select 1)];
	};
	if(count _pSpeedArr == 3)then{
		AM_Radar_Patrol = _pSpeedArr;
	};
	

	AM_Radar_LFarray = toArray(str(AM_Radar_LockFast));
	AM_Radar_LFarray = AM_Radar_LFarray - [45];
	if(count(AM_Radar_LFarray) == 1)then{
		AM_Radar_LFarray = [48,48,(AM_Radar_LFarray select 0)];
	};	
	if(count(AM_Radar_LFarray) == 2)then{
		AM_Radar_LFarray = [48,(AM_Radar_LFarray select 0),(AM_Radar_LFarray select 1)];
	};


	_dlg = uiNamespace getVariable "AM_HUD_DLG";

	_radar_o1 = _dlg displayCtrl 11;
	_radar_o2 = _dlg displayCtrl 18;
	_radar_o3 = _dlg displayCtrl 19;
	_radars_target = [_radar_o1,_radar_o2,_radar_o3];
	
	_radar_g1 = _dlg displayCtrl 12;
	_radar_g2 = _dlg displayCtrl 13;
	_radar_g3 = _dlg displayCtrl 14;
	_radars_patrol = [_radar_g1,_radar_g2,_radar_g3];
	_radar_r1 = _dlg displayCtrl 16;
	_radar_r2 = _dlg displayCtrl 15;
	_radar_r3 = _dlg displayCtrl 17;
	_radars_lockfast = [_radar_r1,_radar_r2,_radar_r3];
	{
		_ctrl = _radars_target select _foreachindex;
		_ctrl ctrlSetText format["ui\orange\o%1.paa",toString([_x])];
	}forEach AM_Radar_TargetSpeed;
	{
		_ctrl = _radars_patrol select _foreachindex;
		_ctrl ctrlSetText format["ui\green\g%1.pac",toString([_x])];
	}forEach AM_Radar_Patrol;
	{
		_ctrl = _radars_lockfast select _foreachindex;
		_ctrl ctrlSetText format["ui\red\r%1.paa",toString([_x])];
	}forEach AM_Radar_LFarray;
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	