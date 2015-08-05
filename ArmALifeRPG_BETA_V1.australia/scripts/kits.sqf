/*---------------------------------------------------------------------------
							 	  Kits
								by DEADdem
## DESCRIPTION:
 	Preset Kits for the Police Department, EMS or Civilian Organizations
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
_kit = _this select 0;
removeBackpack player; // So backpack doesnt drop


switch(_kit)do{
	case "police_kits_cadet":
	{
		if(AM_CopRank in [1,2])exitWith{systemChat "You are not a Cadet!"};
		player addUniform "jamie_police1";
		player addVest "jamie_blacky2";
		player addBackpack "AM_PoliceBelt";
		player addWeapon "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addHeadgear "AM_Patrolhat";
		systemChat "==== Cadet Kit Equipped ====";
		systemChat "Added: Cadet Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser";
		systemChat "Added: x26 Cartridge x5";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;
	};	
	case "police_kits_officer":
	{
		if(AM_CopRank < 3)exitWith{systemChat "You are not an Officer!"};
		player addUniform "jamie_police2";
		player addVest "jamie_blacky2";
		player addBackpack "AM_PoliceBelt";
		player addWeapon "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addHeadgear "AM_Patrolhat";
		player addmagazines ["RH_17Rnd_9x19_g17",5];
		AM_HolsteredGun_Slot1 = "RH_g19";

		systemChat "==== Officer Kit Equipped ====";
		systemChat "Added: Officer Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser";
		systemChat "Added: x26 Cartridge x5";
		systemChat "Added: Glock 19 [Primary Holster]";
		systemChat "Added: Glock Magazine x5";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;
	};
	case "police_kits_sgt":
	{
		if(AM_Coprank < 4)exitWith{systemChat "You are not a Sgt!"};

		player addUniform "jamie_police2_3";
		player addVest "jamie_blacky2";
		player addHeadgear "AM_Patrolhat";
		player addBackpack "AM_PoliceBelt";
		AM_HolsteredGun_Slot2 = "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addmagazines ["RH_17Rnd_9x19_g17",5];
		AM_HolsteredGun_Slot1 = "RH_g19";

		player addWeapon "prpl_benelli_pgs";
		player addmagazines ["prpl_6Rnd_12Gauge_Slug",5];

		systemChat "==== Sgt. Kit Equipped ====";
		systemChat "Added: Sgt. Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser [Secondary Holster]";
		systemChat "Added: x26 Cartridge x5";
		systemChat "Added: Glock 19 [Primary Holster]";
		systemChat "Added: Glock Magazine x5";
		systemChat "Added: Benelli Super 90 PGS";
		systemChat "Added: 8rnd 12 Guage Slugs";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;

	};
	case "police_kits_lt":
	{
		if(AM_CopRank < 7)exitWith{systemChat "You are not a Sgt!"};
		player addUniform "jamie_police3";
		player addVest "jamie_blacky2";
		player addHeadgear "AM_Patrolhat";
		player addBackpack "AM_PoliceBelt";
		AM_HolsteredGun_Slot2 = "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addmagazines ["RH_17Rnd_9x19_g17",5];
		AM_HolsteredGun_Slot1 = "RH_g19";

		player addWeapon "prpl_benelli_pgs";
		player addmagazines ["prpl_6Rnd_12Gauge_Slug",5];

		systemChat "==== LT. Kit Equipped ====";
		systemChat "Added: LT. Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser [Secondary Holster]";
		systemChat "Added: x26 Cartridge x5";
		systemChat "Added: Glock 19 [Primary Holster]";
		systemChat "Added: Glock Magazine x5";
		systemChat "Added: Benelli Super 90 PGS";
		systemChat "Added: 8rnd 12 Guage Slugs";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;

	};
	case "police_kits_cpt":
	{
		if(AM_CopRank < 8)exitWith{systemChat "You are not a Captain!"};
		player addUniform "jamie_police3_1";
		player addVest "jamie_blacky2";
		player addBackpack "AM_PoliceBelt";
		player addHeadgear "AM_Patrolhat";
		AM_HolsteredGun_Slot2 = "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addmagazines ["RH_17Rnd_9x19_g17",5];
		AM_HolsteredGun_Slot1 = "RH_g19";

		player addWeapon "prpl_benelli_pgs";
		player addmagazines ["prpl_6Rnd_12Gauge_Slug",5];

		systemChat "==== LT. Kit Equipped ====";
		systemChat "Added: LT. Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser [Secondary Holster]";
		systemChat "Added: x26 Cartridge x5";
		systemChat "Added: Glock 19 [Primary Holster]";
		systemChat "Added: Glock Magazine x5";
		systemChat "Added: Benelli Super 90 PGS";
		systemChat "Added: 8rnd 12 Guage Slugs";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;

	};
	case "police_kits_maj":
	{
		if(AM_CopRank < 9)exitWith{systemChat "You are not a Major!"};
		player addUniform "jamie_police4_3";
		player addVest "jamie_blacky2";
		player addBackpack "AM_PoliceBelt";
		AM_HolsteredGun_Slot2 = "Taser_26";
		player addmagazines ["26_cartridge",5];
		player addHeadgear "AM_Patrolhat";
		player addmagazines ["RH_17Rnd_9x19_g17",5];
		AM_HolsteredGun_Slot1 = "RH_g19";

		player addWeapon "prpl_benelli_pgs";
		player addmagazines ["prpl_6Rnd_12Gauge_Slug",5];

		systemChat "==== Major/Chief Kit Equipped ====";
		systemChat "Added: Major Uniform";
		systemChat "Added: Black Police Vest";
		systemChat "Added: Police Duty Belt";
		systemChat "Added: x26 Taser [Secondary Holster]";
		systemChat "Added: x26 Cartridge x5";
		systemChat "Added: Glock 19 [Primary Holster]";
		systemChat "Added: Glock Magazine x5";
		systemChat "Added: Benelli Super 90 PGS";
		systemChat "Added: 8rnd 12 Guage Slugs";
		["repairkit",4] call AM_Inventory_AddItem;
		["handcuffs",5] call AM_Inventory_AddItem;

	};
};
[_kit,-([_kit] call AM_Inventory_GetAmount),true] call AM_Inventory_AddItem;
closeDialog 0;
[] call AM_Inventory_Open;
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	