AM_Core_JailCell = {
	_cell = [_this,0,0,[0]] call BIS_fnc_Param;
	AM_CUR_SelectedCell = _cell;
	if(!createDialog "AM_JailCell")exitWith{};
};