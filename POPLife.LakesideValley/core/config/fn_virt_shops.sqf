/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marche",["zoobeer","raxsrum","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Marche rebelle",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","menottes","boltcutter","blastingcharge"]]};
	case "gang": {["Marche du gang", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["LakeBucks",["coffee","donuts"]]};
	case "heroin": {["Dealer du coin",["cocainep","heroinp","marijuana"]]};
	case "uranium": {["Revendeur d uranium",["uraniump"]]};	
	case "oil": {["Revendeur de petrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Poissonerie",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Marche de la ferme",["wheat seed","sunflower seed","corn seed","bean seed","cotton seed","olive seed","pumpkin seed","wheat","sunflower","corn","bean","cotton","olive","pumpkin"]]};	
	case "blackfarmingmarket": {["Marche noir",["cannabis seed","pavot seed"]]};	
	case "glass": {["Revendeur de verre",["glass"]]};
	case "iron": {["Revendeur industriel",["iron_r","copper_r"]]};
	case "diamond": {["Diamantaire",["diamond","diamondc"]]};
	case "salt": {["Revendeur de sel",["salt_r"]]};
	case "cop": {["Police Cafet",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","barrierCop"]]};
	case "cement": {["Revendeur de ciment",["cement"]]};
	case "gold": {["Acheteur d or",["goldbar"]]};
};