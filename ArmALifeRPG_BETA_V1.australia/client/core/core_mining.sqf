/*---------------------------------------------------------------------------
						Mining
	   		       by Taliban
				
## DESCRIPTION:
	Handles Mining function
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_Mining = {
if (!AM_Mining) exitWith {["You can't mine right now!",AM_COLGROUP_RED] call AM_Core_Message;};
_counter = round (random 9);
_ore = AM_Ore select _counter;
switch (AM_Strength) do
	{
		case 5: {
			if (AM_Mining) then {
			AM_Mining = false;
			AM_pickdura = AM_pickdura + 1;
			AM_OreGathered = 0;
			AM_Strength = AM_Strength + 1;
			[] call AM_CheckPlayer;
			_maxore = 10;
			_totalamount = round (random _maxore);
			titleText[format["Mining..."], "PLAIN"];
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
			if (pickdura == 50) exitWith {["Your mining pick has broke!",AM_COLGROUP_RED] call AM_Core_Message;["Mining_pick",-1] call AM_Inventory_AddItem;};
			AM_Mining = true;
			} else {
			["You can't mine right now!",AM_COLGROUP_RED] call AM_Core_Message;
		};
	};
};
	if (AM_Mining) then {
	AM_Mining = false;
	AM_pickdura = AM_pickdura + 1;
	AM_OreGathered = 0;
	AM_Strength = AM_Strength + 1;
	[] call AM_CheckPlayer;
	_maxore = 5;
	_totalamount = round (random _maxore);
	titleText[format["Mining..."], "PLAIN"];
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
	if (pickdura == 20) exitWith {["Your mining pick has broke!",AM_COLGROUP_RED] call AM_Core_Message;["Mining_pick",-1] call AM_Inventory_AddItem;};
	AM_Mining = true;
	} else {
	["You can't mine right now!",AM_COLGROUP_RED] call AM_Core_Message;
	};
};
/*---------------------------------------------------------------------------	
			Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL","YOUR TAG" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	