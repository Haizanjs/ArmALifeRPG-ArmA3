/*---------------------------------------------------------------------------
							Create Number Array							
								by DEADdem
## DESCRIPTION:
 	Creates an array of numbers based on a number sent in
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_CreateNumberArray = {
	_amount = _this select 0;
	_return  = [];
	for[{_toAdd=0},{_toAdd<_amount},{_toAdd = _toAdd + 1}]do{
		_return = _return + [_toAdd];
	};

	_return;
};