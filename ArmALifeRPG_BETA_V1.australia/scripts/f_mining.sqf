_act = ((_this select 3) select 0);

_counter = round (random 9);
_ore = AM_Ore select _counter;

if (_act == "MaxMining5") then 
{
	if (AM_Mining) then {
		AM_OreGathered = 0;
		_maxore = 5;
		_totalamount = round (random _maxore);
		titleText[format["Mining..."], "PLAIN"];
		AM_Mining = false;
		sleep 3;
		if (_totalamount > 0) then 
		{
			[format["You gathered %1 %2", _ore,_totalamount],AM_COLGROUP_GREEN] call AM_Core_Message;
		} else {
		    [format["Unlucky %1 you didn't mine anything",name player],AM_COLGROUP_RED] call AM_Core_Message;
		};
		AM_OreGathered = AM_OreGathered + _totalamount;
		AM_OreGathered = (floor(AM_OreGathered));

		[_ore,AM_OreGathered] call AM_Inventory_AddItem;
		AM_Mining = true;
	} else {
		[format["%1 you do not have a pick to mine this area",name player],AM_COLGROUP_RED] call AM_Core_Message;
	};
};

if (_act == "MaxMining10") then 
{
	if(AM_Mining) then
	{
		AM_OreGathered = 0;
		_maxore = 10;
		_totalamount = round (random _maxore);
		titleText[format["Mining..."], "PLAIN"];
		sleep 3;
		if (_totalamount > 0) then 
		{
		    [format["You Got %2 %1! Wow keep it up.", _ore,_totalamount],AM_COLGROUP_GREEN] call AM_Core_Message;
		} else {
		    [format["Unlucky %1 you didn't mine anything",name player],AM_COLGROUP_RED] call AM_Core_Message;
		};
		AM_OreGathered = AM_OreGathered + _totalamount;
		AM_OreGathered = (floor(AM_OreGathered));


		[_ore,AM_OreGathered] call AM_Inventory_AddItem;
	} else {
	    [format["%1 you do not have a Mining Pick pls buy one at the Mining store",name player],AM_COLGROUP_RED] call AM_Core_Message;
	};
};

if (_act == "MaxMining15") then 
{
	if(AM_Mining) then
	{
		AM_OreGathered = 0;
		_maxore = 15;
		_totalamount = round (random _maxore);
		titleText[format["Mining..."], "PLAIN"];
		sleep 3;
		if (_totalamount > 0) then 
		{
		[format["You Got %2 %1! Wow keep it up.", _ore,_totalamount],AM_COLGROUP_GREEN] call AM_Core_Message;
		} else {
		[format["Unlucky %1 you didn't mine anything",name player],AM_COLGROUP_RED] call AM_Core_Message;
		};
		AM_OreGathered = AM_OreGathered + _totalamount;
		AM_OreGathered = (floor(AM_OreGathered));

		[_ore,AM_OreGathered] call AM_Inventory_AddItem;
	} else {
    [format["%1 you do not have a Mining Pick pls buy one at the Mining store",name player],AM_COLGROUP_RED] call AM_Core_Message;
    };
};


if (_act == "MaxMining20") then 
{
	if(AM_Mining) then
	{
		AM_OreGathered = 0;
		_maxore = 20;
		_totalamount = round (random _maxore);
		titleText[format["Mining..."], "PLAIN"];
		sleep 3;
		if (_totalamount > 0) then 
		{
		    [format["You Got %2 %1! Wow keep it up.", _ore,_totalamount],AM_COLGROUP_GREEN] call AM_Core_Message;
		} else {
		    [format["Unlucky %1 you didn't mine anything",name player],AM_COLGROUP_GREEN] call AM_Core_Message;
		};
		AM_OreGathered = AM_OreGathered + _totalamount;
		AM_OreGathered = (floor(AM_OreGathered));

		[_ore,AM_OreGathered] call AM_Inventory_AddItem;
		} else {
	    [format["%1 you do not have a Mining Pick pls buy one at the Mining store",name player],AM_COLGROUP_RED] call AM_Core_Message;
    	};
};