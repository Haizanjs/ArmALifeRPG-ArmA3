////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Taliban, v1.063, #Xaqeri)
////////////////////////////////////////////////////////

class AM_AdminMenu  {
	idd=-1;
	controls[]=
	{
		IGUIBack_2200,
		RscText_1000,
		RscButton_1600,
		RscButton_1601
	};

class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 6 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 28 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
};
class RscText_1000: RscText
{
	idc = 1000;
	text = "ItsMyLife The Jew"; //--- ToDo: Localize;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Teleport"; //--- ToDo: Localize;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "[] call AM_Teleport";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Money"; //--- ToDo: Localize;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	action = "[] call AM_AddMoney";
};
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
