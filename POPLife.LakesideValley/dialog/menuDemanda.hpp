class demanda_DIALOG
{
    idd = -1;
    movingenable = true;
	onLoad = "uiNamespace setVariable ['demanda_DIALOG', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['demanda_DIALOG', nil]; abierto = nil";

    class Controls
    {       

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Pileqo)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.365904 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.207339 * safezoneW;
	h = 0.2332 * safezoneH;
};
class textoCannabis: RscText
{
	idc = 9283;
	text = "Cannabis"; //--- ToDo: Localize;
	x = 0.41851 * safezoneW + safezoneX;
	y = 0.3834 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoHeroina: RscText
{
	idc = 9284;
	text = "H. Heroina"; //--- ToDo: Localize;
	x = 0.470085 * safezoneW + safezoneX;
	y = 0.3834 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoCocaina: RscText
{
	idc = 9285;
	text = "H. Coca"; //--- ToDo: Localize;
	x = 0.521659 * safezoneW + safezoneX;
	y = 0.3834 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textodemanda: RscText
{
	idc = -1;
	text = ""; //--- ToDo: Localize;
	x = 0.367974 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class demMar: RscText
{
	idc = 9270;
	text = "70"; //--- ToDo: Localize;
	x = 0.427797 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class demHer: RscText
{
	idc = 9271;
	text = "70"; //--- ToDo: Localize;
	x = 0.47731 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class demCoc: RscText
{
	idc = 9272;
	text = "70"; //--- ToDo: Localize;
	x = 0.528883 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoPrecio: RscText
{
	idc = -1;
	text = "Precio"; //--- ToDo: Localize;
	x = 0.367974 * safezoneW + safezoneX;
	y = 0.4714 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class pMar: RscText
{
	idc = 9273;
	text = "6000"; //--- ToDo: Localize;
	x = 0.422641 * safezoneW + safezoneX;
	y = 0.4714 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class pHer: RscText
{
	idc = 9274;
	text = "6000"; //--- ToDo: Localize;
	x = 0.474215 * safezoneW + safezoneX;
	y = 0.4714 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class pCoc: RscText
{
	idc = 9275;
	text = "6000"; //--- ToDo: Localize;
	x = 0.525787 * safezoneW + safezoneX;
	y = 0.4692 * safezoneH + safezoneY;
	w = 0.0474335 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class botonCan: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderCan.sqf""";
	
	idc = 9276;
	text = "VENDER"; //--- ToDo: Localize;
	x = 0.417478 * safezoneW + safezoneX;
	y = 0.5154 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
class botonHer: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderHer.sqf""";

	idc = 9277;
	text = "VENDER"; //--- ToDo: Localize;
	x = 0.469053 * safezoneW + safezoneX;
	y = 0.5154 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
class botonCoc: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderCoc.sqf""";
	
	idc = 9278;
	text = "VENDER"; //--- ToDo: Localize;
	x = 0.520631 * safezoneW + safezoneX;
	y = 0.5154 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
class entradaCan: RscEdit
{
	idc = 9279;
	text = "1"; //--- ToDo: Localize;
	x = 0.378282 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.0278508 * safezoneW;
	h = 0.0374 * safezoneH;
};
class comprarCan: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\comprarCan.sqf""";
	
	idc = 9280;
	text = "COMPRAR"; //--- ToDo: Localize;
	x = 0.417893 * safezoneW + safezoneX;
	y = 0.558667 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
class comprarHer: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\comprarHer.sqf""";

	idc = 9281;
	text = "COMPRAR"; //--- ToDo: Localize;
	x = 0.469053 * safezoneW + safezoneX;
	y = 0.5594 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
class comprarCoc: RscButton2
{
	action = "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\comprarCoc.sqf""";

	idc = 9282;
	text = "COMPRAR"; //--- ToDo: Localize;
	x = 0.521033 * safezoneW + safezoneX;
	y = 0.560407 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0352 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


    };
};

