class crafteo_DIALOG
{
    idd = -1;
    movingenable = true;
	onLoad = "uiNamespace setVariable ['crafteo_dialog', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['creafteo_dialog', nil]; abierto = nil;";

    class Controls
    {       
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Nidypy)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.412322 * safezoneW + safezoneX;
	y = 0.324 * safezoneH + safezoneY;
	w = 0.166073 * safezoneW;
	h = 0.2662 * safezoneH;
};
class textoItemDeseado: RscText
{
	idc = -1;
	text = "Item deseado:"; //--- ToDo: Localize;
	x = 0.416467 * safezoneW + safezoneX;
	y = 0.3394 * safezoneH + safezoneY;
	w = 0.0618906 * safezoneW;
	h = 0.0352 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class entradaItemDeseado: RscEdit
{
	idc = 9210;
	text = "polvora"; //--- ToDo: Localize;
	x = 0.481445 * safezoneW + safezoneX;
	y = 0.3394 * safezoneH + safezoneY;
	w = 0.0887097 * safezoneW;
	h = 0.0352 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	sizeEx = 0.030;
};
class textoNecesitas: RscText
{
	idc = -1;
	text = "Necesitas:"; //--- ToDo: Localize;
	x = 0.416468 * safezoneW + safezoneX;
	y = 0.3922 * safezoneH + safezoneY;
	w = 0.0474496 * safezoneW;
	h = 0.0374 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class listaNecesarios: Life_RscListBox 
{
	idc = 9211;
	x = 0.480416 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.0928353 * safezoneW;
	h = 0.11 * safezoneH;
	colorText[] = {1,1,1,1};
	sizeEx = 0.030;
};
class botonCraft: RscButton2
{
	action = "_nil = [ctrlText 9210] execVM ""ica\crafteo\crafteo.sqf""";

	idc = 9212;
	text = "CREAR"; //--- ToDo: Localize;
	x = 0.427797 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.135141 * safezoneW;
	h = 0.044 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


    };
};






















