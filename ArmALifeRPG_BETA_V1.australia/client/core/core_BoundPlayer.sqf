/*---------------------------------------------------------------------------
							 	Bound Player
								by DEADdem
## DESCRIPTION:
 	Bounds another player
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_BoundPlayer = {
	if(isNil "AM_interacttarget")exitWith{systemChat "invalid target"};
	if(!isPlayer AM_interactTarget)exitWith{systemChat "Target is not man"};
	_itemToCheck="rope";
	if(AM_PoliceDuty)then{
		_itemToCheck = "handcuffs";
	};
	_iHave =[_itemToCheck] call AM_Inventory_getAMount;
	if(_iHave == 0)exitWith{AM_interacttarget setVariable["AM_Cuffed",false,true];[format["You do not have any %1s!",[_itemToCheck,"name"] call AM_Inventory_Info], AM_COLGROUP_RED] call AM_Core_Message};
	_bounded = animationState AM_interacttarget;
	if(_bounded == AM_ANIMSTATES_Cuffed)then{
		[_itemToCheck,1] call AM_Inventory_AddItem;
		AM_interacttarget setVariable["AM_Cuffed",false,true];
		[[AM_interacttarget,""],"AM_Core_Animate",true,false] call BIS_fnc_MP;
	}else{
		[_itemToCheck,-1] call AM_Inventory_AddItem;
		[["You have been bounded by another player", AM_COLGROUP_WHITE],"AM_Core_Message",owner(AM_interacttarget)] call BIS_fnc_MP;	
		["You have bounded this player", AM_COLGROUP_WHITE] call AM_Core_Message;
		AM_interacttarget setVariable["AM_Cuffed",true,true];
		_players = nearestObjects[getPosATL player,["Man"],10] select 0;
		while{(AM_interacttarget getVariable "AM_Cuffed" || _players getVariable "AM_Cuffed")}do{
			[[AM_interacttarget,AM_ANIMSTATES_Cuffed],"AM_Core_Animate",true,true] call BIS_fnc_MP;	
			sleep 16;
			[[AM_interacttarget,AM_ANIMSTATES_Cuffed],"AM_Core_Animate",true,true] call BIS_fnc_MP;	
		};
		
	};
	

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	