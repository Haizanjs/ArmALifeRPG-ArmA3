_fishing = [_this,0,"none",[""]] call BIS_fnc_Param;
_nearFishing = false;
{
	if(player distance _x < 150)then {
		_nearFishing = true;
	};
}forEach AM_Fishing;

if(!_nearFishing) exitWith {[format["%1 you are too far away form a fishing area.",name player],AM_COLGROUP_RED] call AM_Core_Message;};

_counterOff = round (random 9);
_fishOff = AM_FishingOffshore select _counteroff;

switch (_fishing) do
{
case "Fishingpole":{
	if(Vehicle Player IsKindOf "Ship") then
	{
	AM_Fishcaught = 0;
	_maxfish = 2;
	_totalamount = round (random _maxfish);
	titleText[format["Fishing....."], "PLAIN"];
	closedialog 0;
	sleep 3;
		if (_totalamount > 0) then 
		{
			[format["You caught %2 %1!", _fishOff,_totalamount],AM_COLGROUP_GREEN] call AM_Core_Message;
			AM_Fishcaught = AM_Fishcaught + _totalamount;
			AM_Fishcaught = (floor(AM_Fishcaught));
			[_fishOff,AM_Fishcaught] call AM_Inventory_AddItem;		
		} else {
			["You didn't catch anything.Try again",AM_COLGROUP_RED] call AM_Core_Message;		
		};
	};
};
};