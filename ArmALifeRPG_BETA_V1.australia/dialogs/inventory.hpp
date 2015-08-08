class AM_Housing{
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscListbox_1500,
		RscButton_1600,
		RscText_1000
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Zepoxi)
	////////////////////////////////////////////////////////

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
		y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 38 * GUI_GRID_W;
		h = 16 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Process Action"; //--- ToDo: Localize;
		x = 12.5 * GUI_GRID_W + GUI_GRID_X;
		y = 20 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_Core_Housing";
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Housing Menu"; //--- ToDo: Localize;
		x = 17 * GUI_GRID_W + GUI_GRID_X;
		y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 9 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};

};
class AM_PlayerShop_Access  {
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscListbox_1500,
		RscButton_1600
	};

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 38 * GUI_GRID_W;
		h = 15 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Shop Access Menu"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 2 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 36 * GUI_GRID_W;
		h = 9 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Process"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_PlayerShops_AccessAction;";
	};

};
class AM_Company_Transfer { 
	idd=-1;
	controls[]=
		{
			IGUIBack_2200,
			RscText_1000,
			RscListbox_1500,
			RscListbox_1501,
			RscText_1001,
			RscText_1002,
			RscButton_1600,
			RscButton_1601,
			RscEdit_1400
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Dikoqi)
		////////////////////////////////////////////////////////

		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 0 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 40 * GUI_GRID_W;
			h = 28 * GUI_GRID_H;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Company Shop Transfer Menu"; //--- ToDo: Localize;
			x = 12.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.95 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 18 * GUI_GRID_W;
			h = 18 * GUI_GRID_H;
		};
		class RscListbox_1501: RscListbox
		{
			idc = 1501;
			x = 21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 18 * GUI_GRID_H;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Shop Stocks"; //--- ToDo: Localize;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Company Warehouses"; //--- ToDo: Localize;
			x = 29.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Transfer to Warehouse"; //--- ToDo: Localize;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action="[(lbCurSel 1500),ctrlText 1400, ""TO_WAREHOUSE""] call AM_Company_Transfer;";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Transfer to Shop"; //--- ToDo: Localize;
			x = 23 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			action="[(lbCurSel 1501),ctrlText 1400, ""TO_SHOP""] call AM_Company_Transfer;";
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			text = "1"; //--- ToDo: Localize;
			x = 19 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 2.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};

};
class AM_Company_Shops {
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscListbox_1500,
		RscButton_1600,
		RscButton_1601,
		RscEdit_1400,
		RscEdit_1401,
		RscButton_1602
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
		text = "Company Shop Management"; //--- ToDo: Localize;
		x = 14.5 * GUI_GRID_W + GUI_GRID_X;
		y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 15 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 20 * GUI_GRID_W;
		h = 17 * GUI_GRID_H;
		onLBSelChanged = "[lbCurSel 1500] call AM_Company_ShopInfoDisplay;";
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Update Information"; //--- ToDo: Localize;
		x = 23 * GUI_GRID_W + GUI_GRID_X;
		y = 11 * GUI_GRID_H + GUI_GRID_Y;
		w = 11.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500, ctrlText 1400, ctrlText 1401] call AM_Company_UpdateShopINfo";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Transfer Menu"; //--- ToDo: Localize;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 22 * GUI_GRID_H + GUI_GRID_Y;
		w = 11.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[lbCurSel 1500] call AM_Company_TransferMenu";
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		text = "Shop Name"; //--- ToDo: Localize;
		x = 23 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		text = "Shop Price"; //--- ToDo: Localize;
		x = 23 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Sell at Stock Price"; //--- ToDo: Localize;
		x = 14 * GUI_GRID_W + GUI_GRID_X;
		y = 22 * GUI_GRID_H + GUI_GRID_Y;
		w = 11.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_Company_SellShop;";
	};

};
class AM_Company_Ranks {
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscText_1001,
		RscEdit_1400,
		RscEdit_1401,
		RscCombo_2100,
		RscText_1002,
		RscCombo_2101,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscEdit_1402,
		RscEdit_1403
	};

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 38 * GUI_GRID_W;
		h = 23 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Rank Management"; //--- ToDo: Localize;
		x = 15 * GUI_GRID_W + GUI_GRID_X;
		y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Rank Creation"; //--- ToDo: Localize;
		x = 2 * GUI_GRID_W + GUI_GRID_X;
		y = 4 * GUI_GRID_H + GUI_GRID_Y;
		w = 8 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		text = "Rank Name"; //--- ToDo: Localize;
		x = 2 * GUI_GRID_W + GUI_GRID_X;
		y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		text = "Rank Salary"; //--- ToDo: Localize;
		x = 15 * GUI_GRID_W + GUI_GRID_X;
		y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscCombo_2100: RscCombo
	{
		idc = 2100;
		x = 27.5 * GUI_GRID_W + GUI_GRID_X;
		y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 10.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1002: RscText
	{
		idc = 1002;
		text = "Rank Management"; //--- ToDo: Localize;
		x = 8 * GUI_GRID_W + GUI_GRID_X;
		y = 10 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscCombo_2101: RscCombo
	{
		idc = 2101;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 12 * GUI_GRID_H + GUI_GRID_Y;
		w = 20 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Delete Rank"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 16 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[(lbCurSel 2101)] call AM_Company_DeleteRank;";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Update Rank"; //--- ToDo: Localize;
		x = 14 * GUI_GRID_W + GUI_GRID_X;
		y = 16 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[(ctrlText 1402),(ctrlText 1403),(lbCurSel 2101)] call AM_Company_UpdateRank;";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Create Rank"; //--- ToDo: Localize;
		x = 28 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[(ctrlText 1400),(ctrlText 1401),(lbCurSel 2100)] call AM_Company_CreateRank;";
	};
	class RscEdit_1402: RscEdit
	{
		idc = 1402;
		text = "Rank Name"; //--- ToDo: Localize;
		x = 3 * GUI_GRID_W + GUI_GRID_X;
		y = 14 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscEdit_1403: RscEdit
	{
		idc = 1403;
		text = "Rank Salary"; //--- ToDo: Localize;
		x = 14 * GUI_GRID_W + GUI_GRID_X;
		y = 14 * GUI_GRID_H + GUI_GRID_Y;
		w = 9.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};

};
class AM_Company_Main { 
idd=-1;
controls[]=
{
	IGUIBack_2200,
	RscText_1000,
	RscListbox_1500,
	RscListbox_1501,
	RscText_1001,
	RscText_1002,
	RscButton_1600,
	RscButton_1601,
	RscButton_1602,
	RscButton_1603,
	RscButton_1604,
	RscText_1003,
	RscText_1004
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Tajeze)
////////////////////////////////////////////////////////
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class RscListbox_1501: RscListbox
{
	idc = 1501;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
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
	text = "Company Menu"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscText_1001: RscText
{
	idc = 1001;
	text = "Employees"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscText_1002: RscText
{
	idc = 1002;
	text = "Stores"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Manage Employees"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 22 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "call AM_Company_ManageEmployees;";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Manage Ranks"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 19 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "call AM_Company_ManageRanks;";
};
class RscButton_1602: RscButton
{
	idc = 1602;
	text = "Manage Stores"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "call AM_Company_ManageStores;";
};
class RscButton_1603: RscButton
{
	idc = 1603;
	text = "My Information"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "call AM_Company_MyInfo;";
};
class RscButton_1604: RscButton
{
	idc = 1604;
	text = "My Jobs"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "call AM_Company_MyJobs;";
};
class RscText_1003: RscText
{
	idc = 1003;
	text = "Employee Menu"; //--- ToDo: Localize;
	x = 27.5 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};
class RscText_1004: RscText
{
	idc = 1004;
	text = "Management Menu"; //--- ToDo: Localize;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
};

};


class AM_LicenseTest {
idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscCombo_2100,
		RscButton_1600
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 40 * GUI_GRID_W;
		h = 10 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "License Test Name"; //--- ToDo: Localize;
		x = 15 * GUI_GRID_W + GUI_GRID_X;
		y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 22.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscCombo_2100: RscCombo
	{
		idc = 2100;
		x = 5 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 31 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Submit Answer"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 11 * GUI_GRID_H + GUI_GRID_Y;
		w = 17 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
		action="[lbCurSel 2100] call AM_Core_CheckTestAnswer";
	};
};
class AM_Factory{
	onLoad="AM_FactoryOpen = true;";
	onUnLoad="AM_FactoryOpen = false;";
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscListbox_1500,
		RscListbox_1501,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Nogaqo)
	////////////////////////////////////////////////////////

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
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 18 * GUI_GRID_W;
		h = 16 * GUI_GRID_H;
	};
	class RscListbox_1501: RscListbox
	{
		idc = 1501;
		x = 21 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 18 * GUI_GRID_W;
		h = 16 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Add to Factory"; //--- ToDo: Localize;
		x = 29 * GUI_GRID_W + GUI_GRID_X;
		y = 18 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
		action="[lbCurSel 1501] call AM_Core_AddFactory";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Take from Factory"; //--- ToDo: Localize;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 18 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
		action="[lbCurSel 1500] call AM_Core_TakeFactory";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Process Factory"; //--- ToDo: Localize;
		x = 15.5 * GUI_GRID_W + GUI_GRID_X;
		y = 18 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2.5 * GUI_GRID_H;
		action="[] call AM_Core_ProcessFactory;";
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////

};
class AM_MedicMenu {
	onLoad = "";
	onUnload = "";
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscListbox_1500,
		RscListbox_1501,
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
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 23 * GUI_GRID_H;
	};
	class RscListbox_1501: RscListbox
	{
		idc = 1501;
		x = 16.5 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 22.5 * GUI_GRID_W;
		h = 18 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Perform Action"; //--- ToDo: Localize;
		x = 16.5 * GUI_GRID_W + GUI_GRID_X;
		y = 20 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500, lbCurSel 1501] call AM_EMT_PerformMedicalAction";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Diagnose Client"; //--- ToDo: Localize;
		x = 29 * GUI_GRID_W + GUI_GRID_X;
		y = 20 * GUI_GRID_H + GUI_GRID_Y;
		w = 10 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[AM_InteractTarget] call AM_EMT_DiagnoseClient";
	};
};

class AM_LoginMenu{
	idd=-1099001;
	onLoad="(findDisplay 1099001) displayAddEventHandler [""KeyDown"", ""if ((_this select 1) == 1) then { true }""]; ";
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscText_1001,
		RscEdit_1400,
		RscText_1002,
		RscEdit_1401,
		RscButton_1600
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Jyqomo)
	////////////////////////////////////////////////////////

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 10 * GUI_GRID_W + GUI_GRID_X;
		y = 3 * GUI_GRID_H + GUI_GRID_Y;
		w = 16 * GUI_GRID_W;
		h = 17.5 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Login System"; //--- ToDo: Localize;
		x = 15 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 6 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Username"; //--- ToDo: Localize;
		x = 10.5 * GUI_GRID_W + GUI_GRID_X;
		y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		text = ""; //--- ToDo: Localize;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 12.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1002: RscText
	{
		idc = 1002;
		text = "Password"; //--- ToDo: Localize;
		x = 10.5 * GUI_GRID_W + GUI_GRID_X;
		y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		text = ""; //--- ToDo: Localize;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 11 * GUI_GRID_H + GUI_GRID_Y;
		w = 12.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Login"; //--- ToDo: Localize;
		x = 12 * GUI_GRID_W + GUI_GRID_X;
		y = 17 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[ctrlText 1400,ctrlText 1401] call AM_Core_CheckLoginInfo";
	};
};
class AM_VehicleTrunk{
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscListbox_1500,
		RscButton_1600,
		RscListbox_1501,
		RscButton_1601,
		RscText_1000,
		RscEdit_1400,
		RscText_1001
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 40 * GUI_GRID_W;
		h = 23 * GUI_GRID_H;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 21 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Store Item"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 8 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1501,ctrlText 1400] call AM_Core_TrunkStore;";
	};
	class RscListbox_1501: RscListbox
	{
		idc = 1501;
		x = 25 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 21 * GUI_GRID_H;
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Retreive Item"; //--- ToDo: Localize;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 11 * GUI_GRID_H + GUI_GRID_Y;
		w = 8 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action="[lbCurSel 1500,ctrlText 1400] call AM_Core_TrunkTake;";
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Space Left:"; //--- ToDo: Localize;
		x = 17.5 * GUI_GRID_W + GUI_GRID_X;
		y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 5.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 16 * GUI_GRID_W + GUI_GRID_X;
		y = 6 * GUI_GRID_H + GUI_GRID_Y;
		w = 8 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "0kg"; //--- ToDo: Localize;
		x = 17.5 * GUI_GRID_W + GUI_GRID_X;
		y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 5.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
};
class AM_Vehicleinteract{
	onUnload = "AM_InteractTarget = nil";
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscButton_1603,
		RscButton_1604,
		RscButton_1605,
		RscButton_1606
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by DEADdem, v1.063, #Mitodu)
	////////////////////////////////////////////////////////

	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = 11 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 18 * GUI_GRID_W;
		h = 23 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Repair Vehicle"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_Core_RepairVehicle";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Unflip Vehicle"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 5 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_Core_UnflipVehicle";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Access Trunk"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 8 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_Core_AccessTrunk";
	};
	class RscButton_1603: RscButton
	{
		idc = 1603;
		text = "[COP] Weapon Rack"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 17 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_PD_GunRack";
	};
	class RscButton_1604: RscButton
	{
		idc = 1604;
		text = "View Information"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 11 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_Core_ViewInfo";
	};
	class RscButton_1605: RscButton
	{
		idc = 1605;
		text = "Install Upgrade"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 14 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_Core_UpgradeMenu";
	};
	class RscButton_1606: RscButton
	{
		idc = 1606;
		text = "Close"; //--- ToDo: Localize;
		x = 13 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "closeDialog 0";
	};

};
class AM_VehicleStorage{
	idd=-1;
	
	controls[]=
	{
		RscPicture_1200,
		RscListbox_1500,
		RscButton_1600,
		RscButton_1601
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Hifizy)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "\ALRPG_Client\Menu_Garage.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[lbCurSel 1500] call AM_Core_RetreiveVehicle;";

	x = 22.55 * GUI_GRID_W + GUI_GRID_X;
	y = 22.29 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "[lbCurSel 1500] call AM_Core_StoreVehicle;";

	x = 31.8 * GUI_GRID_W + GUI_GRID_X;
	y = 22.33 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscListbox_1500: RscListBoxHidden
{
	idc = 1500;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 38 * GUI_GRID_W;
	h = 18.5 * GUI_GRID_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


};

class AM_Inventory{
	idd=202;
	controls[]=
	{
		RscPicture_1200,
		RscListbox_1500,
		RscButton_1600,
		RscButton_1601,
		RscEdit_1400,
		RscListbox_1501,
		RscCombo_2100,
		RscButton_1602
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Hisifo)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "\ALRPG_Client\Menu_Inventory.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscListbox_1500: RscListBoxHidden
{
	idc = 2;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 29.5 * GUI_GRID_W;
	h = 18.5 * GUI_GRID_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[lbCurSel 2, ctrlText 1400] call AM_Inventory_UseItem;";

	x = 31.8 * GUI_GRID_W + GUI_GRID_X;
	y = 3.25 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "[lbCurSel 2, ctrlText 1400] spawn AM_Core_DropItem";

	x = 31.79 * GUI_GRID_W + GUI_GRID_X;
	y = 4.92 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscEdit_1400: RscEdit
{
	idc = 1400;

	x = 31.8 * GUI_GRID_W + GUI_GRID_X;
	y = 1.63 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscListbox_1501: RscListBoxHidden
{
	idc = 1;

	x = 32 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 13 * GUI_GRID_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class RscCombo_2100: RscCombo
{
	idc = 2100;

	x = 0.8 * GUI_GRID_W + GUI_GRID_X;
	y = 21.67 * GUI_GRID_H + GUI_GRID_Y;
	w = 30 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1602: RscButtonHidden
{
	idc = 1602;
	action = "[lbCurSel 2, lbCurSel 2100, ctrlText 1400] call AM_Inventory_GiveItem";

	x = 31.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



};

class AM_Shop{
	idd=-1;
	onLoad = "AM_InShop=true";
	onUnLoad = "AM_InShop=false";
	controls[]=
	{
		RscPicture_1200,
		RscListbox_1500,
		RscListbox_1501,
		RscEdit_1400,
		RscEdit_1401,
		RscButton_1600,
		RscButton_1601
	};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Kidaxa)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "\ALRPG_Client\Menu_Shops.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscListbox_1500: RscListBoxHidden
{
	idc = 1500;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 38 * GUI_GRID_W;
	h = 8.5 * GUI_GRID_H;
};
class RscListbox_1501: RscListBoxHidden
{
	idc = 1501;

	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 38 * GUI_GRID_W;
	h = 8.5 * GUI_GRID_H;
};
class RscEdit_1400: RscEdit
{
	idc = 1400;

	x = 0.75 * GUI_GRID_W + GUI_GRID_X;
	y = 22.29 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscEdit_1401: RscEdit
{
	idc = 1401;

	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 22.29 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[lbCurSel 1501, ctrlText 1401] call AM_Shop_Sell;";

	x = 31.8 * GUI_GRID_W + GUI_GRID_X;
	y = 22.33 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class RscButton_1601: RscButtonHidden
{
	idc = 1601;
	action = "[lbCurSel 1500, ctrlText 1400] call AM_Shops_Buy;";

	x = 8.6 * GUI_GRID_W + GUI_GRID_X;
	y = 22.33 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};


class AM_ATM{
	idd=-1;

	controls[]=
	{
		RscPicture_1200,
		RscCombo_2100,
		RscEdit_1400,
		RscEdit_1401,
		RscEdit_1402,
		RscButton_1600	
	};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Jamie, v1.063, #Kakevi)
////////////////////////////////////////////////////////

class RscPicture_1200: RscPicture
{
	idc = 1200;

	text = "\ALRPG_Client\ATM.paa";
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = -3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 42 * GUI_GRID_W;
	h = 31.5 * GUI_GRID_H;
};
class RscCombo_2100: RscCombo
{
	idc = 2100;

	x = 13 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 18 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscEdit_1400: RscEdit
{
	idc = 1400;

	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 16 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscEdit_1401: RscEdit
{
	idc = 1401;

	x = 14 * GUI_GRID_W + GUI_GRID_X;
	y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 17 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscEdit_1402: RscEdit
{
	idc = 1402;

	x = 14 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 17 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscButton_1600: RscButtonHidden
{
	idc = 1600;
	action = "[(ctrlText 1400),(ctrlText 1401),(ctrlText 1402),(lbCurSel 2100)] call AM_Core_ATMProcess";

	x = 16.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
	class AM_Gang {
		idd = -1;
		controls[]=
		{
			IGUIBack_2200,
			RscButton_1600,
			RscButton_1601,
			RscButton_1602,
			RscListbox_1500,
			RscEdit_1400,
			RscText_1000
		};	
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -2 * GUI_GRID_W + GUI_GRID_X;
		y = -2 * GUI_GRID_H + GUI_GRID_Y;
		w = 44.5 * GUI_GRID_W;
		h = 22.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Join Gang"; //--- ToDo: Localize;
		x = 4 * GUI_GRID_W + GUI_GRID_X;
		y = 16 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[(lbData [1500, (lbCurSel 1500)])] call AM_JoinGang";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Leave Gang"; //--- ToDo: Localize;
		x = 24 * GUI_GRID_W + GUI_GRID_X;
		y = 16 * GUI_GRID_H + GUI_GRID_Y;
		w = 12 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[] call AM_LeaveGang;if (AM_GangLeader) exitWith {[lbCurSel 1500] call AM_RemoveGang}";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Create Gang"; //--- ToDo: Localize;
		x = 26 * GUI_GRID_W + GUI_GRID_X;
		y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[(ctrlText 1400)] call AM_GangName";
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 8.5 * GUI_GRID_W + GUI_GRID_X;
		y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 24 * GUI_GRID_W;
		h = 8.5 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 7.5 * GUI_GRID_W + GUI_GRID_X;
		y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 16.5 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Gang Name:"; //--- ToDo: Localize;
		x = 1 * GUI_GRID_W + GUI_GRID_X;
		y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 5.5 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
};
class AM_JobMarker 
{
	idd = -1;
	controls[]=
	{
		IGUIBack_2200,
		RscButton_1600,
		RscButton_1601,
		RscButton_1602,
		RscListbox_1500,
		RscEdit_1400,
		RscEdit_1401,
		RscText_1000
	};	
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -8 * GUI_GRID_W + GUI_GRID_X;
		y = 1 * GUI_GRID_H + GUI_GRID_Y;
		w = 58 * GUI_GRID_W;
		h = 23 * GUI_GRID_H;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 4 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscEdit_1401: RscEdit
	{
		idc = 1401;
		x = 25 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "Job Name :"; //--- ToDo: Localize;
		x = -1.5 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscText_1001: RscText
	{
		idc = 1001;
		text = "Job Salary :"; //--- ToDo: Localize;
		x = 19.5 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 7 * GUI_GRID_W;
		h = 1.5 * GUI_GRID_H;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Create Job"; //--- ToDo: Localize;
		x = 38 * GUI_GRID_W + GUI_GRID_X;
		y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 11 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[(ctrlText 1400), (ctrlText 1401)] call AM_CreateMarker";
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Take Job"; //--- ToDo: Localize;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[lbCurSel 1500] call AM_TakeJob";
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "End Job"; //--- ToDo: Localize;
		x = 26 * GUI_GRID_W + GUI_GRID_X;
		y = 21 * GUI_GRID_H + GUI_GRID_Y;
		w = 14 * GUI_GRID_W;
		h = 2 * GUI_GRID_H;
		action = "[lbCurSel 1500] call AM_Endjob;";
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
		w = 42 * GUI_GRID_W;
		h = 12.5 * GUI_GRID_H;
	};
};
