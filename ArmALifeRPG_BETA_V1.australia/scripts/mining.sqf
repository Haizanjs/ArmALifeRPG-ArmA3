_mining = [_this,0,"none",[""]] call BIS_fnc_Param;
_nearMine = false;
{
	if(player distance _x < 70)then {
		_nearMine = true;
	};
}forEach AM_Mine;

if(!_nearMine) exitWith {[format["%1 you are to far away from a mining area", name player],AM_COLGROUP_RED] call AM_Core_Message;};

AM_Mining = false;
switch (_mining) do
	{
	case "Mining_Pick":{
		AM_Mining = true;
		[format["%1 you can mine now!", name player],AM_COLGROUP_GREEN] call AM_Core_Message;
		if (cursorTarget isKindOf "BluntStone1_LC") then {player addaction ['Mine Rock',{[] call AM_Core_Mining},[],1,false,true,'',"cursorTarget isKindOf 'BluntStone1_LC' and AM_Mining"];};
	};
};