/*---------------------------------------------------------------------------
							 Receive House Request
								by DEADdem
## DESCRIPTION:
 	Grabs relevent information to current house
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Network_ReceiveHouseRequest = {
	_info = _this;
	if(count(_info) == 0)then{
		AM_CUR_HouseInfo = [];
	}else{
		AM_CUR_HouseInfo = _this select 0;
	};	
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited							
---------------------------------------------------------------------------*/	