/*---------------------------------------------------------------------------	
						Heads Up Display
						   by DEADdem
## DESCRIPTION:
 	Shows and oper8s the heads up display.
## UPDATES:
  001:
  	Creation				
---------------------------------------------------------------------------*/	
disableSerialization;
2 cutRsc["AM_HUD","PLAIN"];
_dlg = uiNamespace getVariable 'AM_HUD_DLG';
_Health = _dlg displayCtrl 1000;
_Food = _dlg displayCtrl 1001;
_Water = _dlg displayCtrl 1002;
_Bank = _dlg displayCtrl 1003;
_Cash = _dlg displayCtrl 1004;
_Uptime = _dlg displayCtrl 1005;
_Strength = _dlg displayCtrl 1007;
_Gun = _dlg displayCtrl 1008;
_Stamina = _dlg displayCtrl 1009;
_Vehicle = _dlg displayCtrl 1010;

_radar_BG = _dlg displayCtrl 20;

_radar_o1 = _dlg displayCtrl 11;
_radar_o2 = _dlg displayCtrl 18;
_radar_o3 = _dlg displayCtrl 19;

_radar_g1 = _dlg displayCtrl 12;
_radar_g2 = _dlg displayCtrl 13;
_radar_g3 = _dlg displayCtrl 14;

_radar_r1 = _dlg displayCtrl 15;
_radar_r2 = _dlg displayCtrl 16;
_radar_r3 = _dlg displayCtrl 17;


_radars_all = [_radar_BG,_radar_o1,_radar_o2,_radar_o3,_radar_g1,_radar_g2,_radar_g3,_radar_r1,_radar_r2,_radar_r3];

_picture_Holster = _dlg displayCtrl 1210;
_picture_Cell = _dlg displayCtrl 1206;
_picture_EMT = _dlg displayCtrl 1207;
_picture_DEAD = _dlg displayCtrl 1208;
_picture_Cop = _dlg displayCtrl 1209;

_picturepath_Holster = "icons\pistol.paa";
_picturepath_Cell = "icons\cell.paa";
_picturepath_EMT = "icons\EMT.paa";
_picturepath_Dead = "icons\skull.paa";
_picturepath_Cop = "icons\cop.paa";
_picturepath_Strength = "icons\strength.paa";
_picturepath_Gun = "icon\pistol.paa";
_picturepath_Stamina = "icon\stamina.paa";
_picturepath_Vehicle = "icon\vehicle.paa";



while{true}do{
	_pCash = [(["cash"] call AM_Inventory_GetAmount),0,0,true] call CBA_fnc_FormatNumber;
	_pBank = [AM_BankCash,0,0,true] call CBA_fnc_FormatNumber;
	_pHealth = round((1-(damage player))*100);
	_pUptime = (round(time) / 3600) call AM_Core_NumToTime;
	_Health ctrlSetText format["%1",_pHealth];
	_Food ctrlSetText format["%1",AM_Hunger];
	_Water ctrlSetText format["%1",AM_Thirst];
	_Bank ctrlSetText format["$%1",_pBank];
	_Cash ctrlSetText format["$%1",_pCash];
	_Uptime ctrlSetText format["%1",_pUptime];
	_Strength ctrlSetText format["%1",AM_Strength];
	_Gun ctrlSetText format["%1",AM_Shooting];
	_Stamina ctrlSetText format["%1",round (AM_Stamina)];
	_Vehicle ctrlSetText format["%1",round (AM_VehicleS)];

	if(typeOf(vehicle player) in AM_RadarVehicles && vehicle player != player)then{
		{
		  _x ctrlShow true;
		} forEach _radars_all;
		[] call AM_HUD_UIRadar;
	}else{
		{
		  _x ctrlShow false;
		} forEach _radars_all;
	};
	if(AM_HolsteredGun_Slot1 != "" || AM_HolsteredGun_Slot2 != "")then{
		_picture_Holster ctrlSetText format["%1",_picturepath_Holster];
	}else{
		_picture_Holster ctrlSetText "";
	};
	if(AM_DeadState)then{
		_picture_DEAD ctrlSetText _picturepath_Dead;
	}else{
		_picture_DEAD ctrlSetText "";
	};
	if(AM_PoliceDuty)then{
		_picture_Cop ctrlSetText _picturepath_Cop;
	}else{
		_picture_Cop ctrlSetText "";
	};
	if(AM_EMTDuty)then{
		_picture_EMT ctrlSetText _picturepath_EMT;
	}else{
		_picture_EMT ctrlSetText "";
	};
	if(AM_JailTime > 3 and player distance AM_Jail < 50)then{
		_picture_Cell ctrlSetText _picturepath_Cell;
	}else{
		_picture_Cell ctrlSetText "";
	};
};
