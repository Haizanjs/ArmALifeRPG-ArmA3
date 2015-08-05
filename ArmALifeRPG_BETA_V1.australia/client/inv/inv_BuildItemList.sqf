AM_Inventory_BuildItemList = {
	
	_return = [];
	{
		_return = _return + [_x select 0];
	}forEach AM_Inventory;
	_return;
};