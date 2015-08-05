while {true} do {
sleep 300;
{if (_x isKindOf "Man") then {deleteVehicle _x}} forEach allDead;
call AM_SaveLoadStats;
};