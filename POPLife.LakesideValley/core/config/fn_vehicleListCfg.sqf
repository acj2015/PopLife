#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [		
			["IVORY_PRIUS",15000],
			["IVORY_R8SPYDER",235000],
			["IVORY_R8",230000],			
			["IVORY_REV",415000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["A3L_Atom",258000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["ambulancia_f",30000],
			["IVORY_PRIUS",15000],
			["A3L_CVPILBFD",15000],			
			["A3L_AmberLamps",30000],
			["Jonzie_Ambulance",30000],		
			["A3L_Laddertruck",40000]			
		];
	};
	case "med_air_hs": {
		_return = [
			["C_Heli_Light_01_civil_F",50000],
			["ivory_b206_rescue",50000],
			["IVORY_BELL512_RESCUE",75000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_black",35000],
			["A3L_VolvoS60RBlack",50000],		
			["A3L_AMC",65000],
			["S_Skyline_Black",65000],
			["A3L_RX7_Black",65000],	
			["BMW_M5Black",110000],
			["A3L_EvoXWhite",150000],
			["A3L_EvoXRed",150000],			
			["S_Vantage_Black",150000],	
			["A3L_Ferrari458black",258000],
			["S_McLarenP1_Black",258000],			
			["S_PorscheRS_Black",300000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_Escort",11500],
			["A3L_EscortTaxi",11500],
			["A3L_EscortBlack",11500],
			["A3L_EscortBlue",11500],
			["A3L_EscortWhite",11500],
			["A3L_EscortPink",11500],		
			["A3L_CVWhite",30000],
			["A3L_CVBlack",30000],
			["A3L_CVGrey",30000],
			["A3L_CVRed",30000],
			["A3L_CVPink",30000],
			["A3L_CVBlue",30000],
			["A3L_Taurus",35000],
			["A3L_TaurusBlack",35000],
			["A3L_TaurusBlue",35000],
			["A3L_TaurusRed",35000],
			["A3L_TaurusWhite",35000]
		];
	};
	case "dodge_car":
	{
		_return =
		[
			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_ChargerBlack",115000],
			["A3L_ChargerWhit",115000],
			["A3L_ChargerCstm",115000],
			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["A3L_PuntoBlack",11500],
			["A3L_RegalBlack",13000],		
			["A3L_JeepWhiteBlack",16000],
			["A3L_VolksWagenGolfGTiblack",18000],
			["max_H3",24000],			
			["max_H3_yellow",24000]			
		];
	};	
	case "civ_truck":
	{
		_return set[count _return,
		["A3L_F350Black",53000]];
		_return set[count _return,
		["A3L_Dumptruck",75000]];
		_return set[count _return,
		["A3L_Bus",70000]];			
		_return set[count _return,
		["B_Truck_01_box_F",200000]];
		_return set[count _return,
		["B_Truck_01_mover_F",275000]];
		if(license_civ_depan) then
		{
		_return set[count _return,
		["A3L_Towtruck",50000]];
		};
	};	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["max_H3_urbancamo",100000],	
			["max_H3_vegeta",100000],			
			["HMMWV",300000],
			["O_Truck_02_box_F",1000000],			
			["DAR_LHS_16",375000],
			["B_Heli_Light_01_F",300000],
			["O_Heli_Light_02_unarmed_F",750000]			
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			
     		["IVORY_PRIUS",15000],			
			["A3L_GrandCaravanUC",25000],
			["A3L_GrandCaravanUCBlack",25000],
			["A3L_TaurusFPBLBPD",25000],
			["A3L_TaurusFPBLBCSO",25000],
			["A3L_TaurusFPBPD",25000],
			["A3L_TaurusFPBPDGM",25000],
			["A3L_TaurusFPBCSO",25000],			
			["A3L_TaurusUCGrey",25000],
			["A3L_TaurusUCWhite",25000],
			["A3L_TaurusUCBlue",25000],
			["A3L_TaurusUCRed",25000],
			["A3L_CVPIUC",50000],
			["A3L_CVPIUCBlack",50000],
			["A3L_CVPIUCWhite",50000],
			["A3L_CVPIUCRed",50000],
			["A3L_CVPIUCBlue",50000],
			["A3L_CVPIFPBPD",45000],
			["A3L_CVPIFPBCSO",45000],
			["A3L_CVPIFPBFG",45000],
			["A3L_CVPIFPBLBPD",45000],
			["A3L_CVPIFPBLBCSO",45000],
			["A3L_CVPIFPBLBFG",45000],
			["A3L_jailBus",50000],
			["A3L_ChargerUC",60000],
			["A3L_ChargerUCWhite",60000],
			["A3L_EvoXFPBLBPD",60000],
			["A3L_EvoXFPBLBSO",60000],
			["A3L_EvoXBlack",60000],
			["IVORY_REV",67000],
			["max_H3_black",25000],			
			["B_MRAP_01_F",50000]
		];
	};
	case "civ_air":
	{
		_return =
		[
			["GNT_C185",185000],		
			["B_Heli_Light_01_F",300000],
			["ivory_b206",350000],			
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["policia_helicopter",45000],
			["ec135_policia_f",45000],
			["B_Heli_Light_01_F",45000],
			["IVORY_BELL512",45000],			
			["C_Heli_Light_01_civil_F",45000],
			["B_Heli_Transport_01_F",200000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["policia_helicopter",45000],
			["ec135_policia_f",45000],
			["B_Heli_Light_01_F",45000],
			["IVORY_BELL512",45000],
			["C_Heli_Light_01_civil_F",45000],
			["B_Heli_Transport_01_F",200000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
	case "admin_shop":
	{
	if(__GETC__(life_adminlevel) > 2) then
		{
			_return set[count _return,
			["O_MRAP_02_F",15000]];
			_return set[count _return,
			["B_MRAP_01_F",15000]];
			_return set[count _return,
			["I_MRAP_03_F",15000]];
			_return set[count _return,
			["HMMWV",15000]];	
			_return set[count _return,
			["HMMWV_M1035",15000]];				
			_return set[count _return,
			["O_Truck_03_fuel_F",15000]];
			_return set[count _return,
			["O_Truck_03_repair_F",15000]];
			_return set[count _return,
			["A3L_AmberLamps",15000]];
			_return set[count _return,
			["A3L_Laddertruck",15000]];				
			_return set[count _return,
			["C_Hatchback_01_sport_F",15000]];			
			_return set[count _return,
			["A3L_Flipcar",15000]];
			_return set[count _return,
			["A3L_MonsterTruck",15000]];
			_return set[count _return,
			["ivory_b206_news",15000]];
			_return set[count _return,
			["GNT_C185",15000]];
			_return set[count _return,
			["GNT_C185F",15000]];
		};
	};
};

_return;
