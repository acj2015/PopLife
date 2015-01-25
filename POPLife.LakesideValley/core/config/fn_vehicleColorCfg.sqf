/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "Jonzie_Ambulance": {
		_ret =
		[
			["#(argb,8,8,3)color(0.89,0.03,0,1)","med"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","med"]
		];
	};

	case "S_PorscheRS_Black": {
		_path = "\S_PorscheRS\data\Textures\";
		_ret =
		[
			[_path + "2012_porsche_gt3_ext_carrara_white.paa","civ"],
			[_path + "2012_porsche_gt3_ext_black.paa","civ"],
			[_path + "2012_porsche_gt3_ext_yellow.paa","civ"]
		];
	};
	
	case "A3L_Cooper_concept_black": {
		_path = "\A3L_Charger\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_white.paa","civ"]
		];
	};	
	
	case "A3L_VolvoS60RBlack": {
		_path = "\A3L_VolvoS60R\data\paas\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_white.paa","civ"]
		];
	};

	case "A3L_AMC": {
		_path = "\A3L_AMC\data\colors\";
		_ret =
		[
			[_path + "blue.paa","civ"],
			["\A3L_AMC\data\lee.paa","civ"],
			[_path + "red.paa","civ"],			
			[_path + "White.paa","civ"]
		];
	};	

	case "S_Skyline_Black": {
		_path = "\S_Skyline\Data\Textures\Livery\";
		_ret =
		[
			[_path + "1997_nissan_skyline_r34_ext_bayside_blue.paa","civ"],
			[_path + "1997_nissan_skyline_r34_ext_black_pearl.paa","civ"],
			[_path + "1997_nissan_skyline_r34_ext_aktive_red.paa","civ"],			
			[_path + "1997_nissan_skyline_r34_ext_lightning_yellow.paa","civ"],
			[_path + "1997_nissan_skyline_r34_ext_midnight_purple.paa","civ"],
			[_path + "1997_nissan_skyline_r34_ext_white_pearl.paa","civ"]			
		];
	};	

	case "A3L_RX7_Black": {
		_path = "\a3l_charger\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_white.paa","civ"]		
		];
	};
	
	case "BMW_M5Black": {
		_path = "\A3L_Charger\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_white.paa","civ"]		
		];
	};

	case "S_Vantage_Black": {
		_path = "\S_Vantage\Data\Textures\Livery\";
		_ret =
		[
			[_path + "2013_astonmartin_vantage_ext_red_lion.paa","civ"],
			[_path + "2013_astonmartin_vantage_ext_airfield_blue.paa","civ"],
			[_path + "2013_astonmartin_vantage_ext_jet_black.paa","civ"],			
			[_path + "2013_astonmartin_vantage_ext_yellow_tang.paa","civ"],	
			[_path + "2013_astonmartin_vantage_ext_mako_blue.paa","civ"],	
			[_path + "2013_astonmartin_vantage_ext_purple.paa","civ"],	
			[_path + "2013_astonmartin_vantage_ext_stratus_white.paa","civ"]		
		];
	};	
	
	case "A3L_Ferrari458black": {
		_path = "\A3L_Charger\data\";
		_ret =
		[
			["#(argb,8,8,3)color(0,0,1,1.0,co)","civ"],								// Blue
			["#(argb,8,8,3)color(0,0,0,1.0,co)","civ"],								// Black
			["#(argb,8,8,3)color(0.968627,0.192157,0.211765,1.0,co)","civ"],		// Red			
			["#(argb,8,8,3)color(1,1,1,1.0,co)","civ"]								// White
		];
	};
	
	case "S_McLarenP1_Black": {
		_ret =
		[
			["\S_McLarenP1\Textures\Livery\2014_mclaren_p1_ext_blue.paa","civ","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa"],		// Blue
			["\S_McLarenP1\Textures\Livery\2014_mclaren_p1_ext_black.paa","civ","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa"],		// Black
			["\S_McLarenP1\Textures\Livery\2014_mclaren_p1_ext_orange.paa","civ","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa"],		// Orange
			["\S_McLarenP1\Textures\Livery\2014_mclaren_p1_ext_yellow.paa","civ","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa"],		// Yellow			
			["\S_McLarenP1\Textures\Livery\2014_mclaren_p1_ext_white.paa","civ","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa","\A3L_Client2\c4files\green\0.paa"]		// White
		];
	};	
	
	case "A3L_SuburbanBlack": {
		_path = "\A3L_Charger\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],
			[_path + "colors\orange.paa","civ"],
			[_path + "grey_co.paa","civ"],
			[_path + "body_white.paa","civ"]
		];
	};	

	case "A3L_GrandCaravan": {
		_path = "\A3L_GrandCaravan\data\";
		_ret =
		[
			[_path + "stngblue.paa","civ"],	// Blue
			[_path + "stngblack.paa","civ"], // Black
			[_path + "stngred.paa","civ"],	// Red
			[_path + "stngpurp.paa","civ"],		// Purple
			[_path + "stnggreen.paa","civ"],	// Green
			[_path + "stng.paa","civ"]	// White
		];
	};		
	
	case "A3L_Challenger": {
		_path = "\A3L_Challenger\data\colors\";
		_ret =
		[
			[_path + "blue.paa","civ"],	// Blue
			[_path + "black.paa","civ"], // Black
			[_path + "red.paa","civ"],	// Red
			[_path + "orange.paa","civ"],	// Orange
			[_path + "white.paa","civ"]	// White
		];
	};

	case "Jonzie_Viper": {
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"]
		];
	};

	case "A3L_PuntoBlack": {
		_path = "\A3L_Charger\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_white.paa","civ"]		
		];
	};

	case "A3L_RegalBlack": {
		_path = "\A3L_Regal\data\colors\";
		_ret =
		[
			[_path + "blue.paa","civ"],
			[_path + "black.paa","civ"],
			[_path + "red.paa","civ"],	
			[_path + "orange.paa","civ"],			
			[_path + "white.paa","civ"]		
		];
	};	
	
	case "A3L_JeepWhiteBlack": {
		_ret =
		[
			["\A3L_Jeep\Data\Jeep\stng_co.paa","civ","\A3L_Jeep\Data\Jeep\tanroof_co.paa"],  		// White/Tan
			["\A3L_Jeep\Data\Jeep\stng_co.paa","civ","\A3L_Jeep\Data\Jeep\drkgryroof_co.paa"],  	// White/Black
			["\A3L_Jeep\Data\Jeep\green_co.paa","civ","\A3L_Jeep\Data\Jeep\drkgryroof_co.paa"],  	// Green/Black
			["\A3L_Jeep\Data\Jeep\green_co.paa","civ","\A3L_Jeep\Data\Jeep\tanroof_co.paa"],  		// Green/Tan	
			["\A3L_Jeep\Data\Jeep\red_co.paa","civ","\A3L_Jeep\Data\Jeep\tanroof_co.paa"],  		// Red/Tan	
			["\A3L_Jeep\Data\Jeep\red_co.paa","civ","\A3L_Jeep\Data\Jeep\drkgryroof_co.paa"],  		// Red/Black	
			["\A3L_Jeep\Data\Jeep\tan_co.paa","civ","\A3L_Jeep\Data\Jeep\tanroof_co.paa"],  		// Brown/Tan	
			["\A3L_Jeep\Data\Jeep\tan_co.paa","civ","\A3L_Jeep\Data\Jeep\drkgryroof_co.paa"], 		// Tan/Black
			["\A3L_Jeep\Data\Jeep\gray_co.paa","civ","\A3L_Jeep\Data\Jeep\tanroof_co.paa"],  		// Grey/Tan
			["\A3L_Jeep\Data\Jeep\gray_co.paa","civ","\A3L_Jeep\Data\Jeep\drkgryroof_co.paa"] 		// Grey/Black					
		];
	};		
	
	case "A3L_VolksWagenGolfGTiblack": {
		_path = "\A3L_VolksWagenGolfGTi\data\";
		_ret =
		[
			[_path + "body_blue.paa","civ"],
			[_path + "body_black.paa","civ"],
			[_path + "body_red.paa","civ"],			
			[_path + "body_White.paa","civ"]		
		];
	};	
	
	case "S_Rangerover_Black": {
		_path = "\S_Rangerover\Data\Livery\";
		_ret =
		[
			[_path + "blue.paa","civ"],		// Blue		
			[_path + "black.paa","civ"],	// Black
			[_path + "red.paa","civ"],		// Red
			[_path + "white.paa","civ"],	// White
			[_path + "purple.paa","civ"],	// Purple
			[_path + "green.paa","civ"],	// Green
			[_path + "grey.paa","civ"],		// Grey			
			[_path + "orange.paa","civ"]	// Orange
		];
	};	
	
	case "A3L_F350Black": {
		_path = "\A3L_F350\Data\";
		_ret =
		[
			[_path + "Blue.paa","civ"],		// Blue		
			[_path + "Black.paa","civ"],	// Black
			[_path + "Red.paa","civ"],		// Red
			[_path + "white.paa","civ"]	// White
		];
	};	
	
	
	case "IVORY_PRIUS": {
		_path = "\IVORY_Prius\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "tex_sports1_co.paa","civ"],
			[_path + "tex_sports2_co.paa","civ"],
			[_path + "tex_sports3_co.paa","civ"],
			[_path + "tex_taxi1_co.paa","civ"],
			[_path + "tex_police1_co.paa","cop"],
			[_path + "tex_police2_co.paa","cop"],
			[_path + "tex_sports4_co.pa","cop"],			
			[_path + "tex_ems1_co.paa","med"]
			
		];
	};

	case "IVORY_R8SPYDER": {
		_path = "\IVORY_R8SPYDER\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "audi_r8_livery01_hr.paa","civ"],
			[_path + "audi_r8_livery02_hr.paa","civ"],
			[_path + "audi_r8_livery03_hr.paa","civ"],
			[_path + "audi_r8_livery04_hr.paa","civ"]
		];
	};

	case "IVORY_R8": {
		_path = "\IVORY_R8SPYDER\data\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "audi_r8_livery01_hr.paa","civ"],
			[_path + "audi_r8_livery02_hr.paa","civ"],
			[_path + "audi_r8_livery03_hr.paa","civ"],
			[_path + "audi_r8_livery04_hr.paa","civ"]

		];


	};

	case "IVORY_REV": {
		_path = "\IVORY_REV\data\";
		_pathpolice = "\IVORY_REV_POLICE\";
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"],
			[_path + "lamborghini_reventon_livery01_hr.paa","civ"],
			[_path + "lamborghini_reventon_livery02_hr.paa","civ"],
			[_path + "lamborghini_reventon_livery03_hr.paa","civ"],
			[_path + "lamborghini_reventon_livery04_hr.paa","civ"],
			[_pathpolice + "interceptor.paa","cop"],
			[_pathpolice + "sheriff.paa","cop"],
			[_pathpolice + "0-1.paa","cop"],
			[_pathpolice + "0-2.paa","cop"],
			[_pathpolice + "1-1.paa","cop"],
			[_pathpolice + "1-2.paa","cop"],
			[_pathpolice + "1-3.paa","cop"],
			[_pathpolice + "1-4.paa","cop"],
			[_pathpolice + "1-7.paa","cop"],
			[_pathpolice + "1-8.paa","cop"],
			[_pathpolice + "2-0.paa","cop"],
			[_pathpolice + "2-1.paa","cop"],
			[_pathpolice + "2-2.paa","cop"],
			[_pathpolice + "2-3.paa","cop"],
			[_pathpolice + "2-4.paa","cop"],
			[_pathpolice + "2-5.paa","cop"],
			[_pathpolice + "2-6.paa","cop"],
			[_pathpolice + "4-1.paa","cop"],
			[_pathpolice + "4-2.paa","cop"]
//			[_path + "BlackWhite.paa","civ"],
//			[_path + "BlueCamo.paa","civ"],
//			[_path + "Camo.paa","civ"],
//			[_path + "Clouds.paa","civ"],
//			[_path + "Fire.paa","civ"],
//			[_path + "Galaxy.paa","civ"],
//			[_path + "Splat.paa","civ"]
		];
	};
	
	case "Jonzie_Viper": {
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0.501961,1,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0,0.25098,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(0.541176,0,0,1.0,CO)","civ"],
			["#(argb,8,8,3)color(1,0,1,1.0,CO)","civ"]
		];
	};
	
	case "O_Heli_Transport_04_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)"]
		];
	};
	
	case "O_Heli_Transport_04_covered_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)","#(argb,8,8,3)color(0,0,0,1.0,CO)"]
		];
	};
	case "O_Heli_Transport_04_medevac_F": {
		_ret =
		[
			["#(argb,8,8,3)color(1,1,1,1.0,CO)","cop","#(argb,8,8,3)color(1,1,1,1.0,CO)","#(argb,8,8,3)color(1,1,1,1.0,CO)","#(argb,8,8,3)color(1,1,1,1.0,CO)"]
		];
	};
	case "I_Heli_light_03_unarmed_F": {
		_ret =
		[
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop"]

		];
	};

	// Default Cars
	
	case "C_SUV_01_F":
	{
		_ret =
		[
            ["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],		
			["textures\CIV_Taxi_suv.jpg","civ"],			
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"]			
		];
	};

	case "C_Offroad_01_F":
	{
		_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"]
		];
	};	
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","cop",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			["#(argb,8,8,3)color(0,0,0,1.0,CO)","cop"]
		];
	};

	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"]
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};

	case "C_Van_01_box_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "C_Van_01_transport_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "B_Quadbike_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(0.89,0.03,0,1)","med"]
		];
	};

	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(0.89,0.03,0,1)","med"]
		];
	};

	case "O_Heli_Light_02_unarmed_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","cop"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["#(argb,8,8,3)color(0.89,0.03,0,1)","med"]
		];
	};

	case "B_MRAP_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],			
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Truck_02_transport_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","cop"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;
