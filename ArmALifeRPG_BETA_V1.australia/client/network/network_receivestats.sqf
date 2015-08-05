AM_network_receivestats = {
	_stats = _this;
	player enableSimulation false;
	if(count _stats == 0)exitWith{
		[[format["Player %1 Attempted To Join Without Whitelist!",name player], AM_COLGROUP_RED], "AM_Core_Message",true] call BIS_fnc_MP;
		endMission "end5";
	};

	_ranks = _stats select 0;
	_stats = _stats select 1;

	AM_CopRank = _ranks select 0;
	AM_EMSRank = _ranks select 1;
	AM_AdminRank = _ranks select 2;
	AM_DonatorRank = _ranks select 3;

	
	if(!(name player == _stats select 0))exitWith{
		[[format["Player %1 Joining without username %2",name player,_stats select 0], AM_COLGROUP_RED], "AM_Core_Message", true] call BIS_fnc_MP;
		endMission "end5";
	};

	AM_MyLicenses = _stats select 1;
	AM_Inventory = _stats select 2;
	AM_BankCash = _stats select 3;
	player addWeapon ((_stats select 4)select 0);

	{
		player addMagazine _x;
	}forEach (_stats select 5);

	AM_Jailtime = _stats select 6;

    player addUniform ((_stats select 7)select 0);

    {
		player addItem _x;
	}forEach (_stats select 8);

	player addBackpack ((_stats select 9)select 0);
	player addVest ((_stats select 10)select 0);
	player addHeadgear ((_stats select 11)select 0);
	player addGoggles ((_stats select 12)select 0);

	AM_GangArray = _stats select 13;
	call AM_LoadStatsGang;

	AM_GangMember = ((_stats select 14)select 0);
	AM_GangLeader = ((_stats select 14)select 1);
	AM_PoliceDuty = ((_stats select 14)select 2);
	AM_EMSDuty = ((_stats select 14)select 3);
	AM_MyHouses = (_stats select 15);
	
	if(AM_Jailtime > 5)then{
		player setPos (AM_JailCells select (round(random(count(AM_JailCells))))); 
		[] call AM_Core_Jail;
	}else{
		cutText ["","Plain"];
		titleText ["Setting Up Player.......", "BLACK"];
	if (AM_EMSDuty) exitWith 
	{
		player setPos getMarkerPos "spawn_player_ems";
		titleText ["Player Loaded", "PLAIN"];
	};
	if (AM_PoliceDuty) exitWith {
		titleText ["Player Loaded", "PLAIN"];
		player setPos getMarkerPos "spawn_player_police";
	};

	AM_Hunger = 100;
	AM_Thirst = 100;
	player setPos getMarkerPos "spawn_player";
	titleText ["Player Loaded", "PLAIN"];
	[] execVM "client\core\c_looptask.sqf";
	};
	waitUntil{!isNil "AM_Core_ReformatInventory"};
			for[{_i=0},{_i<100},{_i = _i + 1}]do{
			if(isnil "AM_REFORMATCOMPLETE")then{
			[] spawn AM_Core_ReformatInventory;
		};
	};
	player enableSimulation true;
	["Your Stats have been applied!",AM_COLGROUP_WHITE] call AM_Core_Message;
	{if (_x isKindOf "Man") then {deleteVehicle _x}} forEach allDead;
};

