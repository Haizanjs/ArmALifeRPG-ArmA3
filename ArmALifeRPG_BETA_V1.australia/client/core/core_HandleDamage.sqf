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
    private ["_unit","_selection","_damage","_source","_ammo"];
        _unit = _this select 0;
        _selection = _this select 1;
        _damage = _this select 2;
        _source = _this select 3;
        _ammo = _this select 4;
        _classnames = ["26_cartridge","prpl_B_12Gauge_Slug"];
    if(!isNull _source) then {
        if(_source != _unit) then {
        _damage = false;
            if(_ammo in _classnames)exitWith{ 
                [_unit,_source] spawn AM_Core_Taser;
            };
        };
    };
    _damage;
};

AM_Core_Taser = {
private ["_unit","_shooter"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
_myGuns = "groundWeaponHolder" createVehicle getpos player;
    if(_shooter isKindOf "Man") then
    {
        {
            _myGuns addWeaponCargoGlobal [_x,1];
        }foreach magazines player;
        _unit allowdamage false;
        [[_unit,AM_ANIMSTATES_DEAD],"AM_Core_Animate",true] call BIS_fnc_MP;
        _unit setVariable ["AM_Disabled",true,true];
        [] spawn {
            sleep 5;
            call AM_Core_RagDoll;
        };
        _unit allowdamage true;
    };
};
