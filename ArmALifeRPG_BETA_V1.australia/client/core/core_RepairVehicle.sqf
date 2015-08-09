AM_Core_Repairvehicle = {
	if(isNil "AM_InteractTarget")exitWith{};	
	if(!(AM_InteractTarget in AM_SERVERVAR_CARS))exitWith{};
	_obj = AM_InteractTarget;
	if((["repairkit"] call AM_Inventory_GetAmount) == 0)exitWith{["You do not have a repair kit",AM_COLGROUP_Red] call AM_Core_Message};
	["Your car is being repaired.... ",AM_COLGROUP_Green] call AM_Core_Message;
	sleep 5;
	_obj setDamage 0;
};

AM_Unflip ={
	if(isNil "AM_InteractTarget")exitWith{};	
	if(!(AM_InteractTarget in AM_SERVERVAR_CARS))exitWith{};
	_car = AM_InteractTarget;
	if ((["carjack"] call AM_Inventory_GetAmount) == 0)exitWith {["You do not have a Vehicle jack",AM_COLGROUP_Red] call AM_Core_Message};
	_car setVectorUp surfaceNormal position _car;
	[format["You have flipped your vehicle %1", name player],AM_COLGROUP_Green] call AM_Core_Message;
};


AM_Unload = {
	if(!(AM_InteractTarget in AM_SERVERVAR_CARS))exitWith{};
	_target = AM_InteractTarget;
	_players = nearestObjects[player,["Man"],5] select 0;
		{
			if (_target in AM_SERVERVAR_CARS || _players getvariable "AM_Cuffed") exitWith {
				while{(_players getVariable "AM_Cuffed")}do{
				[[_players,AM_ANIMSTATES_Cuffed],"AM_Core_Animate",true,true] call BIS_fnc_MP;	
				sleep 16;
			};
		};
		if (_target in AM_SERVERVAR_CARS) then {
		moveOut _x;
		};
	}foreach crew AM_InteractTarget;
};