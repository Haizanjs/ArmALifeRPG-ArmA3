_item = [_this,0,"",[""]] call BIS_fnc_param;

_ate = 0;
_drank = 0;
switch (_item) do 
{	
	//Hunger
	case "Crab_L": {_ate = 10};
	case "Eel_M": {_ate = 16};
	case "CatFish_M": {_ate = 20};
	case "KoiFish_M": {_ate = 40};
	case "Shark_M": {_ate = 80};
	case "Whale_S": {_ate = 82};
	case "hamburger": {_ate = 20};
	case "french_fries": {_ate = 5};
	//Thirst
	case "Water": {_drank = 40};
	case "Soda": {_drank = 15};
};
_total = AM_Hunger + _ate;
_total1 = AM_Thirst + _drank;
if (_total > 100)then{_total = 100};
if (_total1 > 100)then{_total1 = 100};
AM_Hunger = _total;
AM_Thirst = _total1;
[_item,-1] call AM_Inventory_AddItem;

closeDialog 0;
[] call AM_Inventory_Open;