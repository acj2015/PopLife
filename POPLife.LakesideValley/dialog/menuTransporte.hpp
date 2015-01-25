class trans_dialog
{
	idd = -1;
	movingenable = true;
	onLoad = "uiNamespace setVariable ['trans_dialog', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['trans_dialog', nil]; abierto = nil;";
	
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Qahowo)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.211111 * safezoneW + safezoneX;
	y = 0.15 * safezoneH + safezoneY;
	w = 0.513333 * safezoneW;
	h = 0.63332 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
};
class botonPyr: RscButton2
{
	action = "closeDialog 0; _nil = ['Memorial', ctrlText 9081, ctrlText 9030] execVM ""ica\transporte\destino.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};
	
	idc = 9083;
	text = "Memorial"; //--- ToDo: Localize;
	x = 0.288889 * safezoneW + safezoneX;
	y = 0.2 * safezoneH + safezoneY;
	w = 0.0663349 * safezoneW;
	h = 0.0340001 * safezoneH;
};
class RscText_1005: RscText
{
	shadow = 0;

	idc = -1;
	text = "Alimento"; //--- ToDo: Localize;
	x = 0.228889 * safezoneW + safezoneX;
	y = 0.283333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class RscText_1009: RscText
{
	shadow = 0;

	idc = -1;
	text = "Medicamentos"; //--- ToDo: Localize;
	x = 0.226888 * safezoneW + safezoneX;
	y = 0.383333 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class RscText_1010: RscText
{
	shadow = 0;

	idc = -1;
	text = "Agua"; //--- ToDo: Localize;
	x = 0.228885 * safezoneW + safezoneX;
	y = 0.486666 * safezoneH + safezoneY;
	w = 0.0622224 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class RscText_1011: RscText
{
	shadow = 0;

	idc = -1;
	text = "Combustible"; //--- ToDo: Localize;
	x = 0.228884 * safezoneW + safezoneX;
	y = 0.586665 * safezoneH + safezoneY;
	w = 0.0622223 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class botonAbd: RscButton2
{
	action = "closeDialog 0; _nil = ['Aeropuerto', ctrlText 9081, ctrlText 9030] execVM ""ica\transporte\destino.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};

	idc = 9084;
	text = "Aeropuerto"; //--- ToDo: Localize;
	x = 0.377778 * safezoneW + safezoneX;
	y = 0.2 * safezoneH + safezoneY;
	w = 0.0663349 * safezoneW;
	h = 0.0340001 * safezoneH;
};
class botonAth: RscButton2
{
	action = "closeDialog 0; _nil = ['Diablos', ctrlText 9081, ctrlText 9030] execVM ""ica\transporte\destino.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};

	idc = 9085;
	text = "Diablos"; //--- ToDo: Localize;
	x = 0.466667 * safezoneW + safezoneX;
	y = 0.2 * safezoneH + safezoneY;
	w = 0.0663349 * safezoneW;
	h = 0.0340001 * safezoneH;
};
class botonKal: RscButton2
{
	action = "closeDialog 0; _nil = ['Morrison', ctrlText 9081, ctrlText 9030] execVM ""ica\transporte\destino.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};

	idc = 9086;
	text = "Morrison"; //--- ToDo: Localize;
	x = 0.555556 * safezoneW + safezoneX;
	y = 0.2 * safezoneH + safezoneY;
	w = 0.0663349 * safezoneW;
	h = 0.0340001 * safezoneH;
};
class medMem: RscText
{
	shadow = 0;

	idc = 9041;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.37 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aliMem: RscText
{
	shadow = 0;

	idc = 9040;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aguMem: RscText
{
	shadow = 0;

	idc = 9042;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.47 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class comMem: RscText
{
	shadow = 0;

	idc = 9043;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class paliMem: RscText
{
	shadow = 0;

	idc = 9045;
	text = ""; //--- ToDo: Localize;
	x = 0.291112 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pmedMem: RscText
{
	shadow = 0;

	idc = 9044;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class paguMem: RscText
{
	shadow = 0;

	idc = 9046;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.503333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class pcomMem: RscText
{
	shadow = 0;

	idc = 9047;
	text = ""; //--- ToDo: Localize;
	x = 0.291111 * safezoneW + safezoneX;
	y = 0.603333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aliAer: RscText
{
	shadow = 0;

	idc = 9048;
	text = ""; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aliDia: RscText
{
	shadow = 0;

	idc = 9056;
	text = ""; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aliMor: RscText
{
	shadow = 0;

	idc = 9064;
	text = ""; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class paliAer: RscText
{
	shadow = 0;

	idc = 9052;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.303335 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class paliDia: RscText
{
	shadow = 0;

	idc = 9060;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.46889 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class paliMor: RscText
{
	shadow = 0;

	idc = 9068;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class RscText_1019: RscText
{
	shadow = 0;

	idc = 1019;
	text = "   Jackson"; //--- ToDo: Localize;
	x = 0.646666 * safezoneW + safezoneX;
	y = 0.203333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class aliJac: RscText
{
	shadow = 0;

	idc = 9072;
	text = ""; //--- ToDo: Localize;
	x = 0.644444 * safezoneW + safezoneX;
	y = 0.286666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aguJac: RscText
{
	shadow = 0;

	idc = 9073;
	text = ""; //--- ToDo: Localize;
	x = 0.644444 * safezoneW + safezoneX;
	y = 0.386666 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class medJac: RscText
{
	shadow = 0;

	idc = 9074;
	text = ""; //--- ToDo: Localize;
	x = 0.644444 * safezoneW + safezoneX;
	y = 0.486666 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class comJac: RscText
{
	shadow = 0;

	idc = 9075;
	text = ""; //--- ToDo: Localize;
	x = 0.644444 * safezoneW + safezoneX;
	y = 0.586666 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class medAer: RscText
{
	shadow = 0;

	idc = 9049;
	text = ""; //--- ToDo: Localize;
	x = 0.379999 * safezoneW + safezoneX;
	y = 0.37 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class medDia: RscText
{
	shadow = 0;

	idc = 9057;
	text = ""; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.37 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class medMor: RscText
{
	shadow = 0;

	idc = 9065;
	text = ""; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.37 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pmedAer: RscText
{
	shadow = 0;

	idc = 9053;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pmedDia: RscText
{
	shadow = 0;

	idc = 9061;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pmedMor: RscText
{
	shadow = 0;

	idc = 9069;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0621569 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class aguAer: RscText
{
	shadow = 0;

	idc = 9050;
	text = ""; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.47 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class aguDia: RscText
{
	shadow = 0;

	idc = 9058;
	text = ""; //--- ToDo: Localize;
	x = 0.46889 * safezoneW + safezoneX;
	y = 0.47 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class aguMor: RscText
{
	shadow = 0;

	idc = 9066;
	text = ""; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.47 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class paguAer: RscText
{
	shadow = 0;

	idc = 9054;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.503333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class paguDia: RscText
{
	shadow = 0;

	idc = 9062;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.503333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class paguMor: RscText
{
	shadow = 0;

	idc = 9070;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.503333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266666 * safezoneH;
	colorText[] = {0.1,0.7,1,1};
	colorBackground[] = {0,0,0,0};
};
class comAer: RscText
{
	shadow = 0;

	idc = 9051;
	text = ""; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class comDia: RscText
{
	shadow = 0;

	idc = 9059;
	text = ""; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class comMor: RscText
{
	shadow = 0;

	idc = 9067;
	text = ""; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pcomAer: RscText
{
	shadow = 0;

	idc = 9055;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.38 * safezoneW + safezoneX;
	y = 0.603333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pcomDia: RscText
{
	shadow = 0;

	idc = 9063;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.468889 * safezoneW + safezoneX;
	y = 0.603333 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class pcomMor: RscText
{
	shadow = 0;

	idc = 9071;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.557778 * safezoneW + safezoneX;
	y = 0.603335 * safezoneH + safezoneY;
	w = 0.0622225 * safezoneW;
	h = 0.0266667 * safezoneH;
	colorText[] = {1,1,0,0.8};
	colorBackground[] = {0,0,0,0};
};
class RscText_1042: RscText
{
	shadow = 0;

	idc = -1;
	text = "Destino"; //--- ToDo: Localize;
	x = 0.225303 * safezoneW + safezoneX;
	y = 0.204631 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class distKav: RscText
{
	shadow = 0;

	idc = 9036;
	text = ""; //--- ToDo: Localize;
	x = 0.313333 * safezoneW + safezoneX;
	y = 0.236666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class distAbd: RscText
{
	shadow = 0;

	idc = 9037;
	text = ""; //--- ToDo: Localize;
	x = 0.402222 * safezoneW + safezoneX;
	y = 0.236666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class distSof: RscText
{
	shadow = 0;

	idc = 9038;
	text = ""; //--- ToDo: Localize;
	x = 0.491111 * safezoneW + safezoneX;
	y = 0.236666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class distCha: RscText
{
	shadow = 0;

	idc = 9039;
	text = ""; //--- ToDo: Localize;
	x = 0.577778 * safezoneW + safezoneX;
	y = 0.236666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class mediaKav: RscText
{
	shadow = 0;

	idc = 9032;
	text = "100%"; //--- ToDo: Localize;
	x = 0.30923 * safezoneW + safezoneX;
	y = 0.171289 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class mediaAbd: RscText
{
	shadow = 0;

	idc = 9033;
	text = "100%"; //--- ToDo: Localize;
	x = 0.400937 * safezoneW + safezoneX;
	y = 0.169439 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class mediaSof: RscText
{
	shadow = 0;

	idc = 9034;
	text = "100%"; //--- ToDo: Localize;
	x = 0.490349 * safezoneW + safezoneX;
	y = 0.170552 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class mediaCha: RscText
{
	shadow = 0;

	idc = 9035;
	text = "100%"; //--- ToDo: Localize;
	x = 0.579138 * safezoneW + safezoneX;
	y = 0.170552 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class RscText_1054: RscText
{
	shadow = 0;

	idc = 1054;
	text = "% total"; //--- ToDo: Localize;
	x = 0.226667 * safezoneW + safezoneX;
	y = 0.170001 * safezoneH + safezoneY;
	w = 0.061018 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class mediaTed: RscText
{
	shadow = 0;

	idc = 9076;
	text = "100%"; //--- ToDo: Localize;
	x = 0.663483 * safezoneW + safezoneX;
	y = 0.170186 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoFianza: RscText
{
	shadow = 0;

	idc = -1;
	text = "IVA:"; //--- ToDo: Localize;
	x = 0.228889 * safezoneW + safezoneX;
	y = 0.669995 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class fKav: RscText
{
	shadow = 0;

	idc = 9077;
	text = ""; //--- ToDo: Localize;
	x = 0.29229 * safezoneW + safezoneX;
	y = 0.670186 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class fAbd: RscText
{
	shadow = 0;

	idc = 9078;
	text = ""; //--- ToDo: Localize;
	x = 0.381079 * safezoneW + safezoneX;
	y = 0.670927 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class fSof: RscText
{
	shadow = 0;

	idc = 9079;
	text = ""; //--- ToDo: Localize;
	x = 0.469179 * safezoneW + safezoneX;
	y = 0.671667 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class fCha: RscText
{
	shadow = 0;

	idc = 9080;
	text = ""; //--- ToDo: Localize;
	x = 0.556992 * safezoneW + safezoneX;
	y = 0.669815 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoRecurso: RscText
{
	shadow = 0;

	idc = -1;
	text = "Recurso:"; //--- ToDo: Localize;
	x = 0.351112 * safezoneW + safezoneX;
	y = 0.736666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class entradaRecurso: RscEdit
{
	sizeEx = 0.04;

	idc = 9081;
	text = ""; //--- ToDo: Localize;
	x = 0.396383 * safezoneW + safezoneX;
	y = 0.726485 * safezoneH + safezoneY;
	w = 0.0933374 * safezoneW;
	h = 0.0433336 * safezoneH;
};
class entrada: RscEdit
{
	sizeEx = 0.05;

	idc = 9030;
	text = "1"; //--- ToDo: Localize;
	x = 0.557766 * safezoneW + safezoneX;
	y = 0.726666 * safezoneH + safezoneY;
	w = 0.033338 * safezoneW;
	h = 0.0433336 * safezoneH;
};
class textoCantidad: RscText
{
	shadow = 0;

	idc = -1;
	text = "   Cantidad:"; //--- ToDo: Localize;
	x = 0.497764 * safezoneW + safezoneX;
	y = 0.736666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class maxcant: RscText
{
	sizeEx = 0.05;

	idc = -1;
	text = "/150"; //--- ToDo: Localize;
	x = 0.591101 * safezoneW + safezoneX;
	y = 0.729999 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0407333 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class recTot: RscText
{
	idc = 9082;
	text = ""; //--- ToDo: Localize;
	x = 0.402222 * safezoneW + safezoneX;
	y = 0.123335 * safezoneH + safezoneY;
	w = 0.107927 * safezoneW;
	h = 0.025 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class icamola: RscText
{
	idc = -1;
	text = "icamola"; //--- ToDo: Localize;
	x = 0.964445 * safezoneW + safezoneX;
	y = -0.0166667 * safezoneH + safezoneY;
	w = 0.0412603 * safezoneW;
	h = 0.055 * safezoneH;
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};

