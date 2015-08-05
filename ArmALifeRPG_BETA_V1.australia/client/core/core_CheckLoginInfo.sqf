
/*---------------------------------------------------------------------------
							  Check Login Info
								by DEADdem
## DESCRIPTION:
 	Checks Login Information sent from server
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_CheckLoginInfo={
	_user=[_this,0,"",[""]] call BIS_fnc_Param;
	_pass=[_this,1,"",[""]]	call BIS_fnc_Param;
	if(isNil "_user" || isNil "_pass")exitWith{};
	closeDialog 0;
	systemChat "Please wait while we check your info..";
	_user = [_user] call AM_Core_MRES;
	_pass = [_pass] call AM_Core_MRES;
	if(AM_SESSION_Blocked)exitWith{hint parseText "<t size='2'>Account Blocked!</t>";player enableSimulation false; [[player,"LgSysBl"],"AM_network_Blockeduser",true] call BIS_fnc_MP;};
	if(_user == AM_SESSION_Username and _pass == AM_SESSION_Password)then{
		AM_SESSION_LoggedIn = true;
		[format["User details correct! Welcome to %1",AM_CommunityName], AM_COLGROUP_GREEN] call AM_Core_Message;
		 call AM_Load;
	}else{
		AM_SESSION_LoginAttempts = AM_SESSION_LoginAttempts +1;
		[format["User details incorrect! Try %1/5",AM_SESSION_LoginAttempts], AM_COLGROUP_GREEN] call AM_Core_Message;
		if(AM_SESSION_LoginAttempts == 5)then{	
			hint parseText "<t size='2'>Account Blocked!</t>";player enableSimulation false;
			[[player,"LgSysFa"], "AM_network_Blockeduser",true] call BIS_fnc_MP;
		}else{
			if(!createDialog "AM_LoginMenu")then{hint "Cannot open login menu!!"; endmission "end5";};
		};
	};
};