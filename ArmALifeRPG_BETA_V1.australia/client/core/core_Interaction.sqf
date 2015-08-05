AM_Interaction_Player = {
AM_ACTIONLIST_LockToggle = player addAction ["[<t color='#F7FE2E'>Lock/Unlock Vehicle</t>]",{[(nearestObjects [player,["Car","Air","Boat"],10] select 0)] call AM_Core_ToggleLock}, [], 1, false, true, '', '(nearestObjects [player,["Car","Air","Boat"],5] select 0) in AM_Cars and alive player'];
AM_ACTIONLIST_CarStorage = player addAction ["<t color='#00FF00'>Access Car Storage</t>", {[(nearestObjects[player,["Pole_F"],10]) select 0] call AM_Core_StorageOpen},[],1,false,true,'','(nearestObjects[player,["Pole_F"],10]) select 0 in AM_StoragePoles'];
AM_ACTIONLIST_MinePlant = player addAction  ["Pick Plant", {[cursorTarget] call AM_Core_MinePlant},[],1,false,true,'','[cursorTarget] call AM_Core_PlantIsMineable && [cursorTarget] call AM_Core_PlantIsMine'];


AM_ACTIONLIST_CopyDuty = player addAction ["Go on duty", {[] call AM_PD_Duty}, [], 1, false, true, '', '!AM_PoliceDuty && AM_CopRank > 0 and player distance police_duty < 5'];
AM_ACTIONLIST_OffCopyDuty = player addAction ["Go off duty", {[] call AM_PD_OffDuty}, [], 1, false, true, '', 'AM_PoliceDuty && AM_CopRank > 0 and player distance police_duty < 5'];
AM_ACTIONLIST_House = player addAction ["Open Hosing Menu", {_this select 3 call AM_Housing_Menu}, [nearestObjects[player,AM_HousingTypes,20] select 0], 1, false, true, '', 'typeOf(nearestObjects[player,AM_HousingTypes,20] select 0) in AM_HousingTypes'];
AM_ACTIONLIST_EMS = player addAction ["Go on duty", {[] call AM_EMS_Duty}, [], 1, false, true, '',"!AM_EMSDuty && AM_EMSRank > 0 and player distance ems < 5"];
AM_ACTIONLIST_OffEMS = player addAction ["Go off duty", {[] call AM_EMS_OffDuty}, [], 1, false, true, '',"AM_EMSDuty && AM_EMSRank > 0 and player distance ems < 5"];
};
