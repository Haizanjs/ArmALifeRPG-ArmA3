AM_core_StrToArr = {
	// USED ONLY FOR MYSQL RETURNS
	_string = [_this,0,"",[""]] call BIS_fnc_Param;
	_return = call compile format["%1",_string];	
	_return;
};
AM_InventorySave = {
    _string = format ["%1", AM_Inventory];_data = toArray(_string);AM_Inventory = _data;

    _newstring = format ["%1", AM_GangArray];_newgang = toArray(_newstring);AM_GangArray = _newgang;    
};

AM_LoadStats = {
	_newdata = toString AM_Inventory; _newarray = call compile _newdata;AM_Inventory = _newarray;
};

AM_LoadStatsGang ={
	_gangdata = toString AM_GangArray; _gangarray = call compile _gangdata;AM_GangArray = _gangarray;
};

AM_SaveLoadStats = {
	call AM_InventorySave;
	call AM_Save;
	call AM_LoadStats;
	call AM_LoadStatsGang;
};
AM_RemoveGear = {
	removeAllItems player;   
	removeAllWeapons player;   
	removeBackpack player;   
	removeGoggles player;  
	removeHeadgear player;   
	removeAllItemsWithMagazines player; 
	removeVest player;
	removeUniform player;
};