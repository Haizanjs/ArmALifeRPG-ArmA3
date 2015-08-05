AM_Shops_ObjectIsHost = {
	_object = [_this,0,objNull, [objNull]] call BIS_fnc_Param;
	if(isNil "_object")exitWith{};
	_return = false;
	_build_shops = [];
	{
		_build_shops set [count _build_shops, (_x select 5)];
	}forEach AM_ShopsList;
	waitUntil{count _build_shops == count AM_ShopsList};
	if(_object in _build_shops)then {
		_return = true;
	};
	_return;
};