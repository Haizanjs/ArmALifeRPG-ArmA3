Recompile = {[] execVM "client\core\basic_fnc.sqf"};
AM_COREFILES = [
	["AM_Company_Info","client\company\company_Info.sqf"],
	["AM_Company_GetSlot","client\company\company_GetSlot.sqf"],
	["AM_Company_PlayerInfo","client\company\company_PLayerInfo.sqf"],
	["AM_Company_Management","client\company\company_management.sqf"],
	["AM_Company_RankInfo","client\company\company_rankinfo.sqf"],
	["AM_Company_MyInfo","client\company\company_myinfo.sqf"],
	["AM_Company_ManageRanks","client\company\company_manageranks.sqf"],
	["AM_Company_CreateRank","client\company\company_createrank.sqf"],
	["AM_Company_UpdateRank","client\company\company_Updaterank.sqf"],
	["AM_Company_DeleteRank","client\company\company_DeleteRank.sqf"],
	["AM_Company_ShopInfo","client\company\company_ShopInfo.sqf"],
	["AM_Company_ManageStores","client\company\company_ManageStores.sqf"],
	["AM_Company_UpdateShopInfo","client\company\company_UpdateShopInfo.sqf"],
	["AM_Company_TransferMenu","client\company\company_TransferMenu.sqf"],
	["AM_Company_Transfer","client\company\company_Transfer.sqf"],
	["AM_Company_MakePublic","client\company\company_MakePublic.sqf"],
	["AM_Company_UpdateShops","client\company\company_UpdateShops.sqf"],


	["AM_Int_Open","client\interactionmenu\int_Open.sqf"],
	["AM_Int_ShowCtrlByIDC","client\interactionmenu\Int_ShowCtrlByIDC.sqf"],
	["AM_Int_MenuUpdate","client\interactionmenu\int_MenuUpdate.sqf"],

	["AM_PlayerShop_Access","client\pshop\ps_access.sqf"],
	["AM_PlayerShop_AccessAction","client\pshop\ps_accessaction.sqf"],
	["AM_PlayerShop_Buy","client\pshop\ps_buy.sqf"],

	["AM_Inventory_AddItem","client\inv\inv_AddItem.sqf"],
	["AM_Inventory_BuildItemList","client\inv\inv_BuildItemList.sqf"],
	["AM_Inventory_GetAmount","client\inv\inv_GetAmount.sqf"],
	["AM_Inventory_getMAItem.sqf","client\inv\inv_GetMAItem.sqf"],
	["AM_Inventory_GetSlot","client\inv\inv_GetSlot.sqf"],
	["AM_Inventory_GNI","client\inv\inv_GNI.sqf"],
	["AM_Inventory_HasItem","client\inv\inv_HasItem.sqf"],
	["AM_Inventory_Info","client\inv\inv_Info.sqf"],
	["AM_Inventory_License","client\inv\inv_License.sqf"],
	["AM_Inventory_LicName","client\inv\inv_LicName.sqf"],
	["AM_Inventory_Open","client\inv\inv_Open.sqf"],
	["AM_Inventory_UseItem","client\inv\inv_UseItem.sqf"],
	["AM_Inventory_AddWeapon","client\inv\inv_AddWeapon.sqf"],
	["AM_Inventory_AddItemAction","client\inv\inv_AddItemAction.sqf"],
	["AM_Inventory_NoteAdd","client\inv\inv_noteAdd.sqf"],
	["AM_Inventory_GiveItem","client\inv\inv_give.sqf"],


	["AM_Shops_Buy","client\shop\shops_Buy.sqf"],
	["AM_Shops_sell","client\shop\shops_Sell.sqf"],
	["AM_Shops_GetSlot","client\shop\shops_GetSlot.sqf"],
	["AM_Shops_Info","client\shop\shops_Info.sqf"],
	["AM_Shops_ObjectisHost","client\shop\shops_ObjectIsHost.sqf"],
	["AM_Shops_RefreshShop","client\shop\shops_RefreshShop.sqf"],
	["AM_Shops_OpenShop","client\shop\Shops_OpenShop.sqf"],

	["AM_EMS_Treat","client\emt\ems_Treat.sqf"],
	["AM_EMS_FNC","client\emt\ems_func.sqf"],

	["AM_Core_BoundPlayer","client\core\core_BoundPlayer.sqf"],
	["AM_Core_Baghead","client\core\core_Baghead.sqf"],
	["AM_Core_DragClient","client\core\core_DragClient.sqf"],
	["AM_Core_ForceCar","client\core\core_ForceCar.sqf"],
	["AM_Core_CarInfo","client\core\core_CarInfo.sqf"],
	["AM_Core_Animate","client\core\core_Animate.sqf"],
	["AM_Core_Killed","client\core\core_Killed.sqf"],
	["AM_Core_AccessTrunk","client\core\core_AccessTrunk.sqf"],
	["AM_Core_AddFactory","client\core\core_AddFactory.sqf"],
	["AM_Core_AssignPlates","client\core\core_AssignPlates.sqf"],
	["AM_Core_ATMOpen","client\core\core_ATMOpen.sqf"],
	["AM_Core_ATMProcess","client\core\core_ATMProcess.sqf"],
	["AM_Core_CheckJailCode","client\core\core_CheckJailCode.sqf"],
	["AM_Core_CheckLoginInfo","client\core\core_CheckLoginINfo.sqf"],
	["AM_Core_CreateNumberArray","client\core\core_CreateNumberArray.sqf"],
	["AM_Core_Createvehicle","client\core\core_createVehicle.sqf"],
	["AM_Core_DecodeMessage","client\core\core_DecodeMessage.sqf"],
	["AM_Core_DropItem","client\core\core_DropItem.sqf"],
	["AM_Core_GetBuildingID","client\core\core_GetBuildingID.sqf"],
	["AM_Core_GetFactoryItemArray","client\core\core_GetFactoryItemArray.sqf"],
	["AM_Core_GetFirst","client\core\core_GetFirst.sqf"],
	["AM_Core_GetLogin","client\core\core_GetLogin.sqf"],
	["AM_Core_GetNear","client\core\core_GetNear.sqf"],
	["AM_Core_GetPlantByGameClass","client\core\core_GetPlantByGameClass.sqf"],
	["AM_Core_GetPlateInfo","client\core\core_GetPlateInfo.sqf"],
	["AM_Core_Interact","client\core\core_Interact.sqf"],
	["AM_Core_IsClass","client\core\core_IsClass.sqf"],
	["AM_Core_ItemInFactory","client\core\core_ItemInFactory.sqf"],
	["AM_Core_Jail","client\core\core_Jail.sqf"],
	["AM_Core_JailCell","client\core\core_Jailcell.sqf"],
	["AM_Core_JailEscape","client\core\core_JailEscape.sqf"],
	["AM_Core_KeyHandler","client\core\core_KeyHandler.sqf"],
	["AM_Core_Message","client\core\core_Message.sqf"],
	["AM_Core_MinePlant","client\core\core_MinePlant.sqf"],
	["AM_Core_MRES","client\core\core_MRES.sqf"],
	["AM_Core_NumToTime","client\core\core_NumToTime.sqf"],
	["AM_Core_Openfactory","client\core\core_OpenFactory.sqf"],
	["AM_Core_PlantIsMine","client\core\core_PlantIsMine.sqf"],
	["AM_Core_PlantIsMineable","client\core\core_PlantIsMineable.sqf"],
	["AM_Core_ProcessFactory","client\core\core_ProcessFactory.sqf"],
	["AM_Core_Recompile","client\core\core_Recompile.sqf"],
	["AM_Core_RegisterUser","client\core\core_RegisterUser.sqf"],
	["AM_Core_repairVehicle","client\core\core_RepairVehicle.sqf"],
	["AM_Core_RetreiveVehicle","client\core\core_RetreiveVehicle.sqf"],
	["AM_Core_SpeedcamHandler","client\core\core_SpeedCamHandler.sqf"],
	["AM_Core_StorageOpen","client\core\core_StorageOpen.sqf"],
	["AM_Core_StoreVehicle","client\core\core_StoreVehicle.sqf"],
	["AM_Core_StrToArr","client\core\core_StrToArr.sqf"],
	["AM_Core_StrToNum","client\core\core_StrToNum.sqf"],
	["AM_Core_Take","client\core\core_Take.sqf"],
	["AM_Core_TakeFactory","client\core\core_TakeFactory.sqf"],
	["AM_Core_ToggleLock","client\core\core_ToggleLock.sqf"],
	["AM_Core_TrunkStore","client\core\core_TrunkStore.sqf"],
	["AM_Core_TrunkTake","client\core\core_TrunkTake.sqf"],
	["AM_Core_Handledamage", "client\core\Core_Handledamage.sqf"],
	["AM_Core_Ragdoll", "client\core\Core_Ragdoll.sqf"],
	["AM_Core_WorkSalary", "client\core\Core_Worksalary.sqf"],
	["AM_Core_AdminMenu", "client\core\Core_Admin.sqf"],
	["AM_Core_Holster", "client\core\Core_Holster.sqf"],
	["AM_Core_Ticket", "client\core\Core_Ticket.sqf"],
	["AM_Core_Gang", "client\core\Core_Gang.sqf"],
	["AM_Core_Job", "client\core\Core_Job.sqf"],
	["AM_Core_Mining", "client\core\Core_Mining.sqf"],
	["AM_Core_Housing", "client\core\Core_House.sqf"],
	["AM_Core_House", "client\core\Core_House.sqf"],
	["AM_Core_Skill", "client\core\Core_Skill.sqf"],
	["AM_Core_BuildingID", "client\core\Core_BuildingID.sqf"],
	["AM_Core_Interaction", "client\core\Core_Interaction.sqf"],
	["AM_Core_ReformatInventory", "client\core\Core_ReformatInventory.sqf"],
	["AM_Core_Preview", "client\core\Core_Preview.sqf"],

	["AM_Housing_Menu", "client\housing\house_menu.sqf"],
	["AM_HUD_UIRadar","client\hud\hud_UIRadar.sqf"],

	["AM_network_BlockedUser","client\network\network_BlockedUser.sqf"],
	["AM_network_ChangeName","client\network\network_ChangeName.sqf"],
	["AM_network_initFail","client\network\network_initFail.sqf"],
	["AM_network_LicensePlateReceive","client\network\network_LicensePlatereceive.sqf"],
	["AM_network_openloginsys","client\network\network_OpenLoginSys.sqf"],
	["AM_network_OpenStorage","client\network\network_OpenStorage.sqf"],
	["AM_network_ReceiveJailTime","client\network\network_ReceiveJailTime.sqf"],
	["AM_network_ReceiveHouse","client\network\network_ReceiveHouseRequest.sqf"],
	["AM_network_ReceiveStats.sqf","client\network\network_ReceiveStats.sqf"],
	["AM_network_ReceiveTransfer","client\network\network_ReceiveTransfer.sqf"],
	["AM_network_ReceiveItem","client\network\network_ReceiveItem.sqf"],
	["AM_network_ReceiveWarrants","client\network\network_ReceiveWarrants.sqf"],
	["AM_network_RetreiveVehicle","client\network\network_RetreiveVehicle.sqf"],
	["AM_network_SetupSession","client\network\network_SetupSession.sqf"],
	["AM_network_StoredVehicle","client\network\network_StoredVehicle.sqf"],
	["AM_network_ReceiveTicket","client\network\network_ReceiveTicket.sqf"],
	["AM_network_ReceiveTicketAction","client\network\network_ReceiveTicketAction.sqf"],
	["AM_network_PickupAction","client\network\network_PickupAction.sqf"]
];
_timeStarted = time;
_fnCount = 0;
{
	_item = _x;
	_fnName = _item select 0;
	_fnFile = _item select 1;
	_handle = [] execVM _fnFile;
	waitUntil {scriptDone _handle};
	_fnCount = _fnCount + 1;
	titleText [format["Loading Function (%1)",_fnName], "PLAIN"];
}forEach AM_COREFILES;
waitUntil {_fnCount == (count AM_COREFILES)};
[format["Loaded %1 Functions in %2sec",(count AM_COREFILES),(time - _timeStarted)], AM_COLGROUP_WHITE] call AM_Core_message;
sleep 1;
titleText ["Functions Loaded","BLACK"];
AM_CORE_COMPLETE = true;
[] spawn AM_Core_SpeedCamHandler;
//call AM_Core_GetLogin;
if(isMultiplayer)then{
	[] call AM_Load;
}else{
	player setpos getMarkerPos "spawn_player";	
};
[] execVM "client\core\c_loop.sqf";
call AM_Core_Skills;
AM_SetupVars = {};
/*---------------------------------------------------------------------------
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited
---------------------------------------------------------------------------*/