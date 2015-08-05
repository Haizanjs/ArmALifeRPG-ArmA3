#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
class AM_Ticket_R{
	idd=-1;
controls[]=
{
	IGUIBack_2200,
	RscButton_1600,
	RscText_1000,
	RscButton_1601,
	RscListbox_1500
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Zetudo)
////////////////////////////////////////////////////////

class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 22.5 * GUI_GRID_W;
	h = 12.5 * GUI_GRID_H;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Accept Ticket"; //--- ToDo: Localize;
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	action="[1] call AM_Core_Ticket";
};
class RscText_1000: RscText
{
	idc = 1000;
	text = "Ticket Received"; //--- ToDo: Localize;
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Deny Ticket"; //--- ToDo: Localize;
	x = 22 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	action="[0] call AM_Core_Ticket";
};
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
};

};
class AM_Ticket{
	idd=-1;

	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscText_1000,
		RscEdit_1400,
		RscEdit_1401
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Wogyqu)
	////////////////////////////////////////////////////////

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 21 * GUI_GRID_W;
		h = 16 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Issue"; //--- ToDo: Localize;
		x = 17 * GUI_GRID_W + GUI_GRID_X;
		y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 9 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
		action="[ctrlText 1400,ctrlText 1401,player] call AM_PD_IssueTicket";
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Issue Ticket"; //--- ToDo: Localize;
		x = 18.5 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 8.5 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		text = "Enter Ticket Reason..."; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 6 * GUI_GRID_H + GUI_GRID_Y;
		w = 19 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		text = "Enter Ticket Price"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 9 * GUI_GRID_H + GUI_GRID_Y;
		w = 19 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};

};
class AM_PolicePC {
	idd=-1;
	controls[]=
	{
		RscPicture_1200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Doxumy)
////////////////////////////////////////////////////////

class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "closeDialog 0;if(!createDialog 'AM_PlateLookup')exitWith{};";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 5.37 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "closeDialog 0;if(!createDialog 'AM_PoliceDB')exitWith{};";

	x = 20.59 * GUI_GRID_W + GUI_GRID_X;
	y = 8.55 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1602: RscButtonHidden
{
	idc = 1602;
	action = "closedialog 0; [] call AM_PD_OpenWarrantsSubmit;";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 14.54 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1603: RscButtonHidden
{
	idc = 1603;
	action = "closeDialog 0;if(!createDialog 'AM_WarrantsMenu')exitWith{};";

	x = 20.55 * GUI_GRID_W + GUI_GRID_X;
	y = 11.45 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "icons\Menu_Police.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


};
class AM_PoliceDB{
	idd=-1;
	controls[]=
	{
		IGUIBack_2201,
		RscButton_1600,
		RscEdit_1400,
		IGUIBack_2200,
		RscListbox_1500
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Myseju)
	////////////////////////////////////////////////////////

	class IGUIBack_2201: IGUIBack
	{
		idc = 2201;
		x = -6 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 5.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Run Search"; //--- ToDo: Localize;
		x = -4.5 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 13 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[ctrlText 1400] call AM_PD_GetPoliceDBInfo";
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		text = "Suspect Name"; //--- ToDo: Localize;
		x = -4.5 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 13 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 21 * GUI_GRID_W;
		h = 25 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 19 * GUI_GRID_W;
		h = 22 * GUI_GRID_H;
	};
};
class AM_JailCell{
	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603,
		RscButton_1604,
		RscButton_1605,
		RscButton_1606,
		RscButton_1607,
		RscButton_1608,
		RscText_1000,
		RscButton_1609
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Qixyxo)
	////////////////////////////////////////////////////////

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 18 * GUI_GRID_W;
		h = 22 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "1"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""1"")];";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "2"; //--- ToDo: Localize;
		x = 18 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""2"")];";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "3"; //--- ToDo: Localize;
		x = 24 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""3"")];";
	};
	class RscButton_1603: RscButton
	{
		idc = 1603;
		text = "4"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 10 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""4"")];";
	};
	class RscButton_1604: RscButton
	{
		idc = 1604;
		text = "5"; //--- ToDo: Localize;
		x = 18 * GUI_GRID_W + GUI_GRID_X;
		y = 10 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""5"")];";
	};
	class RscButton_1605: RscButton
	{
		idc = 1605;
		text = "6"; //--- ToDo: Localize;
		x = 24 * GUI_GRID_W + GUI_GRID_X;
		y = 10 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""6"")];";
	};
	class RscButton_1606: RscButton
	{
		idc = 1606;
		text = "7"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 15 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""7"")];";
	};
	class RscButton_1607: RscButton
	{
		idc = 1607;
		text = "8"; //--- ToDo: Localize;
		x = 18 * GUI_GRID_W + GUI_GRID_X;
		y = 15 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""8"")];";
	};
	class RscButton_1608: RscButton
	{
		idc = 1608;
		text = "9"; //--- ToDo: Localize;
		x = 24 * GUI_GRID_W + GUI_GRID_X;
		y = 15 * GUI_GRID_H + GUI_GRID_Y;
		w = 4 * GUI_GRID_W;
		h = 3 * GUI_GRID_H;
		action="ctrlSetText[1000, (ctrlText 1000 + ""9"")];";
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = ""; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscButton_1609: RscButton
	{
		idc = 1609;
		text = "Submit Code"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 19 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[ctrlText 1000] call AM_Core_CheckJailCode;";
	};
};
class AM_PrisonTimer {
idd=-1;
controls[]=
{
	IGUIBack_2200,
	RscText_1000,
	RscText_1001,
	RscText_1002,
	RscText_1003,
	RscCombo_2100,
	RscCombo_2101,
	RscCombo_2102,
	RscButton_1600,
	RscButton_1601
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Cyzuzy)
////////////////////////////////////////////////////////

class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 31 * GUI_GRID_W;
	h = 17.5 * GUI_GRID_H;
};
class RscText_1000: RscText
{
	idc = 1000;
	text = "Suspect Prison Sentancing"; //--- ToDo: Localize;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscText_1001: RscText
{
	idc = 1001;
	text = "Minutes"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class RscText_1002: RscText
{
	idc = 1002;
	text = "Hours"; //--- ToDo: Localize;
	x = 28 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class RscText_1003: RscText
{
	idc = 1003;
	text = "Seconds"; //--- ToDo: Localize;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class RscCombo_2100: RscCombo
{
	idc = 2100;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscCombo_2101: RscCombo
{
	idc = 2101;
	x = 17.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscCombo_2102: RscCombo
{
	idc = 2102;
	x = 28.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Add Time"; //--- ToDo: Localize;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action="[lbCurSel 2100,lbCurSel 2101,lbCurSel 2102] call AM_PD_AddJailTime;";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Remove Time"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action="[lbCurSel 1200,lbCurSel 1201,lbCurSel 1202] call AM_PD_RemoveJailTime;";
};


};
class AM_GunRack{
idd=-1;
controls[]=
{
	IGUIBack_2200,
	RscListbox_1501,
	RscListbox_1500,
	RscButton_1600,
	RscButton_1601,
	RscText_1000
};
class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 29 * GUI_GRID_W;
	h = 23 * GUI_GRID_H;
};
class RscListbox_1501: RscListbox
{
	idc = 1501;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 18 * GUI_GRID_W;
	h = 11 * GUI_GRID_H;
};
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 18 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Store Gun"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action="[lbCurSel 1500] call AM_PD_StoreGunRack";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Retreive Gun"; //--- ToDo: Localize;
	x = 27 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action="[lbCurSel 1501] call AM_PD_TakeGunRack";
};
class RscText_1000: RscText
{
	idc = 1000;
	text = "Gun Rack"; //--- ToDo: Localize;
	x = 28.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};

};
class AM_PlateLookup{
	idd=-1;

	controls[]=
	{
		IGUIBack_2200,
		RscListbox_1500,
		RscText_1000,
		RscText_1001,
		RscEdit_1400,
		RscButton_1600,
		RscButton_1601
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 40 * GUI_GRID_W;
		h = 25 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 38 * GUI_GRID_W;
		h = 15 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Police License Plate Data Lookup"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 16.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Enter Plate:"; //--- ToDo: Localize;
		x = 6 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 6.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 13.5 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Run Search"; //--- ToDo: Localize;
		x = 28 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[ctrlText 1400] call AM_PD_FetchLicensePlateInfo";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Close"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="closeDialog 0";

	};
};
class AM_PoliceMenu{
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscCombo_2100,
		RscListbox_1500,
		RscButton_1600
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 6.5 * GUI_GRID_W + GUI_GRID_X;
		y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 25 * GUI_GRID_W;
		h = 25.5 * GUI_GRID_H;
	};
	class RscCombo_2100: RscCombo
	{
		idc = 2100;
		x = 9 * GUI_GRID_W + GUI_GRID_X;
		y = 3 * GUI_GRID_H + GUI_GRID_Y;
		w = 20 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 7 * GUI_GRID_W + GUI_GRID_X;
		y = 7 * GUI_GRID_H + GUI_GRID_Y;
		w = 24 * GUI_GRID_W;
		h = 19 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Perform Action"; //--- ToDo: Localize;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "[lbCurSel 2100] call AM_PD_PerformMenuAction;";
	};
};
class AM_DBAccess {
			idd=-1;
		controls[]=
		{
			IGUIBack_2200,
			RscButton_1600,
			RscButton_1601,
			RscButton_1602,
			RscButton_1603,
			RscButton_1604,
			RscText_1000
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Pizyvy)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 18.5 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Warrant Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "DMV Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Person Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Reports Database"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Close"; //--- ToDo: Localize;
			x = 12 * GUI_GRID_W + GUI_GRID_X;
			y = 19 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Database Access Menu"; //--- ToDo: Localize;
			x = 15 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

};
class AM_LookupMenu{
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602
	};

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 10 * GUI_GRID_W + GUI_GRID_X;
		y = 3 * GUI_GRID_H + GUI_GRID_Y;
		w = 20 * GUI_GRID_W;
		h = 9.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Warrants"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "[] call AM_Police_LookupWarrants;closeDialog 0;";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "License Plate Lookup"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "[] call AM_Police_LookupPlate;closeDialog 0;";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Close"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action = "closeDialog 0;";
	};
};

class AM_WarrantsMenu{
	idd=-1;
	onUnLoad = "[] call AM_PD_ClearVariables";
	controls[]=
	{
		IGUIBack_2200,
		RscFrame_1800,
		RscText_1000,
		RscEdit_1400,
		RscButton_1600,
		RscListbox_1500,
		RscText_1001,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603
	};

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -2.5 * GUI_GRID_W + GUI_GRID_X;
		y = -1 * GUI_GRID_H + GUI_GRID_Y;
		w = 45 * GUI_GRID_W;
		h = 27 * GUI_GRID_H;
	};
	class RscFrame_1800: RscFrame
	{
		idc = 1800;
		x = -1.5 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 12.5 * GUI_GRID_W;
		h = 6.5 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Suspect Name"; //--- ToDo: Localize;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 7.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = -1 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 11.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Submit Search"; //--- ToDo: Localize;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action="[ctrlText 1400] call AM_PD_GetWarrants";
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 11.5 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 27.5 * GUI_GRID_W;
		h = 21 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Warrant Database Lookup System"; //--- ToDo: Localize;
		x = 13.5 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "View Warrant"; //--- ToDo: Localize;
		x = 0.5 * GUI_GRID_W + GUI_GRID_X;
		y = 15 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_PD_ViewWarrant;";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Delete Warrant"; //--- ToDo: Localize;
		x = 0.5 * GUI_GRID_W + GUI_GRID_X;
		y = 18 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_PD_DeleteWarrant;";
	};
	class RscButton_1603: RscButton
	{
		idc = 1603;
		text = "Edit Warrant"; //--- ToDo: Localize;
		x = 0.5 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_PD_EditWarrant;";
	};
};

class AM_WarrantsSubmit{
	idd=-1;
	
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscFrame_1800,
		RscText_1001,
		RscEdit_1400,
		RscText_1002,
		RscEdit_1401,
		RscText_1003,
		RscEdit_1402,
		RscText_1004,
		RscCombo_2100,
		RscText_1005,
		RscCombo_2101,
		RscButton_1600
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 40 * GUI_GRID_W;
		h = 25 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Warrant Database System Submission"; //--- ToDo: Localize;
		x = 12.5 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 17 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
	};
	class RscFrame_1800: RscFrame
	{
		idc = 1800;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 38 * GUI_GRID_W;
		h = 22 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Warrant Suspect"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 23 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1002: RscText
	{
		idc = 1002;
		text = "Warrant Reason"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 23 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1003: RscText
	{
		idc = 1003;
		text = "Warrant Information"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1402: RscEdit
	{
		idc = 1402;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 23 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1004: RscText
	{
		idc = 1004;
		text = "Warrant Status"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscCombo_2100: RscCombo
	{
		idc = 2100;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1005: RscText
	{
		idc = 1005;
		text = "Warrant Type"; //--- ToDo: Localize;
		x = 25.5 * GUI_GRID_W + GUI_GRID_X;
		y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscCombo_2101: RscCombo
	{
		idc = 2101;
		x = 25.5 * GUI_GRID_W + GUI_GRID_X;
		y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Submit Warrant"; //--- ToDo: Localize;
		x = 13.5 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action="[ctrlText 1400,ctrlText 1401,ctrlText 1402,lbCurSel 2100,lbCurSel 2101] call AM_PD_SubmitWarrant;closeDialog 0;";
	};

}