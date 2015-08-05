/*---------------------------------------------------------------------------
							 	Menu Update
								by DEADdem
## DESCRIPTION:
 	Updates icons on interaction menu
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Int_MenuUpdate = {
	_switch = _this select 0;

	switch(_switch)do{
		case "ems_0":
		{
			if(ctrlVisible 1201)then{
				[1204,0] call AM_Int_ToggleCtrlByIDC;
				[1205,0] call AM_Int_ToggleCtrlByIDC;
				[1206,0] call AM_Int_ToggleCtrlByIDC;
				[1207,0] call AM_Int_ToggleCtrlByIDC;
				[1201,0] call AM_Int_ToggleCtrlByIDC;
				[1202,0] call AM_Int_ToggleCtrlByIDC;
				[1203,0] call AM_Int_ToggleCtrlByIDC;
				[1208,0] call AM_Int_ToggleCtrlByIDC;
				[1209,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				
				[1201,1] call AM_Int_ToggleCtrlByIDC;
				[1202,1] call AM_Int_ToggleCtrlByIDC;
				[1203,1] call AM_Int_ToggleCtrlByIDC;
			};
		};
		case "emt_1":
		{
			if(ctrlVisible 1204)then{			
				[1204,0] call AM_Int_ToggleCtrlByIDC;
				[1205,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				[1204,1] call AM_Int_ToggleCtrlByIDC;
				[1205,1] call AM_Int_ToggleCtrlByIDC;
			};
		};
		case "ems_2":
		{
			if(ctrlVisible 1206)then{			
				[1206,0] call AM_Int_ToggleCtrlByIDC;
				[1207,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				[1206,1] call AM_Int_ToggleCtrlByIDC;
				[1207,1] call AM_Int_ToggleCtrlByIDC;
			};
		};
		case "ems_3":
		{
			if(ctrlVisible 1208)then{			
				[1208,0] call AM_Int_ToggleCtrlByIDC;
				[1209,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				[1208,1] call AM_Int_ToggleCtrlByIDC;
				[1209,1] call AM_Int_ToggleCtrlByIDC;
			};
		};
		case "cop_0":
		{
			if(ctrlVisible 1211)then{			
				[1211,0] call AM_Int_ToggleCtrlByIDC;
				[1212,0] call AM_Int_ToggleCtrlByIDC;
				[1220,0] call AM_Int_ToggleCtrlByIDC;
				[1221,0] call AM_Int_ToggleCtrlByIDC;
				[1222,0] call AM_Int_ToggleCtrlByIDC;
				[1213,0] call AM_Int_ToggleCtrlByIDC;
				[1214,0] call AM_Int_ToggleCtrlByIDC;
				[1215,0] call AM_Int_ToggleCtrlByIDC;
				[1216,0] call AM_Int_ToggleCtrlByIDC;
				[1217,0] call AM_Int_ToggleCtrlByIDC;
				[1218,0] call AM_Int_ToggleCtrlByIDC;
				[1219,0] call AM_Int_ToggleCtrlByIDC;
				[1223,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				[1211,1] call AM_Int_ToggleCtrlByIDC;
				[1212,1] call AM_Int_ToggleCtrlByIDC;
			};
		};
		case "cop_1":
		{	
			if(ctrlVisible 1220)then{			
				[1220,0] call AM_Int_ToggleCtrlByIDC;
				[1221,0] call AM_Int_ToggleCtrlByIDC;
				[1222,0] call AM_Int_ToggleCtrlByIDC;
			}else{
				[1220,1] call AM_Int_ToggleCtrlByIDC;
				[1221,1] call AM_Int_ToggleCtrlByIDC;
				[1222,1] call AM_Int_ToggleCtrlByIDC;
			};
		};	
		case "cop_2":
		{
			if(ctrlVisible 1213)then{			
				[1213,0] call AM_Int_ToggleCtrlByIDC;
				[1214,0] call AM_Int_ToggleCtrlByIDC;
				[1215,0] call AM_Int_ToggleCtrlByIDC;
				[1216,0] call AM_Int_ToggleCtrlByIDC;
				[1217,0] call AM_Int_ToggleCtrlByIDC;
				[1218,0] call AM_Int_ToggleCtrlByIDC;
				[1219,0] call AM_Int_ToggleCtrlByIDC;
				[1223,0] call AM_Int_ToggleCtrlByIDC;

			}else{
				[1213,1] call AM_Int_ToggleCtrlByIDC;
				[1214,1] call AM_Int_ToggleCtrlByIDC;
				[1215,1] call AM_Int_ToggleCtrlByIDC;
				[1216,1] call AM_Int_ToggleCtrlByIDC;
				[1217,1] call AM_Int_ToggleCtrlByIDC;
				[1218,1] call AM_Int_ToggleCtrlByIDC;
				[1219,1] call AM_Int_ToggleCtrlByIDC;
				[1223,1] call AM_Int_ToggleCtrlByIDC;
			};			
		};
		case "civ_0":
		{
			if(ctrlVisible 1225)then{			
				[1225,0] call AM_Int_ToggleCtrlByIDC;
				[1228,0] call AM_Int_ToggleCtrlByIDC;
				[1231,0] call AM_Int_ToggleCtrlByIDC;
				[1226,0] call AM_Int_ToggleCtrlByIDC;
				[1227,0] call AM_Int_ToggleCtrlByIDC;
				[1229,0] call AM_Int_ToggleCtrlByIDC;
				[1230,0] call AM_Int_ToggleCtrlByIDC;
				[1232,0] call AM_Int_ToggleCtrlByIDC;
				[1233,0] call AM_Int_ToggleCtrlByIDC;
				[1234,0] call AM_Int_ToggleCtrlByIDC;
				[1235,0] call AM_Int_ToggleCtrlByIDC;

			}else{
				[1225,1] call AM_Int_ToggleCtrlByIDC;
				[1231,1] call AM_Int_ToggleCtrlByIDC;
			};	
		};
		case "civ_1":
		{
			if(ctrlVisible 1232)then{			
				[1232,0] call AM_Int_ToggleCtrlByIDC;
				[1233,0] call AM_Int_ToggleCtrlByIDC;
				[1234,0] call AM_Int_ToggleCtrlByIDC;
				[1235,0] call AM_Int_ToggleCtrlByIDC;

			}else{
				[1232,1] call AM_Int_ToggleCtrlByIDC;
				[1233,1] call AM_Int_ToggleCtrlByIDC;
				[1234,1] call AM_Int_ToggleCtrlByIDC;
				[1235,1] call AM_Int_ToggleCtrlByIDC;
			};	
		};
		case "civ_2":
		{
			if(ctrlVisible 1226)then{			
				[1226,0] call AM_Int_ToggleCtrlByIDC;
				[1227,0] call AM_Int_ToggleCtrlByIDC;
				[1228,0] call AM_Int_ToggleCtrlByIDC;
				[1229,0] call AM_Int_ToggleCtrlByIDC;
				[1230,0] call AM_Int_ToggleCtrlByIDC;

			}else{
				[1226,1] call AM_Int_ToggleCtrlByIDC;
				[1227,1] call AM_Int_ToggleCtrlByIDC;
				[1228,1] call AM_Int_ToggleCtrlByIDC;
				[1229,1] call AM_Int_ToggleCtrlByIDC;
				[1230,1] call AM_Int_ToggleCtrlByIDC;
			};	
		};

	};	
};
/*---------------------------------------------------------------------------	
							Copyright (c) ArmALifeRPG
All function names, features and/or content prefixed with "AM","ALR","ALRPG",
"AL" are property of ArmALifeRPG. unauthorized usage of these files is strictly
prohibited		
---------------------------------------------------------------------------*/	