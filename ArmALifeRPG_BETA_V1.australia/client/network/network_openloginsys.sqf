AM_network_OpenLoginSys={
	AM_SESSION_LoggedIn=false;
	AM_SESSION_Password = [_this,1,"none",[""]] call BIS_fnc_Param;
	AM_SESSION_Username = [_this,0,"none",[""]] call BIS_fnc_Param;
	AM_SESSION_Blocked  = [_this,2,"none",[""]] call BIS_fnc_Param;	
	AM_SESSION_LoginAttempts = 0;
	closeDialog 0;
	if(!createDialog "AM_LoginMenu")then{hint "Cannot open login menu!!"; endmission "end5";};
	if(AM_SESSION_Blocked == "yes")then{
		AM_SESSION_Blocked = true;
	}elsE{
		AM_SESSION_Blocked = false;
	};
	if(AM_SESSION_Username == "none" && AM_SESSION_Password == "none")then{
		AM_SESSION_Noob = true;
		ctrlSetText [1000,"Registration"];
		hint parseText format["<t size='1.75'>Registration</t><br/>Welcome to %1, here you can register a new account!<br/><br/>
		The Username and Password can be anything you like. Make sure its something you can remember however, because you will be required to login in the future.<br/>
		If you already have an existing account here and you get the registration menu, Either your account has been deleted from the database, or, There is an error, in which case relog.<br/>
		Notice: We no longer attempt encryption on this data, Do not use anything sensitive!
		<br/>",AM_CommunityName];
		buttonSetAction[1600,"[ctrlText 1400,ctrlText 1401] call AM_Core_RegisterUser"];
		ctrlSetText[1600, "Register"];
	};	
};