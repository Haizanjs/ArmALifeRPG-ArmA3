/*---------------------------------------------------------------------------	
							 Value 
						   by DEADdem
## DESCRIPTION:
 	Gets the value of an item
## UPDATES:
  001:
  	Creation				
  002:
  	Moved information functions to 1 function
---------------------------------------------------------------------------*/	
AM_economy_getvalue = {
	_itemworth = [_this,0,"",[""]] call BIS_fnc_Param;
	_valueOfItem = [_itemworth, "price"] call AM_Inventory_Info;
	_return = _valueOfItem;
	_currentSellDiffer= AM_Economy_Selldiff;
	_calculate = (_currentSellDiffer / _valueOfItem)*100*10*2;
	if(_calculate > _valueOfItem)exitWith{
		_return = _valueOfItem - _currentSellDiffer;
		_return;
	};
	if(!isNil "_calculate" and typeName(_calculate) == "SCALAR")then 
	{
		_return = _calculate;
	};

	_return;
};