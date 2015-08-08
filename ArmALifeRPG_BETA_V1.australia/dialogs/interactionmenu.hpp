class AM_InteractionMenu{
	idd=909;
	

	controls[]=
	{
		RscPicture_1200,
		RscPicture_1201,
		RscPicture_1202,
		RscPicture_1203,
		RscPicture_1204,
		RscPicture_1205,
		RscPicture_1206,
		RscPicture_1207,
		RscPicture_1208,
		RscPicture_1209,
		RscButton_1602,
		RscButton_1603,
		RscButton_1604,
		RscButton_1605,
		RscButton_1606,
		RscButton_1607,
		RscButton_1608,
		RscButton_1609,
		RscButton_1610,
		RscButton_1611,
		RscPicture_1210,
		RscPicture_1211,
		RscPicture_1212,
		RscPicture_1213,
		RscPicture_1214,
		RscPicture_1215,
		RscPicture_1216,
		RscPicture_1217,
		RscPicture_1218,
		RscPicture_1219,
		RscPicture_1220,
		RscPicture_1221,
		RscPicture_1222,
		RscPicture_1223,
		RscButton_1612,
		RscButton_1613,
		RscButton_1614,
		RscButton_1615,
		RscButton_1616,
		RscButton_1617,
		RscButton_1618,
		RscButton_1619,
		RscButton_1620,
		RscButton_1621,
		RscButton_1622,
		RscButton_1623,
		RscButton_1624,
		RscButton_1625,
		RscPicture_1224,
		RscPicture_1225,
		RscPicture_1226,
		RscPicture_1227,
		RscPicture_1228,
		RscPicture_1229,
		RscPicture_1230,
		RscPicture_1231,
		RscPicture_1232,
		RscPicture_1233,
		RscPicture_1234,
		RscButton_1626,
		RscButton_1627,
		RscButton_1628,
		RscButton_1629,
		RscButton_1630,
		RscPicture_1235,
		RscButton_1631,
		RscButton_1632,
		RscButton_1633,
		RscButton_1634,
		RscButton_1635,
		RscButton_1636,
		RscButton_1637
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Dytuxy)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "icons\icon_emt.paa";
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1201: RscPicture
{
	idc = 1201;

	text = "icons\icon_stretcher.paa";
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1202: RscPicture
{
	idc = 1202;

	text = "icons\icon_heart.paa";
	x = -13 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1203: RscPicture
{
	idc = 1203;

	text = "icons\icon_car.paa";
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1204: RscPicture
{
	idc = 1204;

	text = "icons\icon_stretcher_transport.paa";
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1205: RscPicture
{
	idc = 1205;

	text = "icons\icon_ambulance.paa";
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1206: RscPicture
{
	idc = 1206;

	text = "icons\icon_syringe.paa";
	x = -17.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1207: RscPicture
{
	idc = 1207;

	text = "icons\icon_thumbsup.paa";
	x = -17.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1208: RscPicture
{
	idc = 1208;

	text = "icons\icon_unloadambo.paa";
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1209: RscPicture
{
	idc = 1209;

	text = "icons\icon_unloadstretcher.paa";
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscButton_1602: RscButtonHidden
{
	idc = 1602;
	action = "['emt_1'] call AM_Int_MenuUpdate;";

	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Transportation Options"; //--- ToDo: Localize;
};
class RscButton_1603: RscButtonHidden
{
	idc = 1603;
	action = "[] call AM_EMS_LoadToStretcher;";

	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Load onto stretcher"; //--- ToDo: Localize;
};
class RscButton_1604: RscButtonHidden
{
	idc = 1604;
	action = "[] call AM_EMS_LoadToAmbulance;";

	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Load into ambulance"; //--- ToDo: Localize;
};
class RscButton_1605: RscButtonHidden
{
	idc = 1605;
	action = "['stabilize'] call AM_EMS_Treat";

	x = -17.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Stabalize Patient"; //--- ToDo: Localize;
};
class RscButton_1606: RscButtonHidden
{
	idc = 1606;
	action = "['revive'] call AM_EMS_Treat";

	x = -17.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Revive Patient"; //--- ToDo: Localize;
};
class RscButton_1607: RscButtonHidden
{
	idc = 1607;
	action = "['ems_2'] call AM_Int_MenuUpdate;";

	x = -13 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Treatment Options"; //--- ToDo: Localize;
};
class RscButton_1608: RscButtonHidden
{
	idc = 1608;
	action = "['ems_3'] call AM_Int_MenuUpdate;";

	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Vehicle Options"; //--- ToDo: Localize;
};
class RscButton_1609: RscButtonHidden
{
	idc = 1609;
	action = "[] call AM_EMS_Unload";

	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Unload from Stretcher"; //--- ToDo: Localize;
};
class RscButton_1610: RscButtonHidden
{
	idc = 1610;
	action = "[] call AM_EMS_Unload";

	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Unoad from Ambulance"; //--- ToDo: Localize;
};
class RscButton_1611: RscButtonHidden
{
	idc = 1611;
	action = "['ems_0'] call AM_Int_MenuUpdate;";

	text = "EMS"; //--- ToDo: Localize;
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Emergency Medical Service Menu"; //--- ToDo: Localize;
};
class RscPicture_1210: RscPicture
{
	idc = 1210;

	text = "\ALRPG_Client\Interaction\PD.paa";
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1211: RscPicture
{
	idc = 1211;

	text = "\ALRPG_Client\Police.paa";
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1212: RscPicture
{
	idc = 1212;

	text = "\ALRPG_Client\Interaction\Cop_Car.paa";
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1213: RscPicture
{
	idc = 1213;

	text = "\ALRPG_Client\Interaction\Cop_ID.paa";
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1214: RscPicture
{
	idc = 1214;

	text = "\ALRPG_Client\Interaction\Cop_Disarm.paa";
	x = 50.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1215: RscPicture
{
	idc = 1215;

	text = "\ALRPG_Client\Interaction\Cop_Handcuff.paa";
	x = 46 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1216: RscPicture
{
	idc = 1216;

	text = "\ALRPG_Client\Interaction\Cop_Search.paa";
	x = 41.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1217: RscPicture
{
	idc = 1217;

	text = "\ALRPG_Client\Interaction\Cop_Ticket.paa";
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1218: RscPicture
{
	idc = 1218;

	text = "\ALRPG_Client\Interaction\Cop_Arrest.paa";
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1219: RscPicture
{
	idc = 1219;

	text = "\ALRPG_Client\Interaction\Cop_Car1.paa";
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1220: RscPicture
{
	idc = 1220;

	text = "\ALRPG_Client\Interaction\Cop_Unload.paa";
	x = 45.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1221: RscPicture
{
	idc = 1221;

	text = "\ALRPG_Client\Interaction\Cop_GunRack.paa";
	x = 45.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1222: RscPicture
{
	idc = 1222;

	text = "\ALRPG_Client\Interaction\Cop_Computer.paa";
	x = 41 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1223: RscPicture
{
	idc = 1223;

	text = "\ALRPG_Client\Interaction\Cop_Jail.paa";
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscButton_1612: RscButtonHidden
{
	idc = 1612;
	action = "['imprison'] call AM_PD_PoliceDialog;";

	text = "JAIL"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Imprisonment Menu"; //--- ToDo: Localize;
};
class RscButton_1613: RscButtonHidden
{
	idc = 1613;
	action = "[cursorTarget] call AM_Core_ForceIntoVehicle";

	text = "COPLOAD"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Load Suspect Into Vehicle"; //--- ToDo: Localize;
};
class RscButton_1614: RscButtonHidden
{
	idc = 1614;
	action = "[] call AM_Core_DragClient";

	text = "DRAG"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Drag Suspect With You"; //--- ToDo: Localize;
};
class RscButton_1615: RscButtonHidden
{
	idc = 1615;
	action = "call AM_PD_OpenTicketing;";

	text = "TICKET"; //--- ToDo: Localize;
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Issue Citation"; //--- ToDo: Localize;
};
class RscButton_1616: RscButtonHidden
{
	idc = 1616;
	action = "[] call AM_PD_SearchUnit";

	text = "SEARCH"; //--- ToDo: Localize;
	x = 41.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Search Suspect"; //--- ToDo: Localize;
};
class RscButton_1617: RscButtonHidden
{
	idc = 1617;
	action = "[] spawn AM_Core_BoundPlayer;";

	text = "CUFF"; //--- ToDo: Localize;
	x = 46 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Toggle Handcuffs"; //--- ToDo: Localize;
};
class RscButton_1618: RscButtonHidden
{
	idc = 1618;
	action = "['disarm'] call AM_PD_PoliceDialog";

	text = "DISARM"; //--- ToDo: Localize;
	x = 50.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Disarm Suspect"; //--- ToDo: Localize;
};
class RscButton_1619: RscButtonHidden
{
	idc = 1619;
	action = "['identify'] call AM_PD_PoliceDialog";

	text = "ID"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "View Identification"; //--- ToDo: Localize;
};
class RscButton_1620: RscButtonHidden
{
	idc = 1620;
	action = "[] call AM_Unload";

	text = "UNLCopcar"; //--- ToDo: Localize;
	x = 45.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Unload from car"; //--- ToDo: Localize;
};
class RscButton_1621: RscButtonHidden
{
	idc = 1621;
		action="if(!createDialog ""AM_PolicePC"")exitWith{};";

	text = "PCOMPUTER"; //--- ToDo: Localize;
	x = 41 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Police Computer"; //--- ToDo: Localize;
};
class RscButton_1622: RscButtonHidden
{
	idc = 1622;
	action = "[] call AM_PD_GunRack;";

	text = "GRACK"; //--- ToDo: Localize;
	x = 45.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Weapn Rack"; //--- ToDo: Localize;
};
class RscButton_1623: RscButtonHidden
{
	idc = 1623;
	action = "['cop_1'] call AM_Int_MenuUpdate;";

	text = "CARCOP"; //--- ToDo: Localize;
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Police Vehicle Options"; //--- ToDo: Localize;
};
class RscButton_1624: RscButtonHidden
{
	idc = 1624;
	action = "['cop_2'] call AM_Int_MenuUpdate;";

	text = "COPMAN"; //--- ToDo: Localize;
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Suspect Interaction Menu"; //--- ToDo: Localize;
};
class RscButton_1625: RscButtonHidden
{
	idc = 1625;
	action = "['cop_0'] call AM_Int_MenuUpdate;";

	text = "COP"; //--- ToDo: Localize;
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Law Enforcement Menu"; //--- ToDo: Localize;
};
class RscPicture_1224: RscPicture
{
	idc = 1224;

	text = "\ALRPG_Client\Interaction\Civilian.paa";
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	tooltip = "Interaction Options"; //--- ToDo: Localize;
};
class RscPicture_1225: RscPicture
{
	idc = 1225;

	text = "\ALRPG_Client\Interaction\Car.paa";
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	tooltip = "Vehicle Interaction Menu"; //--- ToDo: Localize;
};
class RscPicture_1226: RscPicture
{
	idc = 1226;

	text = "\ALRPG_Client\Interaction\Car_Storage.paa";
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	tooltip = "Vehicle Trunk"; //--- ToDo: Localize;
};
class RscPicture_1227: RscPicture
{
	idc = 1227;

	text = "\ALRPG_Client\Interaction\Car_Repair.paa";
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	tooltip = "Repair Vehicle"; //--- ToDo: Localize;
};
class RscPicture_1228: RscPicture
{
	idc = 1228;

	text = "\ALRPG_Client\Interaction\Car_unload.paa";
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1229: RscPicture
{
	idc = 1229;

	text = "\ALRPG_Client\Interaction\Car_Upgrade.paa";
	x = 20 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1230: RscPicture
{
	idc = 1230;

	text = "\ALRPG_Client\Interaction\Car_repair.paa";
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1231: RscPicture
{
	idc = 1231;

	text = "\ALRPG_Client\Interaction\Person.paa";
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};
class RscPicture_1232: RscPicture
{
	idc = 1232;

	text = "\ALRPG_Client\Interaction\Civ_Blindfold.paa";
	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1233: RscPicture
{
	idc = 1233;

	text = "\ALRPG_Client\Interaction\Civ_Ziptie.paa";
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscPicture_1234: RscPicture
{
	idc = 1234;

	text = "\ALRPG_Client\Interaction\Civ_Drag.paa";
	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
};
class RscButton_1626: RscButtonHidden
{
	idc = 1626;
	action = "[] call AM_Core_CarInfo;";

	text = "INFO"; //--- ToDo: Localize;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "View Vehicle Informaton"; //--- ToDo: Localize;
};
class RscButton_1627: RscButtonHidden
{
	idc = 1627;
		action="hint ""Work In Progress"";";

	text = "UPGRADE"; //--- ToDo: Localize;
	x = 20 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Vehicle Upgrade Menu"; //--- ToDo: Localize;
};
class RscButton_1628: RscButtonHidden
{
	idc = 1628;
	action = "[] call AM_Unflip";

	text = "UNLOAD"; //--- ToDo: Localize;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Unflip Vehicle"; //--- ToDo: Localize;
};
class RscButton_1629: RscButtonHidden
{
	idc = 1629;
	action = "[] spawn AM_Core_RepairVehicle;";

	text = "REPAIR"; //--- ToDo: Localize;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Repair Menu"; //--- ToDo: Localize;
};
class RscButton_1630: RscButtonHidden
{
	idc = 1630;
	action = "[] call AM_Core_AccessTrunk";

	text = "TRUNK"; //--- ToDo: Localize;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Open Vehicle Trunk"; //--- ToDo: Localize;
};
class RscPicture_1235: RscPicture
{
	idc = 1235;

	text = "\ALRPG_Client\Interaction\Civ_Putin.paa";
	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	tooltip = "Vehicle Interaction Menu"; //--- ToDo: Localize;
};
class RscButton_1631: RscButtonHidden
{
	idc = 1631;
	action = "[] call AM_BagInteract";

	text = "BAG"; //--- ToDo: Localize;
	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Put Bag over head"; //--- ToDo: Localize;
};
class RscButton_1632: RscButtonHidden
{
	idc = 1632;
	action = "[] spawn AM_Core_BoundPlayer;";

	text = "RESTRA"; //--- ToDo: Localize;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Bound Victim"; //--- ToDo: Localize;
};
class RscButton_1633: RscButtonHidden
{
	idc = 1633;
	action = "[] call AM_Core_DragClient;";

	text = "DRAG"; //--- ToDo: Localize;
	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = -2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Drag Victim"; //--- ToDo: Localize;
};
class RscButton_1634: RscButtonHidden
{
	idc = 1634;
	action = "[] call AM_Force;";

	text = "FORCETOCAR"; //--- ToDo: Localize;
	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 3 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Force Into Nearest Vehicle"; //--- ToDo: Localize;
};
class RscButton_1635: RscButtonHidden
{
	idc = 1635;
	action = "['civ_2'] call AM_Int_MenuUpdate;";

	text = "CARINT"; //--- ToDo: Localize;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Vehicle Interaction Menu"; //--- ToDo: Localize;
};
class RscButton_1636: RscButtonHidden
{
	idc = 1636;
	action = "['civ_1'] call AM_Int_MenuUpdate;";

	text = "CIVCMAN"; //--- ToDo: Localize;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Person Interaction Menu"; //--- ToDo: Localize;
};
class RscButton_1637: RscButtonHidden
{
	idc = 1637;
	action = "['civ_0'] call AM_Int_MenuUpdate;";

	text = "CIV"; //--- ToDo: Localize;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
	tooltip = "Interaction Menu"; //--- ToDo: Localize;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


};