/*---------------------------------------------------------------------------
							   Death Handler[Deprecated]
								by DEADdem
## DESCRIPTION:
 	Handles the death of the player
## UPDATES:
  001:
  Creation
  002: 
  Deprecated(Code not formatted in a readable manner and replaced by onPlayerKilled)
---------------------------------------------------------------------------*/
AM_Core_Killed = {
	_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;
	_killer = [_this,1,objNull,[objNull]] call BIS_fnc_param;
	AM_DeadPos = getpos _player;
	AM_DeadP = getMarkerPos "DMV_3_2";
	if(isNil "_killer" || isNull _killer)then{
		_killer = player;
	};
	if(player != player)exitWith{systemChat "Killed but object passed isnt player. Exiting";};

	if(!(_killer in playableUnits))then{
		_deathType = "unknown";
	}else{
		_deathType = "killed";
	};	

	["You Have Been Killed",AM_COLGROUP_RED] call AM_Core_mesasage;
	if (count (AM_EMS_P) == 0) then {AM_EMSOff = true} else {AM_EMSOff = false};
	_namePlayer = name player;
	_nameKiller = name _killer;

	diag_log format[":DEATHLOG: %1(You) was killed by %2 [NOTE: Not to be used for Roleplay]",_namePlayer,_nameKiller];

	player setVariable ["AM_Dead",true,true];
	player setVariable ["AM_Stable",false,true];

	if(isNil "AM_DeadPos")exitWith{};
	
	player setPos AM_DeadPos;
	deleteVehicle _player;
	player enableSimulation false;
	[] call AM_DeadMarker;
	[] execVM "client\hud\init.sqf";


	if (AM_EMSOff) then {
	deathCounter = 30;["EMS IS OFFLINE",AM_COLGROUP_RED] call AM_Core_Message;
	} else {
	deathCounter = 600;["EMS IS ONLINE",AM_COLGROUP_GREEN] call AM_Core_Message;
	};

	player allowDamage false;
	[player,_killer,deathCounter] spawn {
		_killer = _this select 1;
		_counter = _this select 2;

		while{_counter > 0}do{
			if(!(player getVariable "AM_Dead"))exitWith{
				[[player,""],"AM_Core_Animate",true] call BIS_fnc_MP;
				["You have been revived",AM_COLGROUP_GREEN] call AM_Core_Message;
				player allowDamage true;
				player enableSimulation true;
				waitUntil{backpack player == "tf_anprc155"};
				removeBackpack player;
				AM_ACTIONLIST_LockToggle = player addAction ["[<t color='#F7FE2E'>Lock/Unlock Vehicle</t>]",{[(nearestObjects [player,["Car","Air","Boat"],10] select 0)] call AM_Core_ToggleLock}, [], 1, false, true, '', '(nearestObjects [player,["Car","Air","Boat"],5] select 0) in AM_Cars and alive player'];
				deleteMarker "AM_Revivemarker";
				player addUniform "jamie_armaliferpg";
				if (AM_PoliceDuty) then {
					player addUniform "jamie_police2";
					player addHeadgear "AM_PatrolHat";
					player addBackpack "AM_PoliceBelt";
					player addVest "jamie_blue";	
				};
				if (AM_EMSDuty) then {
				 	player addUniform "jamie_paramedic";
				};
			};
			if (_counter == 1) then {
				
				[[player,""],"AM_Core_Animate",true] call BIS_fnc_MP;
				["No-one managed to revive you!",AM_COLGROUP_RED] call AM_Core_Message;
				player allowDamage true;
				player enableSimulation true;
				waitUntil{backpack player == "tf_anprc155"};
				removeBackpack player;
				AM_ACTIONLIST_LockToggle = player addAction ["[<t color='#F7FE2E'>Lock/Unlock Vehicle</t>]",{[(nearestObjects [player,["Car","Air","Boat"],10] select 0)] call AM_Core_ToggleLock}, [], 1, false, true, '', '(nearestObjects [player,["Car","Air","Boat"],5] select 0) in AM_Cars and alive player'];
				deleteMarker "AM_Revivemarker";
				player addUniform "jamie_armaliferpg";
				if (AM_PoliceDuty) then {
					player addUniform "jamie_police2";
					player addHeadgear "AM_PatrolHat";
					player addBackpack "AM_PoliceBelt";
					player addVest "jamie_blue";	
				};
				if (AM_EMSDuty) then {
				 	player addUniform "jamie_paramedic";
				};
				player setpos AM_DeadP;
				titleText[format["You have resurrected"], "PLAIN"];
			};
			if((player getVariable "AM_Stable"))then{
				titleText[format["You have been stabalized by a medic!"], "PLAIN"];
				player setVariable ["AM_Time",_counter,true];
			}else{
				titleText[format["Death Timer: %1",(_counter / 3600) call AM_Core_NumToTime], "PLAIN"];
				_counter = _counter - 1;
			};

			
			sleep 1;
		};
	};

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	