/*---------------------------------------------------------------------------
							Interaction Menu Open
								by DEADdem
## DESCRIPTION:
 	Opens Interaction Menu
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Int_Open = {
	AM_Int_Icons = [
		[1200,1611],
		[1201,1602],
		[1202,1607],
		[1203,1608],
		[1204,1603],
		[1205,1604],
		[1206,1605],
		[1207,1606],
		[1208,1610],
		[1209,1609],
	
		[1210,1625],
		[1211,1624],
		[1212,1623],
		[1213,1619],
		[1214,1618],
		[1215,1617],
		[1216,1616],
		[1217,1615],
		[1218,1614],
		[1219,1613],
		[1220,1620],
		[1221,1622],
		[1222,1621],
		[1223,1612],

		[1224,1637],
		[1225,1635],
		[1226,1630],
		[1227,1629],
		[1229,1627],
		[1230,1626],
		[1228,1628],
		[1231,1636],
		[1232,1631],
		[1233,1632],
		[1234,1633],
		[1235,1634]


	];	

	if(!createDialog "AM_interactionMenu")exitWith{};
	AM_Int_ControlPoints = [1200,1210,1224];
	{
		if(!((_x select 0) in AM_Int_ControlPoints))then{
			[_x select 0, 0] call AM_INT_ToggleCtrlByIDC;
	 	};

	}forEach AM_Int_Icons;
	if(!AM_PoliceDuty)then{
		[1210,0] call AM_INT_ToggleCtrlByIDC;
	};
	if(!AM_EMSDuty)then{
		[1200,0] call AM_INT_ToggleCtrlByIDC;
	};

};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited
---------------------------------------------------------------------------*/	