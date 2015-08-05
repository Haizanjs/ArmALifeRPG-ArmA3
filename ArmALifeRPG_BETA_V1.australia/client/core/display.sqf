/*---------------------------------------------------------------------------	
						Display Reliant Functions
						   by DEADdem
## DESCRIPTION:
 	Features reliant on certain displays/dialogs/frame
## UPDATES:
  001:
  	Creation				
  002:
  	Shop-Title above vendor w/ Image
---------------------------------------------------------------------------*/	
waitUntil {speed player > 1};
(findDisplay 46) DisplayAddEventHandler["KeyDown","_this call AM_Core_KeyHandler"];




//player addEventHandler["Killed",{_this call AM_Core_Killed}];
player addEventHandler["Dammaged", {_this call AM_Core_HandleDamage}];
// 3D Shop Events

player setVariable["AM_Blinded",false,true];
player setVariable["AM_Dead",false,true];
player setVariable["AM_Stable",true,true];
cart_icon_path = call AM_CORE_GetRoot + "images\cart.paa";
[] execVM "client\hud\init.sqf";
["shops_text", "onEachFrame",{
		if([cursorTarget] call AM_Shops_ObjectIsHost)then{
			if(player distance cursorTarget > 20)exitWith{};
			_posNow = getpos cursorTarget; // Get shop pos
			_posNewZ = (_posNow select 2); // Get axis Z
			_posNewZ = _posNewZ + 2; // Add to axis Z so name pops up above
			_posNow set [2, _posNewZ]; // Set the position of the text
			_shopName = [(str cursorTarget),"name"] call AM_Shops_Info;
			drawIcon3D[cart_icon_path, [1,1,1,1], _posNow, 4, 4, 45, _shopName, 1, 0.06, "TahomaB"];
		};
}] call BIS_fnc_addStackedEventHandler;

["name_users", "onEachFrame",{
	{
		if(cursorTarget in playableUnits)then{
			if(player distance cursorTarget > 10)then{}else{
				_posNow = getpos cursorTarget; 
				_posNewZ = (_posNow select 2);
				_posNewZ = _posNewZ + 2;
				_posNow set [2, _posNewZ]; 
				_UnitName = name cursorTarget;
				drawIcon3D["", [1,1,1,1], _posNow, 4, 4, 45, _unitName, 1, 0.06, "TahomaB"];
			};
		};

}] call BIS_fnc_addStackedEventHandler;


player addEventHandler["HandleDamage",{_this call AM_Core_HandleDamage}];