/*---------------------------------------------------------------------------	
						  EMT Functions
						   by DEADdem
## DESCRIPTION:
 	Medical Team related functions
## UPDATES:
  001:
  	Creation				
---------------------------------------------------------------------------*/	

AM_EMT_Diagnose = {
	
};
AM_EMS_Duty = {
	AM_GearPlayer = [uniform player,weapons player,magazines player,items player,backpack player,vest player,headgear player,goggles player];
	call AM_RemoveGear;
	if (AM_PoliceDuty) exitWith {[format["%1 you are a Police Officer",name player],AM_COLGROUP_RED] call AM_Core_Message;};
	AM_EMSDuty = true;
	[[[format["%1 has gone on duty as a EMS!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	player addUniform "jamie_paramedic";
	player addBackpack "B_FieldPack_blk";
	AM_MyLicenses = AM_MyLicenses + ["ems_lic"];

};

AM_EMS_OffDuty = {
	call AM_RemoveGear;
	_uid = getplayeruid player;
	AM_EMSDuty = false;
	[[[format["%1 has gone off-duty as a EMS!",name player]],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	player addUniform (AM_Gearplayer select 0);
	{
		player addWeapon _x;
	}forEach (AM_Gearplayer select 1);

	{
		player addMagazine _x;
	}forEach (AM_Gearplayer select 2);
    {
		player addItem _x;
	}forEach (AM_Gearplayer select 3);
	player addBackpack (AM_Gearplayer select 4);
	player addVest (AM_Gearplayer select 5);
	player addHeadgear (AM_Gearplayer select 6);
	player addGoggles (AM_Gearplayer select 7);
	AM_Gearplayer = [];
	AM_MyLicenses = AM_MyLicenses - ["ems_lic"];
};
AM_EMS_Offline = {
	if ((count (AM_EMS_P)) == 0) then {
	[[["ESU IS OFFLINE",name player],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	} else {
	[[["ESU IS ONLINE",name player],{call AM_Core_Message}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;
	};
};
AM_DeadMarker = {
	_markerobj = createmarker ["AM_Revivemarker", position player];
	_markerobj setmarkershape "Icon";
	"AM_Revivemarker" setmarkertype "Flag";
	"AM_Revivemarker" setmarkercolor "ColorRed";
	"AM_Revivemarker" setmarkersize [1, 1];
	"AM_Revivemarker" setmarkertext "Medical Need (Revive)";
};
