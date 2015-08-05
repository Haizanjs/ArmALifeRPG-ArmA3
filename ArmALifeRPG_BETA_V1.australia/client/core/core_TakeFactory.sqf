AM_Core_Takefactory = {
	_index = [_this,0,999,[0]] call BIS_fnc_Param;	
	if(isNil "_index" || _index == 999 || _index == -1)exitWith{["Please select an item!",AM_COLGROUP_RED] call AM_Core_Message};
	if(AM_FactoryActive)exitWith{["You cannot take items while the factory is active!",AM_COLGROUP_RED] call AM_Core_Message};
	if(AM_FactoryLock)exitWith{systemChat "LOCK: Please wait while your request is processed"};
	AM_FactoryLock = true;		

	_takeSlot = AM_MyFactory select _index;
	_factorySlot = [(_takeSlot select 0)] call AM_Core_GetFactoryItemArray;

	_class = (AM_FactoryItems select _factorySlot) select 1;

	_amountIn = _takeSlot select 1;
	_progress = _takeSlot select 2;
	if(_progress > 2 && _progress != 100)exitWith{["You cannot take processing items",AM_COLGROUP_RED] call AM_Core_Message; AM_FactoryLock = false;};

	if(_amountIn < 10 || _amountIn == 10)then{
		[_class,_amountIn] call AM_Inventory_AddItem;
		AM_MyFactory set[_index,-1];
		AM_MyFactory = AM_MyFactory-[-1];
	}else{
		[_class,_amountIn] call AM_Inventory_AddItem;
		AM_MyFactory set[_index,[_class,(_amountIn - _amountIn),_progress]];
		AM_MyFactory set[_index,-1];
		AM_MyFactory = AM_MyFactory-[-1];
		lbClear 1500;
	};
	AM_FactoryLock = false;
	closeDialog 0;
	[] call AM_Core_OpenFactory;
};