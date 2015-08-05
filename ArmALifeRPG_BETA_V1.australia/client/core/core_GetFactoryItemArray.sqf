AM_Core_GetFactoryItemArray = {
	_facItem = _this select 0;
	_return = [_facItem,AM_FactoryItems] call AM_Inventory_GNI;
	_return;
};