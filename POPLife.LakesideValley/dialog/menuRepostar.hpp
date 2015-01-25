class repostar_dialog
{
	idd = -1;
	movingenable = true;
	onLoad = "uiNamespace setVariable ['repostar_dialog', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['repostar_dialog', nil]; abierto = nil;";
	
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Jyjyha)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.412321 * safezoneW + safezoneX;
	y = 0.3218 * safezoneH + safezoneY;
	w = 0.166073 * safezoneW;
	h = 0.2662 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};
class textoCombustible: RscText
{
	idc = 9250;
	text = "Combustible actual:"; //--- ToDo: Localize;
	x = 0.41956 * safezoneW + safezoneX;
	y = 0.3394 * safezoneH + safezoneY;
	w = 0.144411 * safezoneW;
	h = 0.0352 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class entradaCombustible: RscEdit
{
	idc = 9251;
	text = ""; //--- ToDo: Localize;
	x = 0.523725 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0361032 * safezoneW;
	h = 0.0352 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class botonRepostar: RscButton2
{
	action = "closeDialog 0; _nil = [ctrlText 9251] execVM ""ica\combustible\repostar.sqf""";

	idc = -1;
	text = "REPOSTAR"; //--- ToDo: Localize;
	x = 0.427797 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.135141 * safezoneW;
	h = 0.044 * safezoneH;
};
class textoRecursos: RscText
{
	idc = 9252;
	text = "Recursos de combustible:"; //--- ToDo: Localize;
	x = 0.419542 * safezoneW + safezoneX;
	y = 0.3834 * safezoneH + safezoneY;
	w = 0.144411 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class RscText_1002: RscText
{
	idc = -1;
	text = "Cantidad a repostar:"; //--- ToDo: Localize;
	x = 0.419542 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.156794 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoPrecio: RscText
{
	idc = 9253;
	text = "Precio:"; //--- ToDo: Localize;
	x = 0.419542 * safezoneW + safezoneX;
	y = 0.4714 * safezoneH + safezoneY;
	w = 0.144411 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


	};
};

