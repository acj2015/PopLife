#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
wakPlugs = false;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;

life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_roadbarrier = ObjNull;
life_roadcone = ObjNull;
life_respawn_timer = 0.1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fatigue = 0.5; //Set the max fatigue limit (50%)
//Channel 7
life_channel_send = true;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,7500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,1); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_frozen = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,10000);
__CONST__(life_impound_car_cop,2000);
__CONST__(life_impound_boat,2500);
__CONST__(life_impound_air,2500);
life_istazed = false;
life_my_gang = ObjNull;
life_truck_types = ["DAR_LHS_16","A3L_F350Black","B_Truck_01_box_F","O_Truck_03_ammo_F","A3L_F350Blue","A3L_F350Red","A3L_F350White","A3L_Dumptruck","A3L_Bus","A3L_Towtruck","A3L_jailBus","A3L_Laddertruck"];
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = 15000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 100000;
		life_paycheck = 8000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","M1030","I_MRAP_03_F","O_Truck_03_fuel_F","C_Hatchback_01_sport_F","A3L_Flipcar","A3L_MonsterTruck"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_uraniumu",
	"life_inv_uraniump",	
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_burgers",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_barrierCop",	
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
//	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_pavotseeds",
	"life_inv_cocaseeds",	
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_kidney",
	"life_inv_raxsrum",
    "life_inv_menottes",	
    "life_inv_multipass"	
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_uranium","civ"],	
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_depan","civ"],	
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["cannabis seed",100],["cannabis",500],["marijuana",1500],["pavot seed",1100],["coca seed",1200],["heroinu",1200],["heroinp",2500],["uraniumu",8000],["uraniump",12000],["cocaine",1500],["cocainep",3500],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",8000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",3500],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
//	["cocaine",3000],
//	["cocainep",5000],
	["uraniump",12000],
	["heroinu",3850],
	["heroinp",5500],	
	["diamond",750],
	["diamondc",2500],
	["iron_r",1800],
	["copper_r",1600],
	["salt_r",1150],
	["glass",1150],
	["fuelF",500],
		
	["wheat",300],
	["sunflower",300],
	["corn",400],
	["bean",400],
	["cotton",500],
	["olive",500],
//	["opium",3850],
	["cannabis",1000],
	["pumpkin",500],
	
	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["pavot seed",200],
	["coca seed",200],	
	["cannabis seed",150],
	["pumpkin seed",50],
	
	["spikeStrip",1200],
	["barrierCop",1200],	
	["cement",1950],
	["goldbar",95000], 
	//Deo Additions
	["zoobeer",25], 
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["raxsrum",25]	
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",8000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	
	["wheat",300],
	["sunflower",300],
	["corn",400],
	["bean",400],
	["cotton",500],
	["olive",500],
//	["opium",2000],
	["cannabis",2000],
	["pumpkin",500],
	
	["wheat seed",25],
	["sunflower seed",25],
	["corn seed",25],
	["bean seed",25],
	["cotton seed",25],
	["olive seed",25],
	["pavot seed",400],
	["coca seed",400],	
	["cannabis seed",300],
	["pumpkin seed",150],
	
	["peach",68],
	["spikeStrip",2500],
	["barrierCop",2500],	
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
    ["menottes",50000],	

	// Deo's Adds
	["zoobeer",25],
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["raxsrum",50]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Rangefinder",0],	
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],
	["arifle_Mk20_F",0],
    ["hgun_ACPC2_F",0],
    ["hgun_Pistol_heavy_01_F",0],
	["srifle_DMR_01_F",0],
	["srifle_GM6_F",0],						
	["optic_Hamr",0],
	["optic_SOS",0],
	["optic_NVS",0],
	["muzzle_snds_M",0],
	["muzzle_snds_H",0],
	["muzzle_snds_B",0],					
	["acc_flashlight",0],
	["9Rnd_45ACP_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["30Rnd_65x39_caseless_mag",0],
	["30Rnd_65x39_caseless_green",0],
	["30Rnd_556x45_Stanag",0],
	["10Rnd_762x51_Mag",0],
	["5Rnd_127x108_Mag",0],						
	["A3L_SuicideVest",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_MRAP_01_F",7500],
	["A3L_Atom",8000],	
	["C_Heli_Light_01_civil_F",10000],
	["B_Heli_Light_01_F",20000],
	["O_Heli_Light_02_unarmed_F",20000],	
	["O_Truck_03_ammo_F",20000],
	["DAR_LHS_16",20000],
	["O_MRAP_02_F",50000],	
	["B_Truck_01_box_F",25000],	
	["B_QuadBike_01_F",1000],
	["C_Hatchback_01_F",1000],
	["C_Offroad_01_F", 1000],
	["B_G_Offroad_01_F",1000],
	["C_SUV_01_F",1000],
	["C_Van_01_transport_F",1000],
	["C_Hatchback_01_sport_F",1000],
	["C_Van_01_fuel_F",1000],
	["I_Heli_Transport_02_F",20000],
	["C_Van_01_box_F",1000],
	["I_Truck_02_transport_F",1000],
	["I_Truck_02_covered_F",1000],
	["B_Truck_01_transport_F",1000],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",1000],
	["B_Boat_Transport_01_F",1000],
	["C_Boat_Civil_01_police_F",1000],
	["B_Boat_Armed_01_minigun_F",1000],
	["B_SDV_01_F",1000],
	["A3L_Bus",1000],
	["A3L_Karts",1000],
	["A3L_AmberLamps",1000],
	["A3L_Laddertruck",1000],
	["A3L_Cooper_concept_blue",1000],
	["A3L_Cooper_concept_black",1000],
	["A3L_Cooper_concept_red",1000],
	["A3L_Cooper_concept_white",1000],
	["A3L_AMC",1000],
	["A3L_AMXRed",1000],
	["A3L_AMXWhite",1000],
	["A3L_AMXBlue",1000],
	["A3L_AMXGL",1000],
	["A3L_VolvoS60RBlack",1000],
	["A3L_VolvoS60Rred",1000],
	["S_Skyline_Red",1000],
	["S_Skyline_Blue",1000],
	["S_Skyline_Black",1000],
	["S_Skyline_Yellow",1000],
	["S_Skyline_Purple",1000],
	["S_Skyline_White",1000],
	["A3L_Ferrari458black",1000],
	["A3L_Ferrari458white",1000],
	["A3L_Ferrari458blue",1000],
	["A3L_SuburbanWhite",1000],
	["A3L_SuburbanBlue",1000],
	["A3L_SuburbanRed",1000],
	["A3L_SuburbanBlack",1000],
	["A3L_SuburbanGrey",1000],
	["A3L_SuburbanOrange",1000],
	["A3L_TahoeWhite",1000],
	["A3L_TahoeRed",1000],
	["A3L_TahoeBlue",1000],
	["A3L_Camaro",1000],
	["A3L_FordKaBlue",1000],
	["A3L_FordKaRed",1000],
	["A3L_FordKaBlack",1000],
	["A3L_FordKaWhite",1000],
	["A3L_FordKaGrey",1000],
	["A3L_Taurus",1000],
	["A3L_TaurusBlack",1000],
	["A3L_TaurusBlue",1000],
	["A3L_TaurusRed",1000],
	["A3L_TaurusWhite",1000],
	["A3L_GrandCaravan",1000],
	["A3L_GrandCaravanBlk",1000],
	["A3L_GrandCaravanBlue",1000],
	["A3L_GrandCaravanGreen",1000],
	["A3L_GrandCaravanRed",1000],
	["A3L_GrandCaravanPurple",1000],
	["A3L_Challenger",1000],
	["A3L_ChallengerGreen",1000],
	["A3L_ChallengerRed",1000],
	["A3L_ChallengerWhite",1000],
	["A3L_ChallengerBlack",1000],
	["A3L_ChallengerBlue",1000],
	["A3L_ChargerBlack",1000],
	["A3L_ChargerWhit",1000],
	["A3L_ChargerCstm",1000],
	["A3L_RX7_Red",1000],
	["A3L_RX7_Blue",1000],
	["A3L_RX7_Black",1000],
	["A3L_RX7_White",1000],
	["BMW_M5Black",1000],
	["BMW_M5Blue",1000],
	["BMW_M5Red",1000],
	["BMW_M5White",1000],	
	["Jonzie_Viper",1000],
	["A3L_Escort",1000],
	["A3L_EscortTaxi",1000],
	["A3L_EscortBlack",1000],
	["A3L_EscortBlue",1000],
	["A3L_EscortWhite",1000],
	["A3L_EscortPink",1000],
	["A3L_PuntoRed",1000],
	["A3L_PuntoBlack",1000],
	["A3L_PuntoWhite",1000],
	["A3L_PuntoGrey",1000],
	["A3L_RegalBlack",1000],
	["A3L_RegalBlue",1000],
	["A3L_RegalOrange",1000],
	["A3L_RegalRed",1000],
	["A3L_RegalWhite",1000],
	["A3L_JeepWhiteBlack",1000],
	["A3L_JeepGreenBlack",1000],
	["A3L_JeepRedTan",1000],
	["A3L_JeepRedBlack",1000],
	["A3L_JeepGrayBlack",1000],
	["A3L_VolksWagenGolfGTired",1000],
	["A3L_VolksWagenGolfGTiblack",1000],
	["A3L_VolksWagenGolfGTiblue",1000],
	["A3L_VolksWagenGolfGTiwhite",1000],
	["A3L_F350Black",1000],
	["A3L_F350Blue",1000],
	["A3L_F350Red",1000],
	["A3L_F350White",1000],
	["A3L_Dumptruck",1000],
	["C_Van_01_box_F",1000],
	["C_Van_01_transport_F",1000],
	["A3L_GrandCaravanUC",1000],
	["A3L_GrandCaravanUCBlack",1000],
	["A3L_TaurusFPBLBPD",1000],
	["A3L_TaurusFPBLBCSO",1000],
	["A3L_TaurusFPBPD",1000],
	["A3L_TaurusFPBPDGM",1000],
	["A3L_TaurusFPBCSO",1000],
	["A3L_TaurusUCBlack",1000],
	["A3L_TaurusUCGrey",1000],
	["A3L_TaurusUCWhite",1000],
	["A3L_TaurusUCBlue",1000],
	["A3L_TaurusUCRed",1000],
	["A3L_EvoXBlack",1000],	
	["A3L_EvoXWhite",1000],
	["A3L_EvoXRed",1000],	
	["A3L_CVPIFPBPD",1000],
	["A3L_CVPIFPBCSO",1000],
	["A3L_CVPIFPBFG",1000],
	["A3L_CVPIFPBLBPD",1000],
	["A3L_CVPIFPBLBCSO",1000],
	["A3L_CVPIFPBLBFG",1000],
	["A3L_TahoeUCPB",1000],
	["A3L_TahoeUC",1000],
	["A3L_TahoeUCGMPB",1000],
	["A3L_TahoeCSOLBPB",1000],
	["A3L_jailBus",1000],
	["A3L_Suburban",1000],
	["A3L_SuburbanCSO",1000],
	["A3L_SuburbanFG",1000],
	["max_H3",1000],	
	["max_H3_black",1000],
	["max_H3_yellow",1000],		
	["Jonzie_Ambulance",1000],
	["GNT_C185",15000],	
	["M1030",0]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["GNT_C185",105000],	
	["A3L_Atom",90000],	
	["C_Hatchback_01_F",10000],
	["C_Offroad_01_F", 10000],
	["B_G_Offroad_01_F",10000],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",10000],
	["C_Hatchback_01_sport_F",10000],
	["C_Van_01_fuel_F",10000],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_Truck_03_ammo_F", 170000],
	["DAR_LHS_16",170000],	
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000],
	["A3L_Karts",5000],
	["max_H3",12000],	
	["max_H3_black",12000],
	["max_H3_yellow",12000],	
	["A3L_Cooper_concept_blue",22500],
	["A3L_Cooper_concept_black",22500],
	["A3L_Cooper_concept_red",22500],
	["A3L_Cooper_concept_white",22500],
	["A3L_AMC",32000],
	["A3L_AMXRed",32000],
	["A3L_AMXWhite",32000],
	["A3L_AMXBlue",32000],
	["A3L_AMXGL",32000],
	["A3L_VolvoS60RBlack",32000],
	["A3L_VolvoS60Rred",32000],
	["S_Vantage_Black",50000],
	["A3L_EvoXWhite",50000],
	["A3L_EvoXRed",50000],	
	["S_Skyline_Red",32000],
	["S_Skyline_Blue",32000],
	["S_Skyline_Black",32000],
	["S_Skyline_Yellow",32000],
	["S_Skyline_Purple",32000],
	["S_Skyline_White",32000],
	["A3L_Ferrari458black",130000],
	["A3L_Ferrari458white",130000],
	["A3L_Ferrari458blue",130000],
	["A3L_SuburbanWhite",25000],
	["A3L_SuburbanBlue",25000],
	["A3L_SuburbanRed",25000],
	["A3L_SuburbanBlack",25000],
	["A3L_SuburbanGrey",25000],
	["A3L_SuburbanOrange",25000],
	["A3L_TahoeWhite",22000],
	["A3L_TahoeRed",22000],
	["A3L_TahoeBlue",22000],
	["A3L_Camaro",72000],
	["A3L_FordKaBlue",6000],
	["A3L_FordKaRed",6000],
	["A3L_FordKaBlack",6000],
	["A3L_FordKaWhite",6000],
	["A3L_FordKaGrey",6000],
	["A3L_Taurus",22000],
	["A3L_TaurusBlack",22000],
	["A3L_TaurusBlue",22000],
	["A3L_TaurusRed",22000],
	["A3L_TaurusWhite",22000],
	["A3L_GrandCaravan",16000],
	["A3L_GrandCaravanBlk",16000],
	["A3L_GrandCaravanBlue",16000],
	["A3L_GrandCaravanGreen",16000],
	["A3L_GrandCaravanRed",16000],
	["A3L_GrandCaravanPurple",16000],
	["A3L_Challenger",25000],
	["A3L_ChallengerGreen",25000],
	["A3L_ChallengerRed",25000],
	["A3L_ChallengerWhite",25000],
	["A3L_ChallengerBlack",25000],
	["A3L_ChallengerBlue",25000],
	["A3L_ChargerBlack",37000],
	["A3L_ChargerWhit",37000],
	["A3L_ChargerCstm",37000],
	["S_PorscheRS_Black",80000],
	["S_PorscheRS_Yellow",80000],
	["S_PorscheRS_White",80000],	
	["A3L_RX7_Red",40000],
	["A3L_RX7_Blue",40000],
	["A3L_RX7_Black",40000],
	["A3L_RX7_White",40000],
	["BMW_M5Black",80000],
	["BMW_M5Blue",80000],
	["BMW_M5Red",80000],
	["BMW_M5White",80000],	
	["Jonzie_Viper",152000],
	["S_McLarenP1_Black",60000],
	["S_McLarenP1_Blue",60000],
	["S_McLarenP1_Orange",60000],
	["S_McLarenP1_White",60000],
	["S_McLarenP1_Yellow",60000],
	["S_McLarenP1_Silver",60000],	
	["A3L_Escort",10000],
	["A3L_EscortTaxi",10000],
	["A3L_EscortBlack",10000],
	["A3L_EscortBlue",10000],
	["A3L_EscortWhite",10000],
	["A3L_EscortPink",10000],
	["A3L_PuntoRed",6000],
	["A3L_PuntoBlack",6000],
	["A3L_PuntoWhite",6000],
	["A3L_PuntoGrey",6000],
	["A3L_RegalBlack",7000],
	["A3L_RegalBlue",7000],
	["A3L_RegalOrange",7000],
	["A3L_RegalRed",7000],
	["A3L_RegalWhite",7000],
	["A3L_JeepWhiteBlack",7000],
	["A3L_JeepGreenBlack",7000],
	["A3L_JeepRedTan",7000],
	["A3L_JeepRedBlack",7000],
	["A3L_JeepGrayBlack",7000],
	["A3L_VolksWagenGolfGTired",9000],
	["A3L_VolksWagenGolfGTiblack",9000],
	["A3L_VolksWagenGolfGTiblue",9000],
	["A3L_VolksWagenGolfGTiwhite",9000],
	["A3L_F350Black",10000],
	["A3L_F350Blue",10000],
	["A3L_F350Red",10000],
	["A3L_F350White",10000],
	["A3L_Dumptruck",25000],
	["C_Van_01_box_F",30000],
	["C_Van_01_transport_F",20000],
	["A3L_GrandCaravanUC",12000],
	["A3L_GrandCaravanUCBlack",12000],
	["A3L_TaurusFPBLBPD",12000],
	["A3L_TaurusFPBLBCSO",12000],
	["A3L_TaurusFPBPD",12000],
	["A3L_TaurusFPBPDGM",12000],
	["A3L_TaurusFPBCSO",12000],
	["A3L_TaurusUCBlack",12000],
	["A3L_TaurusUCGrey",12000],
	["A3L_TaurusUCWhite",12000],
	["A3L_TaurusUCBlue",12000],
	["A3L_TaurusUCRed",12000],
	["A3L_CVPIFPBPD",22000],
	["A3L_CVPIFPBCSO",22000],
	["A3L_CVPIFPBFG",22000],
	["A3L_CVPIFPBLBPD",22000],
	["A3L_CVPIFPBLBCSO",22000],
	["A3L_CVPIFPBLBFG",22000],
	["A3L_TahoeUCPB",22000],
	["A3L_TahoeUC",22000],
	["A3L_TahoeUCGMPB",22000],
	["A3L_TahoeCSOLBPB",22000],
	["A3L_jailBus",25000],
	["A3L_Suburban",27000],
	["A3L_SuburbanCSO",27000],
	["A3L_SuburbanFG",27000],
	["IVORY_PRIUS",22500],
	["A3L_CVPILBFD",22500],
	["A3L_AmberLamps",45000],
	["A3L_Laddertruck",60000],	
	["IVORY_R8",100000],
	["IVORY_R8SPYDER",100000],
	["IVORY_REV",100000],	
	["O_Truck_03_device_F",2000000]	
];
__CONST__(life_garage_sell,life_garage_sell);