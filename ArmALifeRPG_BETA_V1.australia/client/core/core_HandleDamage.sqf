/*---------------------------------------------------------------------------	
							Handle Damage
						    by DEADdem
## DESCRIPTION:
  	Handles damage for unit
## UPDATES:
  001:
	Creation
---------------------------------------------------------------------------*/	
AM_Core_HandleDamage = {
	_unit = [_this,0,objNull,[objNull]] call BIS_fnc_Param;
	_selection = _this select 1;
	_damage = _this select 2;
	_source = _this select 3;
	_ammo = _this select 4;
	waitUntil {!AM_HandleDamageLock}; // In case of getting shot with automatic rifles or some shit	
	if(isNil "_ammo")then{
		_ammo = "";
	};
	if(_ammo != "" and _ammo != "26_cartridge") exitWith { // Bullet
		_currentInjuries = player getVariable "AM_MyInjuries";
		_currentInjuries set[count(_currentInjuries), "bullet"];
		if(_selection == "legs")then{
			_random = round(random(100));
			if(_random > 75)then { // 75% Change of severing artery in leg
				_currentInjuries set[count(_currentInjuries), "severed_artery"];
			};
		};
		player setVariable ["AM_MyInjuries",_currentInjuries,true];
	};
	if(_ammo == "")exitWith{ // Blunt force
		_currentInjuries = _unit getVariable "AM_MyInjuries";
		_currentInjuries set[count(_currentInjuries),"blunt"];
		_unit setVariable ["AM_MyInjuries",_currentInjuries, true];

	};
	if(_ammo == "26_cartridge" || _ammo == "prpl_B_12Gauge_Slug")exitWith{ 
	// Taser
		_unit setDamage 0;
		_nil = [] spawn {
			[[player,AM_ANIMSTATES_DEAD],"AM_Core_Animate",true] call BIS_fnc_MP;
			player setVariable ["AM_Disabled",true,true];
			sleep 5;
			player setVariable ["AM_Disabled",false,true];
		};
	};
};