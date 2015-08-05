/*---------------------------------------------------------------------------
								Add Factory
								by DEADdem
## DESCRIPTION:
 	Adds an item to the factory
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_AddFactory = {
	_index = [_this,0,999,[0]] call BIS_fnc_Param;
	if(isNil "_index" || _index == 999 || _index == -1)exitWith{["Please select an item!",AM_COLGROUP_RED] call AM_Core_Message};
	if(AM_FactoryActive)exitWith{["You cannot store items while the factory is active!",AM_COLGROUP_RED] call AM_Core_Message};
	systemchat "NOTE: Better functionality will be added soon";
	if(AM_FactoryLock)exitWith{systemChat "LOCK: Please wait while your request is processed"};
	AM_FactoryLock = true;
	_frominv = AM_Inventory select _index;
	_invitem = _frominv select 0;
	_invAmount = _frominv select 1;
	if(!(_invItem in AM_factoryWhitelist))exitWith{["That item cannot be processed",AM_COLGROUP_RED] call AM_Core_Message; AM_FactoryLock = false;};
	_item_facinfo = [_invItem] call AM_Core_ItemInFactory;
	_hasInfac = _item_facinfo select 0;
	if(!_hasInfac)then{
		AM_MyFactory set[count(AM_MyFactory),[_invItem,_invAmount,0]];
	}else{
		_facIndex = _item_facinfo select 1;
		_facSlot  = AM_MyFactory select _facIndex;	
		_facAmount = _facSlot select 1;
		_facProgress = _facSlot select 2;
		_facAddAmount = _facAmount + _invAmount;
		_facSlot = [_invItem,_facAddAmount,0];
		AM_MyFactory set[_facIndex,_facSlot];
	};
	[_invItem,-_invAmount] call AM_Inventory_AddItem;
	AM_FactoryLock = false;
	closeDialog 0;
	[] call AM_Core_OpenFactory;

};