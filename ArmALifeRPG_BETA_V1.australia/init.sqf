cutText ["Server Loading","BLACK OUT"];
enableSaving[false,false];
[] execVM "configuration\defines.sqf";
AM_ServerMode = 0;
waitUntil {!isNil "AM_DEFINES_DONE"};
systemChat "Checking for a server..";
if(!isNil "AM_ServerVersion")then{
	systemChat "Server Detected!";
	AM_ServerMode=1;
};
waitUntil {!isNil "AM_ServerMode"};
systemChat "Initialising...";
if(AM_ServerMode == 1)then{
titleText[format["Welcome to %1! Loading your character now..",AM_CommunityName],"BLACK"];
}else{
hint "Loading local mode";
AM_SESSION_LoggedIn = true;
};
[] execVM "client\inv\invfunc.sqf";
waitUntil {!isNil "AM_Inventory_DONE"};
setTerrainGrid 50;
[] execVM "client\shop\shopfunc.sqf";
[] execVM "client\police\pd_func.sqf";
[] execVM "client\core\basic_fnc.sqf";
[] execVM "client\core\display.sqf";
if (isdedicated) then { 
onPlayerDisconnected {{if (_x isKindOf "Man") then {deleteVehicle _x}} forEach allDead};
};
AM_CORE_GetRoot = {
    _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};

waitUntil{backpack player == "tf_anprc155"};
removeBackpack player;
waitUntil{uniform player == "U_C_Poloshirt_stripped"};
_unit = player;
_unit addUniform "jamie_armaliferpg";
player addRating 99999999;