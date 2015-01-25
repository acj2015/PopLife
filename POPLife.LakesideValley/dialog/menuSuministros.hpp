class suministros_dialog
{
	idd = -1;
	movingenable = true;
	onLoad = "uiNamespace setVariable ['suministros_dialog', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['suministros_dialog', nil]; abierto = nil;";
	
	class controls {

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Pawane)
////////////////////////////////////////////////////////

class fondoNegro: IGUIBack
{
	idc = -1;
	x = 0.429864 * safezoneW + safezoneX;
	y = 0.3218 * safezoneH + safezoneY;
	w = 0.144402 * safezoneW;
	h = 0.1782 * safezoneH;
};
class nombreSum: RscText
{
	idc = 9300;
	text = "Nombredealgo"; //--- ToDo: Localize;
	x = 0.469055 * safezoneW + safezoneX;
	y = 0.3174 * safezoneH + safezoneY;
	w = 0.0629218 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class cantidadSum: RscText
{
	idc = 9301;
	text = "1000/1000"; //--- ToDo: Localize;
	x = 0.473182 * safezoneW + safezoneX;
	y = 0.3614 * safezoneH + safezoneY;
	w = 0.0515753 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class precioCompra: RscText
{
	idc = 9302;
	text = "1000 E/u"; //--- ToDo: Localize;
	x = 0.439141 * safezoneW + safezoneX;
	y = 0.4538 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class botonComprar: RscButton2
{
	idc = 9304;
	text = "Comprar"; //--- ToDo: Localize;
	x = 0.438108 * safezoneW + safezoneX;
	y = 0.4054 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
};
class botonVender: RscButton2
{
	idc = 9305;
	text = "Vender"; //--- ToDo: Localize;
	x = 0.522693 * safezoneW + safezoneX;
	y = 0.4054 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
};
class entrada: RscEdit
{
	idc = 9303;
	text = "1"; //--- ToDo: Localize;
	x = 0.491749 * safezoneW + safezoneX;
	y = 0.4054 * safezoneH + safezoneY;
	w = 0.0225043 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
};
class precioVenta: RscText
{
	idc = 9306;
	text = "1000 E/u"; //--- ToDo: Localize;
	x = 0.522693 * safezoneW + safezoneX;
	y = 0.4516 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


	};
};

