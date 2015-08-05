AM_Inventory_Info = {
	_itemClass = _this select 0;
	_info = _this select 1;
	
	_item = missionNamespace getVariable format["AM_MA_%1",_itemClass];
	_return = "Nil";
	switch(_info)do{
		case "name":
		{
			_return = (_item select 2) select 1;
		};
		case "model":
		{
			_return = (_item select 2) select 0;
		};
		case "price":
		{
			_return = (_item select 2) select 2;
		};
		case "class":
		{
			_return = _item select 0;
		};
		case "script":
		{
			_return = _item select 4;
		};
		case "license":
		{
			_return = _item select 3;
		};
		case "weight":
		{
			_return = _item select 1;
		};
		case "type":
		{
			_return = (_item select 5) select 0;
		};
		case "storage":
		{
			_return = _item select 6;
		};
		case "icon":
		{
			_return = "ico_default.paa";
		};
	};
	_return;
};