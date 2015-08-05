while {true} do 
{	
	sleep 690;
	if (alive player) then {
		AM_Hunger = AM_Hunger - 2;
		AM_Thirst = AM_Thirst - 2;
			if (AM_Hunger < 2) then {player setdamage 1;[[[format["%1 has died of hunger.Don't let this happen to you aswell!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;};
			if (AM_Thirst < 2) exitWith {player setdamage 1;[[[format["%1 has died of thrist.Don't let this happen to you aswell!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;};
		} else {
		hint "You are dead!"
	};
};