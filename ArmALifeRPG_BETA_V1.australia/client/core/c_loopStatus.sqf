while {alive player} do
{
	if(player getVariable "ACE_isUnconscious") then {
	_myGuns = "groundWeaponHolder" createVehicle getpos player;
		{
			_myGuns addWeaponCargoGlobal [_x,1];	
		}foreAch weapons player;
		{
			_myGuns addWeaponCargoGlobal [_x,1];
		}foreach magazines player;
		{
			_invClass = _x select 0;
			_invAmount = _x select 1;

			[_invClass,str(_invAmount)] call AM_Core_DropItem;
		}forEach AM_Inventory;
	};
	sleep 1.5;
};