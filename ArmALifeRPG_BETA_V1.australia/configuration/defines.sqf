/*---------------------------------------------------------------------------
                        Variable Configurations
                        by DEADdem and Taliban
## DESCRIPTION:
    Variables to be used in the mission
## UPDATES:
  ONGOING:
    Variable creation for new features.
  001:
    Item Array optimizations
---------------------------------------------------------------------------*/
AM_HousingTypes = ["Land_HouseA","Land_HouseB","Land_HouseA1","Land_HouseB1"];
AM_HousingPrices = [
    ["Land_HouseA",160000],
    ["Land_HouseB",200000],
    ["Land_HouseA1",180000],
    ["Land_HouseB1",250000]
];
if(isServer || AM_ServerMode == 0)then{
    {
        _x setVariable ["AM_LockedHouse",true,true];
        _x setVariable ["AM_OwnerHouse", [objNull, ""], true];
    }forEAch nearestObjects[source,AM_HousingTypes,10000];
};
ems_spawn_air setPosATL [36283.7,12780.3,22];
ems_air setPosATL [36287.4,12767.4,19];

AM_HolsteredGun_Slot1 = "";
AM_HolsteredGun_Slot2 = "";
AM_DeadState=false;
AM_EMTDuty = false;
//Had to add this?
AM_NotesAdded                = [];
AM_MyHouses                  = [];

AM_EMSDuty                   = false;
AM_JailTime                  = 0;
AM_DEFINES_DONE              = 0;
AM_VehiclePack_Common        = "AM_V_data\";
AM_VehiclePack_Common_Plates = AM_VehiclePack_Common + "plates\";
AM_VehiclePack_Common_Common = AM_VehiclePack_Common + "common\";
AM_CommunityName             = "ArmA Life RPG";
AM_CodePack_ItemScripts      = "scripts\"; // Keep mission file sided while in beta, move to PBO at later date
AM_ClientVersion             = 0.01;
AM_Init_Failed               = false;
AM_Economy_TicketPrice       = 100;
AM_COLGROUP_GREEN            = "#58FA58";
AM_COLGROUP_RED              = "#FF0000";
AM_COLGROUP_WHITE            = "#FFFFFF";
AM_Economy_VehiclePrice      = 100;
AM_GroundItems               = [];
AM_Economy_LicensePrice      = 100;
AM_Economy_ItemPrice         = 100;
AM_Economy_WeaponPrice       = 100;
AM_SpawnPoints_Main          = [4396.64,4066.8,0.00143909];
AM_PaycheckAmount            = 30;

AM_RadarVehicles = [
    "AM_12Charger_P_P",
    "AM_09Tahoe_P_P",
    "AM_09Tahoe_U_T",
    "AM_15Charger_P_P",
    "AM_F350_P_P",
    "AM_08Commodore_P_P",
    "AM_14Redline_P_P"
];

AM_Info_StringsByKey = [
    ["WINDOWSKEY", "Opens Inventory"],
    ["E","Opens Interaction Menu"],
    ["L","Locks / Unlocks player owned car"],
    ["Ctrl + 1", "Holsters / Unholsters Weapon in Primary Holster"],
    ["Ctrl + 2", "Holsters / Unholsters Weapon in Secondary Holster"],
    ["Shift + 1/2", "Displays what is occupying holster"]
];
AM_Session_LoggedIN = true;
AM_Servervar_setup = false;
AM_Hired = false;
AM_Jobisactive = false;
AM_Jobwaittime = false;
AM_Droppingitem = false;
AM_JobMoney = 1;
AM_Salary = 0;
AM_Allowance = 0;
AM_Hunger = 100;
AM_Thirst = 100;
AM_Stamina = 0;
AM_Shooting = 0;
AM_Strength = 0;
AM_VehicleS = 0;
AM_pickdura = 0;
AM_ClientRunningQuery=false;
AM_CantDrop = [
    "police_kits_lt",
    "police_kits_officer",
    "police_kits_sgt",
    "police_kits_cadet",
    "police_kits_maj",
    "police_kits_cpt"
];
AM_Gearplayer = [];
AM_Jobplayer = [];
AM_Joblist = [];
AM_GangMember = false;
AM_GangLeader = false;
AM_JobTimer = false;
AM_GangArray = [];
AM_IDdeletegang = 0;
AM_IDdeletejob = 0;
AM_GangData = [];
AM_JobData = [];
AM_Joblooking = [];
AM_Cur_House = [];
AM_Fishing =
[
    getMarkerPos "FishingOffshore",
    getMarkerPos "FishingOffshore_1",
    getMarkerPos "FishingOffshore_2",
    getMarkerPos "FishingSea",
    getMarkerPos "FishingSea_1",
    getMarkerPos "FishingSea_1_1"
];

AM_FishingOffshore =
[
    "Crab",
    "Eel",
    "CatFish",
    "KoiFish",
    "Shark",
    "Whale",
    "Gold_In",
    "Oil",
    "Shoe",
    "Shark"
];

AM_Mine =
[
    getMarkerPos "Mining",
    getMarkerPos "Mining_1",
    getMarkerPos "Mining_1_1",
    getMarkerPos "Mining_1_1_1"
];

AM_Ore =
[
    "Emerald",
    "Diamond",
    "Ruby",
    "Coal",
    "Gold",
    "Iron",
    "Diamond",
    "Copper",
    "Emerald",
    "Rocks"
];


AM_Economy_SellDiff = 30;
AM_BankCash         = 1700;
AM_SleepSafe        = 0.5;
AM_PlantsByClass=[
    // [GAME CLASS, CLASS OF ITEM ADDED WHEN PICKED UP PLANT]
    ["Oleander1","tabacco_leaves"]
];

AM_Plants = [
    //[VIRT ITEM, GROW TIMER(HIGHER=FASTER)]
    ["tabacco_leaves", 0.5]
];

AM_FactoryItems = [
    //[Item put in, item get, percent added every second]
    ["tabacco_leaves","tabacco",0.8],
    //Mining
    ["Rocks","Cement",1.0],
    ["Coal","Oil_P",1.0],
    ["Copper","Copper_In",0.9],
    ["Iron","Iron_In",0.8],
    ["Gold","Gold_In",0.7],
    ["Emerald","E_Stone",0.6],
    ["Diamond","D_Stone",0.5],
    ["Ruby","R_Stone",0.4],
    //Fishing
    ["Crab","Crab_L",1.5],
    ["Eel","Eel_M",1.4],
    ["CatFish","CatFish_M",1.3],
    ["KoiFish","KoiFish_M",1.2],
    ["Shark","Shark_M",1.1],
    ["Whale","Whale_S",1.0],
    ["Oil","Oil_P",0.9]
];
AM_FactoryWhitelist = [];

{
    AM_FactoryWhitelist set[count(AM_FactoryWhitelist), (_x select 0)];
}forEach AM_FactoryItems;
AM_MyFactory =[]; // [VIRT ITEM, AMOUNT, PROGRESS]

AM_FactoryLock = false;
AM_PickupLock = false;
AM_ActionLock = false;
AM_CompanyLock = false;
AM_FactoryActive = false;
AM_IsBlinded = false;
AM_CUR_HouseIsOwned = false;
AM_CUR_HouseSold = false;
player setVariable ["AM_Cuffed",false,true];
AM_ANIMSTATES_CUFFED = "UnaErcPoslechVelitele2";
AM_ANIMSTATES_SURRENDER = "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
AM_ANIMSTATES_DEAD = "Mk201_Dead";
player getVariable "AM_Dead";
player getVariable "AM_Stable";
AM_Inventory = [];
AM_MyLicenses = ["none"];
AM_Cars = [];
AM_Messages = [];
AM_PoliceDuty = false;
AM_MyPlants = [];
AM_Plantations = [
    plantation_1,
    plantation_1_1,
    plantation_1_1_1,
    plantation_1_1_2
];

_playerNames = [];
AM_playerNames = _playerNames;
_handler = ["AM_iconUpdate", "onEachFrame", "AM_Core_displayNames"] call BIS_fnc_addStackedEventHandler;
AM_EMS_P = [];
AM_HandleDamageLock = false;
// Companies
AM_MyCompany = "testcompany";
AM_ActiveCompanies = [
    ["testcompany", "Test Company", 500,

        [
            ["DEADdem", "Founder", false]
        ],

        [
            ["Founder", 20000, true],
            ["Employee", 200, false]
        ],

        [
            ["user_shop_1","Test User Shop", 5000, [["testitem1",5], ["testitem2",3]], 500],
            ["user_shop_2","Test User Shop", 5000, [["testitem1",5], ["testitem2",3]], 500],
            ["user_shop_3","Test User Shop", 5000, [["testitem1",5], ["testitem2",3]], 500]
        ],
        [
            ["testitem1",5]
        ]
    ]
];

AM_PlayerShops = [
    ["user_shop_1",user_shop_1,"user_store_1_marker", 500000],
    ["user_shop_2",user_shop_2,"user_store_2_marker", 500000],
    ["user_shop_3",user_shop_2,"user_store_2_marker", 500000]
];

AM_Injuries = [
    ["bullet_wound", "Gunshot Wound"],
    ["burn","Burns"],
    ["lacerations", "Lacerations"],
    ["blunt", "Blunt Damage Wounds"],
    ["brokenbones", "Broken Bones"],
    ["severed_artery", "Severed Artery"],
    ["bleeding", "Bleeding"]
];
AM_BloodLeft = 10000;
player setVariable ["AM_MyInjuries", [], true];
AM_SpeedCams = [
    speedcam1
];
AM_Inprison = false;
AM_JailCells = [
    [35759.9,13255.9,0.00143909],
    [35761.7,13259.9,0.00143909],
    [35763.6,13264.3,0.00143909]
];

AM_PrisonCells = [
    [35775.2,13253.9,0.00143909],
    [35773.2,13249.5,0.00143909]
];
AM_Core_COMPLETE = false;
AM_PlantationItems = [];

/*
AM_PlayerArrays = [
    civ1,
    civ2,
    civ3,
    civ4,
    civ5,
    civ6,
    civ7,
    civ8,
    civ9,
    civ10,
    civ11,
    civ12,
    civ13,
    civ14,
    civ15,
    civ16,
    civ17,
    civ18,
    civ19,
    civ20
];
*/
AM_BuyingItem = false;
player setVariable ["AM_Masked",false,true];
AM_MinSpeedCam = 80;
AM_PoliceMenu_Citations = [
    ["Speeding (5-10 over)", 400],
    ["Speeding (11-20 over)", 800],
    ["Speeding (20+ over)", 1000],
    ["DUI/DWI", 700],
    ["Reckless Driving", 1000],
    ["Illegal Passengers", 500],
    ["Unlicensed Driving", 800],
    ["Failure to Give Way", 300],
    ["Other 1", 50],
    ["Other 2", 100],
    ["Other 3", 150]
];

AM_PoliceMenu_Options = [
    ["Give Citation", "['cite'] call AM_PD_PoliceDialog"],
    ["Restrain/Unrestrain", "['restrain'] call AM_PD_PoliceDialog"],
    ["Imprison","['imprison'] call AM_PD_PoliceDialog"]
];

AM_Licenses = [
    ["none","",0],
    ["police","Police License", 300],
    ["drivers", "Drivers License",300],
    ["police_auth","police_auth License", 300],
    ["boat","Boat License", 300],
    ["taxi","Taxi License", 300],
    ["pistol","Pistol License", 300],
    ["rifle_bolt","Bolt Action Rifle License", 300],
    ["rifle_semi","Semi-Auto Rifle License", 300],
    ["truck","Truck License", 300]

];

AM_WarrantsMenu_Types = [
    "Arrest",
    "Ticket",
    "Questioning"
];

/*---------------------------------------------------------------------------
                                    EMT
---------------------------------------------------------------------------*/
AM_EMT_Injuries = [


];
AM_WarrantsMenu_Status=[
    "Open",
    "Closed"
];



_scr = [] execVM "configuration\item_defines.sqf";
waitUntil {
  scriptDone _scr;
  
};

_fn_CreateItemArray = {
    _arr = _this select 0;
    call compile format["missionNamespace setVariable [""AM_MA_%1"",%2]",_arr select 0,_arr];
};
AM_StoragePoles = [
    car_storage_1,
    car_storage_2,
    car_storage_3,
    car_storage_north
];
_cop_kits = [
    "police_kits_cadet",
    "police_kits_officer",
    "police_kits_sgt",
    "police_kits_lt", 
    "police_kits_maj"
];
_copweapon = [
    "hlc_rifle_Bushmaster300",
    "29rnd_300BLK_STANAG_T",
    "cz75",
    "16Rnd_9x19_cz",
    "Taser_26",
    "26_cartridge",
    "G_Sport_Greenblack",
    "handcuffs",
    "repairkit",
    "FirstAidKit"
];
_genStore =
[
"Mining_Pick",
"Fishingpole",
"rope",
"repairkit",
"B_AssaultPack_khk",
"B_AssaultPack_dgtl",
"B_AssaultPack_rgr",
"B_AssaultPack_sgg",
"B_AssaultPack_blk",
"B_AssaultPack_cbr",
"B_AssaultPack_mcamo",
"B_AssaultPack_ocamo",
"B_Kitbag_rgr",
"B_Kitbag_mcamo",
"B_Kitbag_sgg",
"B_Kitbag_cbr",
"B_TacticalPack_rgr",
"B_TacticalPack_mcamo",
"B_TacticalPack_ocamo",
"B_TacticalPack_blk",
"B_TacticalPack_oli",
"B_FieldPack_blk",
"B_FieldPack_ocamo",
"B_FieldPack_oucamo",
"B_FieldPack_oucamo",
"B_Bergen_sgg",
"B_Bergen_mcamo",
"B_Bergen_rgr",
"B_Bergen_blk",
"B_Kitbag_sgg",
"B_Kitbag_cbr",
"B_Carryall_oli",
"B_Carryall_khk",
"B_Carryall_cbr",
"B_Carryall_ocamo",
"FirstAidKit",
"headbag"
];

_marStore = [
"Crab_L",
"Eel_M",
"CatFish_M",
"KoiFish_M",
"Shark_M",
"Whale_S",
"Water"
];

_gunStore =
[
    "cz75",
    "16Rnd_9x19_cz",
    "sw659",
    "14Rnd_9x19_sw",
    "mak",
    "8Rnd_9x18_Mak",
    "m1911",
    "kimber",
    "kimber_nw",
    "7Rnd_45cal_m1911",
    "m9",
    "m9c",
    "15Rnd_9x19_M9",
    "vz61",
    "20Rnd_32cal_vz61",
    "tt33",
    "8Rnd_762_tt33",
    "mk2",
    "10Rnd_22LR_mk2",
    "p226",
    "p226s",
    "15Rnd_9x19_SIG",
    "vp70",
    "18Rnd_9x19_VP",
    "mateba",
    "6Rnd_44_Mag",
    "python",
    "mp412",
    "6Rnd_357_Mag",
    "bull",
    "bullb",
    "6Rnd_454_Mag",
    "ttracker",
    "ttracker_g",
    "6Rnd_45ACP_Mag",
    "fnp45",
    "fnp45t",
    "15Rnd_45cal_fnp",
    "fn57",
    "fn57_g",
    "fn57_t",
    "20Rnd_57x28_FN",
    "gsh18",
    "18Rnd_9x19_gsh"
    ];
_handgun = [
    "kimber_nw",
    "7Rnd_45cal_m1911",
    "cz75",
    "16Rnd_9x19_cz",
    "sw659",
    "14Rnd_9x19_sw",
    "mp412",
    "6Rnd_357_Mag",
    "fnp45t",
    "15Rnd_45cal_fnp",
    "fn57_t",
    "20Rnd_57x28_FN",
    "gsh18",
    "18Rnd_9x19_gsh"
];
_colStore =
[
    "U_alr_Priest",
    "U_alr_Suit",
    "U_alr_SuitB",
    "U_alr_Suit_1",
    "U_alr_Suit_2",
    "U_alr_Suit_4",
    "U_alr_Suit_5",
    "U_alr_Suit_6",
    "U_alr_Suit_7",
    "U_alr_Suit_8",
    "U_alr_Suit_9",
    "U_alr_Suit_10",
    "U_alr_Suit_11",
    "jamie_armaliferpg",
    "U_C_Journalist",
    "U_PMC_GTShirt_DJeans",
    "U_PMC_GTShirt_SJeans",
    "U_PMC_BlkTShirt_DJeans",
    "U_PMC_BlkTShirt_SJeans",
    "U_PMC_BluTShirt_SJeans",
    "U_PMC_WTShirt_DJeans",
    "U_PMC_BluePlaidShirt_BeigeCords",
    "U_PMC_RedPlaidShirt_DenimCords",
    "U_PMC_BlackPoloShirt_BeigeCords",
    "U_PMC_BluPolo_BgPants",
    "U_PMC_BgPolo_GrnPants",
    "U_PMC_BlckPolo_BgPants",
    "U_PMC_BlckPolo_BluPants",
    "U_PMC_BluPolo_GrnPants",
    "U_PMC_BrnPolo_BgPants",
    "U_PMC_BrnPolo_BluPants",
    "U_PMC_GrnPolo_BgPants",
    "U_PMC_WhtPolo_BgPants",
    "U_PMC_WhtPolo_BluPants",
    "U_PMC_WhtPolo_GrnPants"
];

_colShopHats = [
    "H_Cap_press",
    "Kio_Afro_Hat",
    "kio_vfv_mask",
    "Kio_Capital_Hat",
    "Kio_No1_Hat",
    "Kio_Pirate_Hat",
    "Kio_Hat",
    "Kio_Santa_Hat",
    "Kio_Spinning_Hat",
    "kio_skl_msk",
    "kio_skl_msk_red",
    "kio_skl_msk_grn",
    "crg_bunny",
    "crg_zorro",
    "cowboyhat",
    "H_Bandanna_gry",
    "H_Bandanna_blu",
    "H_Bandanna_cbr",
    "H_Bandanna_khk",
    "H_Bandanna_mcamo",
    "H_Bandanna_sgg",
    "H_Bandanna_sand",
    "H_Bandanna_camo",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_blk",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_camo",
    "H_Booniehat_khk",
    "H_Booniehat_mcamo",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Booniehat_dgtl",
    "H_StrawHat",
    "H_StrawHat_dark",
    "H_Hat_blue",
    "H_Hat_brown",
    "H_Hat_checker",
    "H_Hat_grey",
    "H_Hat_tan",
    "H_Cap_blk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_grn_BI",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_surfer",
    "H_Cap_tan"
];

_colShopPolo = [
    "jamie_polored",
    "jamie_poloredjeans",
    "jamie_poloredblack",
    "jamie_poloorange",
    "jamie_poloorangejeans",
    "jamie_poloorangeblack",
    "jamie_poloyellow",
    "jamie_poloyellowjeans",
    "jamie_poloyellowblack",
    "jamie_pololightgreen",
    "jamie_pololightgreenjeans",
    "jamie_pololightgreenblack",
    "jamie_pologreen",
    "jamie_pologreenjeans",
    "jamie_pologreenblack",
    "jamie_pololightblue",
    "jamie_pololightbluejeans",
    "jamie_pololightblueblack",
    "jamie_poloblue",
    "jamie_polobluejeans",
    "jamie_poloblueblack",
    "jamie_polopurple",
    "jamie_polopurplejeans",
    "jamie_polopurpleblack",
    "jamie_polobrown",
    "jamie_polobrownjeans",
    "jamie_polobrownblack",
    "jamie_pologrey",
    "jamie_pologreyjeans",
    "jamie_pologreyblack",
    "jamie_polowhite",
    "jamie_polowhitejeans",
    "jamie_polowhiteblack",
    "jamie_poloblack",
    "jamie_poloblackjeans",
    "jamie_poloblackblack",
    "jamie_polocookiemonster",
    "jamie_polohellokitty",
    "jamie_polohellokitty1",
    "jamie_polospongebob",
    "jamie_polopatrickstar",
    "jamie_polodino",
    "jamie_polomoon",
    "jamie_poloapple",
    "jamie_polosecurity",
    "jamie_poloqantas",
    "jamie_poloaustralia",
    "jamie_polocanda",
    "jamie_poloamerica",
    "jamie_polofuck",
    "jamie_pololove",
    "jamie_polococacola",
    "jamie_poloface"
];

_colShopMemes = [
    "jamie_doge",
    "jamie_illuminati",
    "jamie_kappa",
    "jamie_jeff",
    "jamie_mexicantroll",
    "jamie_drunk",
    "jamie_married",
    "jamie_avengers",
    "jamie_shield",
    "jamie_marvel",
    "jamie_minion",
    "jamie_nike",
    "jamie_Adidas",
    "jamie_pancake",
    "jamie_yaoming",
    "jamie_Snoopy",
    "jamie_Coco",
    "jamie_Ciggy",
    "jamie_twitch",
    "jamie_polopsisyndicate",
    "jamie_timmac",
    "jamie_ReclaimJoey",
    "jamie_Feature",
    "jamie_Butts",
    "jamie_polomrbong",
    "jamie_polostunt"
];

_kGap = [
    "jamie_fuckit",
    "jamie_monstercat",
    "jamie_smile",
    "jamie_tux",
    "jamie_poloangelo",
    "Kio_Pirate_Hat",
    "Kio_Hat",
    "Kio_Spinning_Hat",
    "cowboyhat",
    "H_Bandanna_mcamo"
];

_suitNtie = [
    "U_alr_Priest",
    "U_alr_Suit",
    "U_alr_SuitB",
    "U_alr_Suit_1",
    "U_alr_Suit_2",
    "U_alr_Suit_4",
    "U_alr_Suit_5",
    "U_alr_Suit_6",
    "U_alr_Suit_7",
    "U_alr_Suit_8",
    "U_alr_Suit_9",
    "U_alr_Suit_10",
    "U_alr_Suit_11",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "G_Sport_Red",
    "G_Sport_Blackyellow",
    "G_Sport_Checkered",
    "G_Sport_Blackred",
    "G_Sport_BlackWhite",
    "G_Sport_Greenblack",
    "G_Squares",
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_Aviator"
];

_DCMCP =[
    "U_C_Journalist",
    "U_PMC_GTShirt_DJeans",
    "U_PMC_GTShirt_SJeans",
    "U_PMC_BlkTShirt_DJeans",
    "U_PMC_BlkTShirt_SJeans",
    "U_PMC_BluTShirt_SJeans",
    "U_PMC_WTShirt_DJeans",
    "U_PMC_BluePlaidShirt_BeigeCords",
    "U_PMC_RedPlaidShirt_DenimCords",
    "U_PMC_BlackPoloShirt_BeigeCords",
    "U_PMC_BluPolo_BgPants",
    "U_PMC_BgPolo_GrnPants",
    "U_PMC_BlckPolo_BgPants",
    "U_PMC_BlckPolo_BluPants",
    "U_PMC_BluPolo_GrnPants",
    "U_PMC_BrnPolo_BgPants",
    "U_PMC_BrnPolo_BluPants",
    "U_PMC_GrnPolo_BgPants",
    "U_PMC_WhtPolo_BgPants",
    "U_PMC_WhtPolo_BluPants",
    "U_PMC_WhtPolo_GrnPants"
];

_exportImport = [
    "tabacco",
    "Cement",
    "Copper_In",
    "Iron_In",
    "Gold_In",
    "E_Stone",
    "D_Stone",
    "R_Stone",
    "Crab_L",
    "Eel_M",
    "CatFish_M",
    "KoiFish_M",
    "Shark_M",
    "Whale_S",
    "Oil_P"
];

_seedshop = [
    "tabacco_seeds"
];

_SHcars = [
    "AM_94Civic_White",
    "AM_94Civic_Black",
    "AM_94Civic_Red"
];

_BoatShop = ["B_Lifeboat"];

_ARshop =
[
"B_Heli_Light_01_F"
];

_blackMR = [
    "cz75",
    "16Rnd_9x19_cz",
    "sw659",
    "14Rnd_9x19_sw",
    "mak",
    "8Rnd_9x18_Mak",
    "m1911","kimber",
    "kimber_nw",
    "7Rnd_45cal_m1911",
    "m9",
    "m9c",
    "15Rnd_9x19_M9"
];

_recShop = [
    "AM_15Charger_P_P",
    "fn57",
    "20Rnd_57x28_FN",
    "26_cartridge",
    "Taser_26"
];


if(!isMultiplayer)then{
    AM_CopRank = 9;
    AM_EMSRank = 6;
    AM_DonatorRank = 9;
    AM_AdminRank = 7;
    systemChat "Using Local Ranks";
};

_copCars = [
    "AM_12Charger_P_P",
    "AM_09Tahoe_P_P",
    "AM_09Tahoe_U_T",
    "AM_15Charger_P_P",
    "AM_F350_P_P"
];

_ace_medical = [
    "ACE_atropine",
    "ACE_fieldDressing",
    "ACE_elasticBandage",
    "ACE_quikclot",
    "ACE_bloodIV",
    "ACE_epinephrine",
    "ACE_morphine",
    "ACE_packingBandage",
    "ACE_personalAidKit",
    "ACE_plasmaIV",
    "ACE_salineIV",
    "ACE_surgicalKit",
    "ACE_tourniquet"
];
_ems_air = [
    "ARMSCor_A109_Civ",
    "dezkit_b206_rescue"
];

_ems_cars = [
    "AM_AmbulancE_White"
];

_fvendor = [
	"hamburger",
	"french_fries",
	"Soda"
];

_suburban = [
    "AM_15SuburbanRed",
    "AM_15SuburbanOrange",
    "AM_15SuburbanYellow",
    "AM_15SuburbanLightGreen",
    "AM_15SuburbanGreen",
    "AM_15SuburbanLightBlue",
    "AM_15SuburbanBlue",
    "AM_15SuburbanNavy",
    "AM_15SuburbanFuchsia",
    "AM_15SuburbanPink",
    "AM_15SuburbanViolet",
    "AM_15SuburbanBeige",
    "AM_15SuburbanBrown",
    "AM_15SuburbanGold",
    "AM_15SuburbanSilver",
    "AM_15SuburbanGrey",
    "AM_15SuburbanCharcoal",
    "AM_15SuburbanBlack",
    "AM_15SuburbanCream",
    "AM_15SuburbanWhite", 

    "AM_Trailblazer_White",
    "AM_Trailblazer_Silver",
    "AM_Trailblazer_Grey",
    "AM_Trailblazer_Black",
    "AM_Trailblazer_Red",
    "AM_Trailblazer_Yellow",
    "AM_Trailblazer_Green",
    "AM_Trailblazer_Blue",
    "AM_Trailblazer_Pink",
    "AM_Trailblazer_Orange",
    "AM_Trailblazer_Purple"
];

_escalade = [
    "AM_EscaladeRed",
    "AM_EscaladeOrange",
    "AM_EscaladeYellow",
    "AM_EscaladeLightGreen",
    "AM_EscaladeGreen",
    "AM_EscaladeLightBlue",
    "AM_EscaladeBlue",
    "AM_EscaladeNavy",
    "AM_EscaladeFuchsia",
    "AM_EscaladePink",
    "AM_EscaladeViolet",
    "AM_EscaladeBeige",
    "AM_EscaladeBrown",
    "AM_EscaladeGold",
    "AM_EscaladeSilver",
    "AM_EscaladeGrey",
    "AM_EscaladeCharcoal",
    "AM_EscaladeBlack",
    "AM_EscaladeCream",
    "AM_EscaladeWhite"
];

_wrangler = [
    "AM_WranglerRed",
    "AM_WranglerOrange",
    "AM_WranglerYellow",
    "AM_WranglerLightGreen",
    "AM_WranglerGreen",
    "AM_WranglerLightBlue",
    "AM_WranglerBlue",
    "AM_WranglerNavy",
    "AM_WranglerFuchsia",
    "AM_WranglerPink",
    "AM_WranglerViolet",
    "AM_WranglerBeige",
    "AM_WranglerBrown",
    "AM_WranglerGold",
    "AM_WranglerSilver",
    "AM_WranglerGrey",
    "AM_WranglerCharcoal",
    "AM_WranglerBlack",
    "AM_WranglerCream",
    "AM_WranglerWhite"
];

_gtr = [
    "AM_GTR_White",
    "AM_GTR_Grey",
    "AM_GTR_Black",
    "AM_GTR_Red",
    "AM_GTR_Orange",
    "AM_GTR_Blue",
    "AM_GTR_Green"
];

_dodge = [
    "AM_15Charger_Black",
    "AM_15Charger_Red",
    "AM_15Charger_White",
    "AM_15Charger_Green"
];

_saleen = [
    "AM_S331_Black",
    "AM_S331_White"
];

_honda = [
    "AM_94Civic_White",
    "AM_94Civic_Black",
    "AM_94Civic_Red"
];

_holden = [
    "AM_08Commodore_Black",     
    "AM_08Commodore_White",     
    "AM_08Commodore_Red",       
    "AM_08Commodore_Green",
    "AM_14Redline_White",       
    "AM_14Redline_Red", 
    "AM_14Redline_Black"
];

_landrover = [
    "AM_LandRover_White",
    "AM_LandRover_Silver",
    "AM_LandRover_Grey",
    "AM_LandRover_Black",
    "AM_LandRover_Red",
    "AM_LandRover_Orange",
    "AM_LandRover_Yellow",
    "AM_LandRover_Green",
    "AM_LandRover_Blue",
    "AM_LandRover_Pink",
    "AM_LandRover_Purple"
];

_audi = [
    "AM_Q7_White",
    "AM_Q7_Silver",
    "AM_Q7_Grey",
    "AM_Q7_Black",
    "AM_Q7_Red",
    "AM_Q7_Orange",
    "AM_Q7_Yellow",
    "AM_Q7_Green",
    "AM_Q7_Blue",
    "AM_Q7_Pink",
    "AM_Q7_Purple"
];

_bmw = [
    "AM_X5_White",
    "AM_X5_Silver",
    "AM_X5_Black",
    "AM_X5_Red",
    "AM_X5_Orange",
    "AM_X5_Yellow",
    "AM_X5_Green",
    "AM_X5_Blue"
];

AM_ShopsList = [

// Shop class - [Shopname,buy,sell],[whitelist(not implemented)], object,gunspawn,carspawn
    //["recruit_shop", ["Police Recruit Shop", _recShop, _recShop], ["CAR"], pdcars, pdcarspawn, pdcars],
    ["cop_kits", ["Police Kits",_cop_kits, _cop_kits], ["WEAP"],cop_kits, objNull, objNull],
    ["cop_cars", ["Police Cars",_copCars, _copCars], ["WEAP"],copcar_spawn, copcar_spawn, copcar_spawn],
    //EMS
    ["ems_air", ["E.M.S Air Unit Shop",_ems_air, _ems_air], ["CAR"],ems_spawn_air, ems_spawn_air, ems_spawn_air],  
    ["pharmacy", ["Medical Equipment",_ace_medical, _ace_medical], ["WEAP"],objNull, objNull, objNull],
    ["ems_cars", ["E.M.S Car Shop",_ems_cars, _ems_cars], ["CAR"],ems_spawn_cars, ems_spawn_cars, ems_spawn_cars],

    ["export_shop", ["Export Yard",_exportImport,_exportImport], ["WEAP"],export_shop_cherno, objNull, objNull],
    //Gun Store
    ["seeds_store", ["Seed Farm",_seedshop,_seedshop], ["WEAP"],seeds_store, objNull, objNull],
    ["pistol_store", ["Handgun Shop",_handgun,_handgun], ["WEAP"],pistol_store_spawn, pistol_store_spawn,objNull],
    ["gun_store_kamenka", ["Handgun Shop",_handgun,_handgun], ["WEAP"],gun_store_kamenka_spawn, gun_store_kamenka_spawn,objNull],


    //Car Store
    ["chevy", ["Chevrolet Dealer", _suburban, _suburban], ["CAR"], chevy, chevy_spawn, chevy_spawn],
    ["cadi", ["Cadilac Dealer", _escalade, _escalade], ["CAR"], cadi, cadi_spawn, cadi_spawn],
    ["jeep", ["Jeep Dealer", _wrangler, _wrangler], ["CAR"], jeep, jeep_spawn, jeep_spawn],
    ["nissan", ["Nissan Dealer", _gtr, _gtr], ["CAR"], nissan, nissan_spawn, nissan_spawn],
    ["dodge", ["Dodge Dealer", _dodge, _dodge], ["CAR"], dodge, dodge_spawn, dodge_spawn],
    ["saleen", ["Saleen Dealer", _saleen, _saleen], ["CAR"], saleen, saleen_spawn, saleen_spawn],
    ["holden", ["Holden Dealer", _landrover, _landrover], ["CAR"], landrover, landrover_spawn, landrover_spawn],
    ["landrover", ["Rangerover Dealer", _honda, _honda], ["CAR"], honda, honda_spawn, honda_spawn],
    ["audi", ["Honda Dealer", _audi, _audi], ["CAR"], audi, audi_spawn, audi_spawn],
    ["bmw", ["BMW Dealer", _bmw, _bmw], ["CAR"], bmw, bmw_spawn, bmw_spawn],
    ["honda", ["Honda Dealer", _honda, _honda], ["CAR"], honda, honda_spawn, honda_spawn],


    //Black Market
    ["black_market", ["Black Market", _blackMR, _blackMR], ["WEAP"], black_market_spawn, black_market_spawn, black_market],
    //Boat Store
    ["boat_shop_balota", ["Boat Shop", _BoatShop, _BoatShop], ["CAR"], boat_shop_balota, boatspawn_balota, boat_shop_balota],
    ["boat_shop_cherno", ["Boat Shop", _BoatShop, _BoatShop], ["CAR"], boat_shop_cherno, boatspawn_cherno, boat_shop_cherno],
    //Air Shop
    ["airshop_NW", ["Air Shop", _ARshop, _ARshop], ["CAR"], airshop_NW, airshopspawn_NW, airshop_NW],
    //Clothing Stores
    ["kamenka_gap", ["Kamenka Gap", _kGap,_kGap], ["CAR"], noSpawn, noSpawn, noSpawn],
    ["suitntie", ["Suit 'n Tie 'n Face", _suitNtie,_suitNtie], ["CAR"], noSpawn, noSpawn, noSpawn],
    ["dcmc", ["DC's Military Cosplay", _DCMCP,_DCMCP], ["CAR"], noSpawn, noSpawn, noSpawn],
    //Food vendors
    ["food_vendor", ["Murder King",_fvendor,_fvendor], ["ITEM"], objNull, objNull, food_vendor],
    
    //General Store
    ["gen_store_kamenka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_kamenka],
    ["gen_store_komarovo", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_komarovo],
    ["gen_store_balota", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_balota],
    ["gen_store_cherno", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_cherno],
    ["gen_store_elektro", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_elektro],
    ["gen_store_kamyshovo", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_kamyshovo],
    ["gen_store_threevalleys", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_threevalleys],
    ["gen_store_solnichniy", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_solnichniy],
    ["gen_store_nizhnoye", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_nizhnoye],
    ["gen_store_berezino", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_berezino],
    ["gen_store_dubrovka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_dubrovka],
    ["gen_store_novylug", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_novylug],
    ["gen_store_gvozdno", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_gvozdno],
    ["gen_store_novysobor", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_novysobor],
    ["gen_store_starysobor", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_starysobor],
    ["gen_store_kabanino", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_kabanino],
    ["gen_store_vybor", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_vybor],
    ["gen_store_guglovo", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_guglovo],
    ["gen_store_mogilevka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_mogilevka],
    ["gen_store_nadezhdino", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_nadezhdino],
    ["gen_store_zelenogorsk", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_zelenogorsk],
    ["gen_store_myshkino", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_myshkino],
    ["gen_store_sosnovka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_sosnovka],
    ["gen_store_pustoshka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_pustoshka],
    ["gen_store_pogorevka", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_pogorevka],
    ["gen_store_staroye", ["General Store",_genStore,_genStore], ["ITEM"], objNull, objNull, gen_store_staroye],
    //Market
    ["mar_store_kamenka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_komarovo", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_balota", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_cherno", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_elektro", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_kamyshovo", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_threevalleys", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_solnichniy", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_nizhnoye", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_berezino", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_dubrovka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_novylug", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_gvozdno", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_novysobor", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_starysobor", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_kabanino", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_vybor", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_guglovo", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_mogilevka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_nadezhdino", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_zelenogorsk", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_myshkino", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_sosnovka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_pustoshka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_pogorevka", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull],
    ["mar_store_staroye", ["Market",_marStore,_marStore], ["ITEM"], objNull, objNull, objNull]
];

AM_ACTIONLIST_LockToggle = player addAction ["[<t color='#F7FE2E'>Lock/Unlock Vehicle</t>]",{[(nearestObjects [player,["Car","Air","Boat"],10] select 0)] call AM_Core_ToggleLock}, [], 1, false, true, '', '(nearestObjects [player,["Car","Air","Boat"],5] select 0) in AM_Cars and alive player'];
AM_ACTIONLIST_CarStorage = player addAction ["<t color='#00FF00'>Access Car Storage</t>", {[(nearestObjects[player,["Pole_F"],10]) select 0] call AM_Core_StorageOpen},[],1,false,true,'','(nearestObjects[player,["Pole_F"],10]) select 0 in AM_StoragePoles'];
AM_ACTIONLIST_MinePlant = player addAction  ["Pick Plant", {[cursorTarget] call AM_Core_MinePlant},[],1,false,true,'','[cursorTarget] call AM_Core_PlantIsMineable && [cursorTarget] call AM_Core_PlantIsMine'];


AM_ACTIONLIST_CopyDuty = player addAction ["Go on duty", {[] call AM_PD_Duty}, [], 1, false, true, '', '!AM_PoliceDuty && AM_CopRank > 0 and player distance police_duty < 5'];
AM_ACTIONLIST_OffCopyDuty = player addAction ["Go off duty", {[] call AM_PD_OffDuty}, [], 1, false, true, '', 'AM_PoliceDuty && AM_CopRank > 0 and player distance police_duty < 5'];
AM_ACTIONLIST_House = player addAction ["Open Hosing Menu", {_this select 3 call AM_Housing_Menu}, [nearestObjects[player,AM_HousingTypes,20] select 0], 1, false, true, '', 'typeOf(nearestObjects[player,AM_HousingTypes,20] select 0) in AM_HousingTypes'];
AM_ACTIONLIST_EMS = player addAction ["Go on duty", {[] call AM_EMS_Duty}, [], 1, false, true, '',"!AM_EMSDuty && AM_EMSRank > 0 and player distance ems < 5"];
AM_ACTIONLIST_OffEMS = player addAction ["Go off duty", {[] call AM_EMS_OffDuty}, [], 1, false, true, '',"AM_EMSDuty && AM_EMSRank > 0 and player distance ems < 5"];

__optimization__set = 0;
systemChat "Processing Optimization to Item Array..";
/*---------------------------------------------------------------------------
Full explaination..
The old way we had it, Every time we used a shop for instance, it would index the
Item array 4-6 times per item. This caused it to lag.

If we put each item into the mission namespace, We can grab all the data directly from there
in one single hit. It indexes a single item array instead of 250.
---------------------------------------------------------------------------*/
{
    _arr = _x;
    [_arr] call _fn_CreateItemArray;
    __optimization__set = __optimization__set + 1;
}forEach AM_Items;
{
    _object = _x select 1;
    _object addAction ["Access Shop", {(_this select 3) call AM_PlayerShops_Access}, [_x select 0, _x select 1]];

}foreAch AM_PlayerShops;
waitUntil{__optimization__set == count(AM_Items)};
systemChat "Processing Optimization done";
AM_DEFINES_DONE = 1;
// Just make the function-defined variables

waitUntil{AM_Core_COMPLETE};
AM_NumArray_Sixty = [61] call AM_Core_CreateNumberArray;
AM_NumArray_TwentyFour = [25] call AM_Core_CreateNumberArray;
/*---------------------------------------------------------------------------
                            Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited
---------------------------------------------------------------------------*/
