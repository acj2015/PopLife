class mat_dialog
{
	idd = -1;
	movingenable = true;
	onLoad = "uiNamespace setVariable ['mat_dialog', _this select 0]; abierto = true;";
	onUnLoad = "uiNamespace setVariable ['mat_dialog', nil]; abierto = nil;";
	
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Icaruk, v1.063, #Kybybo)
////////////////////////////////////////////////////////

class fondo: IGUIBack
{
	idc = -1;
	x = 0.133333 * safezoneW + safezoneX;
	y = 0.183333 * safezoneH + safezoneY;
	w = 0.626655 * safezoneW;
	h = 0.46667 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
};
class carFor: RscText
{
	shadow = 0;

	idc = 9091;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.240005 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class pCarFor: RscText
{
	shadow = 0;

	idc = 9112;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.242227 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class textoCarbon: RscText
{
	shadow = -1;

	idc = -1;
	text = "Carbon"; //--- ToDo: Localize;
	x = 0.251114 * safezoneW + safezoneX;
	y = 0.203333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class entrada: RscEdit
{
	sizeEx = 0.05;

	idc = 9088;
	text = "1"; //--- ToDo: Localize;
	x = 0.522216 * safezoneW + safezoneX;
	y = 0.6 * safezoneH + safezoneY;
	w = 0.033338 * safezoneW;
	h = 0.0300004 * safezoneH;
};
class textoCantidad: RscText
{
	shadow = 0;

	idc = -1;
	text = "   Cantidad:"; //--- ToDo: Localize;
	x = 0.451106 * safezoneW + safezoneX;
	y = 0.603333 * safezoneH + safezoneY;
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
	x = 0.55555 * safezoneW + safezoneX;
	y = 0.596667 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0407333 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoIVA: RscText
{
	shadow = -1;

	idc = -1;
	text = "IVA:"; //--- ToDo: Localize;
	x = 0.20222 * safezoneW + safezoneX;
	y = 0.536666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class pcarFab: RscText
{
	shadow = 0;

	idc = 9111;
	text = "999 E/u"; //--- ToDo: Localize;
	x = 0.239999 * safezoneW + safezoneX;
	y = 0.436666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class matTot: RscText
{
	idc = 9200;
	text = "Materiales totales: 100%"; //--- ToDo: Localize;
	x = 0.399038 * safezoneW + safezoneX;
	y = 0.146666 * safezoneH + safezoneY;
	w = 0.111111 * safezoneW;
	h = 0.0266669 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoPolvora: RscText
{
	shadow = 0;

	idc = -1;
	text = "Polvora"; //--- ToDo: Localize;
	x = 0.34 * safezoneW + safezoneX;
	y = 0.203333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class textoHierro: RscText
{
	shadow = 0;

	idc = -1;
	text = "Hierro"; //--- ToDo: Localize;
	x = 0.42889 * safezoneW + safezoneX;
	y = 0.203335 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0.8,0,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoCobre: RscText
{
	shadow = 0;

	idc = -1;
	text = "Cobre"; //--- ToDo: Localize;
	x = 0.518698 * safezoneW + safezoneX;
	y = 0.203149 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0.7,0,1};
	colorBackground[] = {0,0,0,0};
};
class textoPlata: RscText
{
	shadow = 0;

	idc = -1;
	text = "Plata"; //--- ToDo: Localize;
	x = 0.608258 * safezoneW + safezoneX;
	y = 0.202779 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,0.9,1,1};
	colorBackground[] = {0,0,0,0};
};
class textoOro: RscText
{
	shadow = 0;

	idc = -1;
	text = "Oro"; //--- ToDo: Localize;
	x = 0.700449 * safezoneW + safezoneX;
	y = 0.202776 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class polFor: RscText
{
	shadow = 0;

	idc = 9093;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.32669 * safezoneW + safezoneX;
	y = 0.268705 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class ppolFor: RscText
{
	shadow = 0;

	idc = 9114;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.329051 * safezoneW + safezoneX;
	y = 0.30389 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class hieFor: RscText
{
	shadow = 0;

	idc = 9095;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.416241 * safezoneW + safezoneX;
	y = 0.270186 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0.8,0,1,1};
	colorBackground[] = {0,0,0,0};
};
class cobFor: RscText
{
	shadow = 0;

	idc = 9097;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.50649 * safezoneW + safezoneX;
	y = 0.270186 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0.7,0,1};
	colorBackground[] = {0,0,0,0};
};
class plaFor: RscText
{
	shadow = 0;

	idc = 9099;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.595555 * safezoneW + safezoneX;
	y = 0.269998 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,0.9,1,1};
	colorBackground[] = {0,0,0,0};
};
class oroFor: RscText
{
	shadow = 0;

	idc = 9101;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.684444 * safezoneW + safezoneX;
	y = 0.27 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class carFab: RscText
{
	shadow = 0;

	idc = 9092;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.237778 * safezoneW + safezoneX;
	y = 0.4 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,0};
};
class polFab: RscText
{
	shadow = 0;

	idc = 9094;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.326667 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class hieFab: RscText
{
	shadow = 0;

	idc = 9096;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.415556 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0.8,0,1,1};
	colorBackground[] = {0,0,0,0};
};
class cobFab: RscText
{
	shadow = 0;

	idc = 9098;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.506666 * safezoneW + safezoneX;
	y = 0.403333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0.7,0,1};
	colorBackground[] = {0,0,0,0};
};
class plaFab: RscText
{
	shadow = 0;

	idc = 9100;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.593332 * safezoneW + safezoneX;
	y = 0.403331 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,0.9,1,1};
	colorBackground[] = {0,0,0,0};
};
class oroFab: RscText
{
	shadow = 0;

	idc = 9102;
	text = "1000 / 1000"; //--- ToDo: Localize;
	x = 0.684444 * safezoneW + safezoneX;
	y = 0.403331 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class pHieFor: RscText
{
	shadow = 0;

	idc = 9116;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.417778 * safezoneW + safezoneX;
	y = 0.303335 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0.8,0,1,1};
	colorBackground[] = {0,0,0,0};
};
class pCobFor: RscText
{
	shadow = 0;

	idc = 9118;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.507941 * safezoneW + safezoneX;
	y = 0.302414 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0.7,0,1};
	colorBackground[] = {0,0,0,0};
};
class pPlaFor: RscText
{
	shadow = 0;

	idc = 9120;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.597777 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,0.9,1,1};
	colorBackground[] = {0,0,0,0};
};
class pOroFor: RscText
{
	shadow = 0;

	idc = 9122;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.686666 * safezoneW + safezoneX;
	y = 0.303333 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class ppolFab: RscText
{
	shadow = 0;

	idc = 9113;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.328888 * safezoneW + safezoneX;
	y = 0.436666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class pHieFab: RscText
{
	shadow = 0;

	idc = 9115;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.417778 * safezoneW + safezoneX;
	y = 0.436666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0.8,0,1,1};
	colorBackground[] = {0,0,0,0};
};
class pCobFab: RscText
{
	shadow = 0;

	idc = 9117;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.51111 * safezoneW + safezoneX;
	y = 0.436671 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,0.7,0,1};
	colorBackground[] = {0,0,0,0};
};
class pPlaFab: RscText
{
	shadow = 0;

	idc = 9119;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.595556 * safezoneW + safezoneX;
	y = 0.436668 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {0,0.9,1,1};
	colorBackground[] = {0,0,0,0};
};
class pOroFab: RscText
{
	shadow = 0;

	idc = 9121;
	text = "900 E/km"; //--- ToDo: Localize;
	x = 0.686667 * safezoneW + safezoneX;
	y = 0.43667 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,0,1};
	colorBackground[] = {0,0,0,0};
};
class ivaCar: RscText
{
	shadow = 0;

	idc = 9201;
	text = ""; //--- ToDo: Localize;
	x = 0.246669 * safezoneW + safezoneX;
	y = 0.536666 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class ivaPie: RscText
{
	shadow = 0;

	idc = 9103;
	text = ""; //--- ToDo: Localize;
	x = 0.33502 * safezoneW + safezoneX;
	y = 0.536113 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class ivaHie: RscText
{
	shadow = 0;

	idc = 9104;
	text = ""; //--- ToDo: Localize;
	x = 0.425129 * safezoneW + safezoneX;
	y = 0.537223 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class ivaCob: RscText
{
	shadow = 0;

	idc = 9105;
	text = ""; //--- ToDo: Localize;
	x = 0.512254 * safezoneW + safezoneX;
	y = 0.538337 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class ivaPla: RscText
{
	shadow = 0;

	idc = 9106;
	text = ""; //--- ToDo: Localize;
	x = 0.601805 * safezoneW + safezoneX;
	y = 0.535373 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class ivaOro: RscText
{
	shadow = 0;

	idc = 9107;
	text = ""; //--- ToDo: Localize;
	x = 0.690307 * safezoneW + safezoneX;
	y = 0.535742 * safezoneH + safezoneY;
	w = 0.0632402 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class botonFor: RscButton2
{
	action = "closeDialog 0; _nil = [ctrlText 9087, ctrlText 9088] execVM ""ica\recursos\destinoForja.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};

	idc = 9089;
	text = "Forja"; //--- ToDo: Localize;
	x = 0.16889 * safezoneW + safezoneX;
	y = 0.283337 * safezoneH + safezoneY;
	w = 0.0657045 * safezoneW;
	h = 0.0350002 * safezoneH;
};
class botonFab: RscButton2
{
	action = "closeDialog 0; _nil = [ctrlText 9087, ctrlText 9088] execVM ""ica\recursos\destinoFabrica.sqf""";
	colorBackgroundDisabled[] = {0,0,0,0};
	colorDisabled[] = {1,1,1,1};
	
	idc = 9090;
	text = "Fabrica"; //--- ToDo: Localize;
	x = 0.168889 * safezoneW + safezoneX;
	y = 0.416667 * safezoneH + safezoneY;
	w = 0.0657045 * safezoneW;
	h = 0.0350002 * safezoneH;
};
class medFor: RscText
{
	shadow = 0;

	idc = 9108;
	text = "55%"; //--- ToDo: Localize;
	x = 0.137778 * safezoneW + safezoneX;
	y = 0.286666 * safezoneH + safezoneY;
	w = 0.0254628 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class medFab: RscText
{
	shadow = 9109;

	idc = 1002;
	text = "55%"; //--- ToDo: Localize;
	x = 0.137777 * safezoneW + safezoneX;
	y = 0.419991 * safezoneH + safezoneY;
	w = 0.0254628 * safezoneW;
	h = 0.0274001 * safezoneH;
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
class entradaMat: RscEdit
{
	idc = 9087;
	text = ""; //--- ToDo: Localize;
	x = 0.377777 * safezoneW + safezoneX;
	y = 0.600002 * safezoneH + safezoneY;
	w = 0.0711112 * safezoneW;
	h = 0.0333335 * safezoneH;
};
class TextoMaterial: RscText
{
	shadow = 0;

	idc = -1;
	text = "Material:"; //--- ToDo: Localize;
	x = 0.331111 * safezoneW + safezoneX;
	y = 0.603335 * safezoneH + safezoneY;
	w = 0.0410182 * safezoneW;
	h = 0.0274001 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};

