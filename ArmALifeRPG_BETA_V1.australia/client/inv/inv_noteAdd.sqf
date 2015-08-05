/*---------------------------------------------------------------------------
							 	Inventory note
								by DEADdem
## DESCRIPTION:
 	Displays note on UI of the item being picked up
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Inventory_NoteAdd={
	disableSerialization;
	_amountB4 = _this select 0;
	_amountA4 = _this select 1;
	_item  = _this select 2;
	_amount = _this select 3;

	_dialogLB = ((uiNamespace getVariable 'AM_HUD_DLG') displayCtrl 1500);
	
	_indexOfUI = _dialogLB lbAdd format["%1 x%2",[_item,"name"] call AM_Inventory_Info, _amount];
	_dialogLB lbSetPicture [_indexOfUI, format["icons\items\%1",[_item,"icon"] call AM_Inventory_Info]];
	
	AM_NotesAdded set[count(AM_NotesAdded), _indexOfUI];

	if(count AM_NotesAdded > 9)then{
		AM_NotesAdded = [];
		lbClear _dialogLB;
	};
	if(_amountB4 < _amountA4)then{
		_dialogLB lbSetColor  [_indexOfUI, [0,1,0,0.5]];
	}else{
		_dialogLB lbSetColor  [_indexOfUI, [1,0,0,0.5]];
	};
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	