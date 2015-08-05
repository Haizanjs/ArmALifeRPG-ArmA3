AM_Core_ItemInFactory = {
	_item = [_this,0,"",[""]] call BIS_fnc_Param;
	_return = [false,0,0];
	if(count AM_MyFactory == 0)then{
		_return;
	}else{
		{
			if((_x select 0)==_item)then{
				_return = [true,_forEachIndex,(_x select 2)];
			};
		}forEach AM_MyFactory;
		_return;
	};	
};