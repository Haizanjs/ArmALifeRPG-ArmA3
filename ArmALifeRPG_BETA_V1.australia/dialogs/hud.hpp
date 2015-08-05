class AM_HUD{
	idd=1077001;
	duration=99999999;
	fadeIn = 0;
	fadeOut = 0;
	onload="uiNamespace setVariable [""AM_HUD_DLG"",_this select 0]";
	objects[] = {};
	movingenable=1;
	controls[]=
	{
		RscPicture_1223,	
		RscWText_1000,
		RscWText_1001,
		RscWText_1002,
		RscWText_1003,
		RscWText_1004,
		RscPicture_1201,
		RscPicture_1202,
		RscPicture_1203,
		RscPicture_1204,
		RscPicture_1205,
		RscWText_1005,
		RscPicture_1205,
		RscPicture_1206,
		RscPicture_1207,
		RscPicture_1208,	
		RscListbox_1500,

		RscPicture_1209,
		radar_o1,
		radar_o2,
		radar_g1,
		radar_g2,
		radar_g3,
		radar_r1,
		radar_r2,
		radar_r3,
		RscPicture_1211,
		RscPicture_1218,

		RscPicture_1219,
		RscPicture_1220,
		RscPicture_1221,
		RscWText_1008,
		RscWText_1009,
		RscWText_1010,
		RscWText_1011
	};
	////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Jutihe)
////////////////////////////////////////////////////////

class radar_o2: RscPicture
{
	idc = 11;

	text = "ui\orange\o0.paa";
	x = -26.8 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_g1: RscPicture
{
	idc = 12;

	text = "ui\green\g0.pac";
	x = -11.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15.2 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_g2: RscPicture
{
	idc = 13;

	text = "ui\green\g0.pac";
	x = -9 * GUI_GRID_W + GUI_GRID_X;
	y = 15.2 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_g3: RscPicture
{
	idc = 14;

	text = "ui\green\g0.pac";
	x = -6.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15.2 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_r1: RscPicture
{
	idc = 15;

	text = "ui\red\r0.paa";
	x = -16.8 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_r2: RscPicture
{
	idc = 16;

	text = "ui\red\r0.paa";
	x = -19.2 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_r3: RscPicture
{
	idc = 17;

	text = "ui\red\r0.paa";
	x = -14.2 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1211: RscPicture
{
	idc = 18;

	text = "ui\orange\o0.paa";
	x = -24.4 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1218: RscPicture
{
	idc = 19;

	text = "ui\orange\o0.paa";
	x = -21.8 * GUI_GRID_W + GUI_GRID_X;
	y = 15.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class radar_o1: RscPicture
{
	idc = 20;

	text = "ui\radar.paa";
	x = -28.5 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 31.5 * GUI_GRID_W;
	h = 13.5 * GUI_GRID_H;
};
class RscWText_1000: RscWText
{
	idc = 1000;

	text = "HEALTH"; //--- ToDo: Localize;
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 29.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscWText_1001: RscWText
{
	idc = 1001;

	text = "FOOD"; //--- ToDo: Localize;
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 31 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscWText_1002: RscWText
{
	idc = 1002;

	text = "WATER"; //--- ToDo: Localize;
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 32.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscPicture_1223: RscPicture
{
	idc = 1223;

	text = "icons\HUD_Money.paa";
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 22 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 6.75 * GUI_GRID_H;
};
class RscWText_1003: RscWText
{
	idc = 1003;

	text = "BANK"; //--- ToDo: Localize;
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscWText_1004: RscWText
{
	idc = 1004;

	text = "WALLET"; //--- ToDo: Localize;
	x = 58 * GUI_GRID_W + GUI_GRID_X;
	y = 26.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscPicture_1202: RscPicture
{
	idc = 1202;

	text = "icons\water.paa";
	x = 56.5 * GUI_GRID_W + GUI_GRID_X;
	y = 32.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscPicture_1203: RscPicture
{
	idc = 1203;

	text = "icons\food.paa";
	x = 56.5 * GUI_GRID_W + GUI_GRID_X;
	y = 31 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscPicture_1204: RscPicture
{
	idc = 1204;

	text = "icons\health.paa";
	x = 56.5 * GUI_GRID_W + GUI_GRID_X;
	y = 29.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscPicture_1205: RscFadedPicture
{
	idc = 1205;

	text = "icons\AL.paa"; //--- ToDo: Localize;
	x = -28 * GUI_GRID_W + GUI_GRID_X;
	y = 28.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
};
class RscWText_1005: RscWText
{
	idc = 1005;

	text = "UPTIME"; //--- ToDo: Localize;
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 33 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1206: RscPicture
{
	idc = 1206;

	text = "icons\cell.paa";
	x = 65 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1207: RscPicture
{
	idc = 1207;

	text = "icons\emt.paa";
	x = 65 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1208: RscPicture
{
	idc = 1208;

	text = "icons\skull.paa";
	x = 65 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscPicture_1209: RscPicture
{
	idc = 1209;

	text = "icons\cop.paa";
	x = 65 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscListbox_1500: RscListBox_CL
{
	idc = 1500;

	x = 36.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 18 * GUI_GRID_W;
	h = 10 * GUI_GRID_H;
};
class RscPicture_1219: RscPicture
{
	idc = 1204;

	text = "icons\strength.paa";
	x = -28 * GUI_GRID_W + GUI_GRID_X;
	y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscPicture_1220: RscPicture
{
	idc = 1203;

	text = "icons\pistol.paa";
	x = -28 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscPicture_1221: RscPicture
{
	idc = 1221;

	text = "icons\stamina.paa";
	x = -28 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscPicture_1201: RscPicture
{
	idc = 1201;

	text = "icons\vehicle.paa";
	x = -28 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscWText_1008: RscWText
{
	idc = 1007;

	text = "STRENGTH"; //--- ToDo: Localize;
	x = -25.5 * GUI_GRID_W + GUI_GRID_X;
	y = -1 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscWText_1009: RscWText
{
	idc = 1008;

	text = "WEAPON"; //--- ToDo: Localize;
	x = -25.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscWText_1010: RscWText
{
	idc = 1009;

	text = "STAMINA"; //--- ToDo: Localize;
	x = -25.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscWText_1011: RscWText
{
	idc = 1010;

	text = "VEHICLE"; //--- ToDo: Localize;
	x = -25.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



};