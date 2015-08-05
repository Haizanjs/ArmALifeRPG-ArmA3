/*---------------------------------------------------------------------------
							Seed planting script
								by DEADdem
## DESCRIPTION:
 	Used to plant items at plantations
## UPDATES:
  ONGOING:
	Support for different plants
---------------------------------------------------------------------------*/	
_seedclass = [_this,0,"none",[""]] call BIS_fnc_Param;
if(isNil "_seedclass" || _seedclass == "none")exitWith{};
	_isnearplantation = false;
{
	if(player distance _x < 80)then{
		_isnearplantation = true;
	};
}forEach AM_plantations;
if(!_isnearplantation)exitWith{["You are not near a plantation field",AM_COLGROUP_RED] call AM_Core_message};
switch(_seedclass)do{
	case "tabacco_seeds":{
		_seed = "Oleander1" createVehicle getpos player;
		_seed setVehicleVarName format["plant_%1_%2",player,round(time)];
		AM_MyPlants set [count AM_MyPlants,["tabacco_seeds",0]];
		[_seedclass,-1] call AM_Inventory_AddItem;
		[format["You have planted %1",[_seedclass,"name"] call AM_Inventory_Info], AM_COLGROUP_GREEN] call AM_Core_message;
	};
};