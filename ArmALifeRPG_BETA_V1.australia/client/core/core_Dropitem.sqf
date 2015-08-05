
/*---------------------------------------------------------------------------
							  	Drop Item
								by DEADdem
## DESCRIPTION:
	Drops item from inventory
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_DropItem = {
	_selection = [_this,0,0,[0]] call BIS_fnc_Param;
	_toDrop = [_this,1,"1",[""]] call BIS_fnc_Param;
	_toDrop = parseNumber(_toDrop);
	_dropItem = AM_Inventory select _selection;

	if (AM_Droppingitem) exitWith {hint "You are already droping something wait"};
	if (isNil "_dropItem") exitWith {hint "You have nothing selected"};
	if(_dropItem in AM_CantDrop)exitWith{["You cannot drop this item",AM_COLGROUP_RED] call AM_Core_Message};                                                  
	_itemTyppe = _dropItem select 0;
	_itemIHave = _dropItem select 1;
	if(_itemIHave < _toDrop) then {_toDrop = _itemIHave; ["Dropping all of this item..",AM_COLGROUP_WHITE] call AM_Core_Message;};
	_itemModel = [_itemTyppe,"model"] call AM_Inventory_Info;
	_itemName = [_itemTyppe, "name"] call AM_Inventory_Info;
	AM_Droppingitem = true;
	sleep 2;
	_obj = _itemModel createVehicle position player;
	_obj setVariable ["isAnItem",1,true];
	_obj setVariable ["droparray", [_itemTyppe,_toDrop],true];
	[_itemTyppe, -_toDrop] call AM_Inventory_AddItem;
	[[_obj], "AM_network_pickupaction",true] call BIS_fnc_MP;
	[format["You dropped %1 %2s",_toDrop,_itemName],AM_COLGROUP_GREEN] call AM_Core_Message;
};