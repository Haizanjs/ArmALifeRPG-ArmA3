/*---------------------------------------------------------------------------
							 	Bag Head
								by DEADdem
## DESCRIPTION:
 	Puts bag over unit head
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_BagInteract = {
	AM_Bagged = false;
	if(!AM_Bagged) then {
		AM_Bagged = true;
		[] call AM_Core_BagHead;
	} else {
		AM_Bagged = false;
		[] call AM_Core_Remove;
	};
};

AM_Core_BagHead = {
	if(isNil "AM_InteractTarget")exitWith{};
	if(!isPlayer AM_interactTarget)exitWith{systemChat "Target is not man"};
	_HaveBag = ["headbag"] call AM_Inventory_GetAmount;
	if(_HaveBag == 0)exitWith{["You don't have any headbags!",AM_COLGROUP_RED] call AM_Core_Message};
	_isCuffed=AM_InteractTarget getVariable "AM_Cuffed";
	_isBagged=AM_InteractTarget getVariable "AM_Blinded";

	if(!_isCuffed)exitWith{["Unit is not cuffed!",AM_COLGROUP_RED] call AM_Core_Message};

	if(_isBagged)then{
		["headbag",1] call AM_inventory_additem;
		removeHeadgear player;
		AM_InteractTarget setVariable ["AM_Blinded",false,true];
	}else{
		["headbag",-1] call AM_inventory_additem;
		AM_InteractTarget addheadgear "mgsr_headbag";
		AM_InteractTarget setVariable ["AM_Blinded",true,true];
	};


};

AM_Core_Remove = {
	if(isNil "AM_InteractTarget")exitWith{};
	if(!isPlayer AM_interactTarget)exitWith{systemChat "Target is not man"};
	_isBagged=AM_InteractTarget getVariable "AM_Blinded";
	if (_isBagged) then {
		["headbag",1] call AM_inventory_additem;
		removeHeadgear player;
		AM_InteractTarget setVariable ["AM_Blinded",false,true];
	};
};
/*---------------------------------------------------------------------------
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited
---------------------------------------------------------------------------*/