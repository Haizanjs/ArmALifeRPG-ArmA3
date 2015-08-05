
/*---------------------------------------------------------------------------
							  	Decode Message
								by DEADdem
## DESCRIPTION:
 	Creates mesage
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Server_DecodeMessage ={
	_str = "";
	for[{_c=0},{_c<count AM_Messages},{_c=_c+1}]do{
		_item = AM_Messages select _c;
		_msg = _item select 0;
		_col = _item select 1;
		_maint = _msg + _col;
		_str = _str + format["<t color='%1'>%2</t><br/>",_col,_msg];
	};
	_return = _str;
	_return;
};