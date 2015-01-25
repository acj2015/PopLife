class loteria_DIALOG
{
    idd = -1;
    movingenable = true;
	onLoad = "uiNamespace setVariable ['loteria_DIALOG', _this select 0];";
	onUnLoad = "uiNamespace setVariable ['loteria_DIALOG', nil]";

    class Controls
    {       
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Sazepu)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.417479 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.154726 * safezoneW;
	h = 0.286 * safezoneH;
};
class tiempo: RscText
{
	idc = 9000;
	x = 0.512378 * safezoneW + safezoneX;
	y = 0.3614 * safezoneH + safezoneY;
	w = 0.0474555 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class numeroganador: RscText
{
	idc = 9001;
	x = 0.512379 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0474555 * safezoneW;
	h = 0.0352 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class minumero: RscText
{
	idc = 9002;
	x = 0.512379 * safezoneW + safezoneX;
	y = 0.4934 * safezoneH + safezoneY;
	w = 0.0474555 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class botonComprar: RscButton2
{
	action = "closeDialog 0; _nil = [player] execVM ""ica\loteria\loteria.sqf""; _nil = [player] execVM ""ica\loteria\menuloteria.sqf""";
	
	idc = -1;
	text = "Comprar"; //--- ToDo: Localize;
	x = 0.427792 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.0618903 * safezoneW;
	h = 0.055 * safezoneH;
	tooltip = "Cuesta 3.000"; //--- ToDo: Localize;
};
class botoncobrar: RscButton2
{
	action = "closeDialog 0; _nil = [player] execVM ""ica\loteria\cobrar.sqf""";
	
	idc = -1;
	text = "Cobrar"; //--- ToDo: Localize;
	x = 0.499998 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.0618903 * safezoneW;
	h = 0.055 * safezoneH;
};
class RscText_1003: RscText
{
	idc = -1;
	text = "Tiempo restante:"; //--- ToDo: Localize;
	x = 0.429857 * safezoneW + safezoneX;
	y = 0.3614 * safezoneH + safezoneY;
	w = 0.0794261 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class RscText_1004: RscText
{
	idc = -1;
	text = "Tu numero es:"; //--- ToDo: Localize;
	x = 0.429857 * safezoneW + safezoneX;
	y = 0.4274 * safezoneH + safezoneY;
	w = 0.0794261 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class RscText_1005: RscText
{
	idc = -1;
	text = "Numero ganador:"; //--- ToDo: Localize;
	x = 0.429857 * safezoneW + safezoneX;
	y = 0.4934 * safezoneH + safezoneY;
	w = 0.0804577 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


    };
};






















