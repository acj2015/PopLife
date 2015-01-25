/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "Jonzie_Ambulance" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
		};
	};
	case "S_PorscheRS_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Yellow";};
		};
	};
	case "A3L_Cooper_concept_black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};			
		};
	};
	case "A3L_VolvoS60RBlack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};			
		};
	};
	case "A3L_AMC" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "S_Skyline_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy Yellow";};
			case 4: {_color = "Glossy Purple";};
			case 5: {_color = "Glossy White";};			
		};
	};
	case "A3L_RX7_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "BMW_M5Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "S_Vantage_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Red";};
			case 1: {_color = "Glossy Blue";};
			case 2: {_color = "Glossy Black";};
			case 3: {_color = "Glossy Yellow";};
			case 4: {_color = "Glossy Blue2";};
			case 5: {_color = "Glossy Purple";};
			case 6: {_color = "Glossy White";};			
		};
	};	
	case "A3L_Ferrari458black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "S_McLarenP1_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Orange";};
			case 3: {_color = "Glossy Yellow";};	
			case 4: {_color = "Glossy White";};	
		};
	};	
	case "A3L_SuburbanBlack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy Orange";};	
			case 4: {_color = "Glossy Grey";};
			case 5: {_color = "Glossy White";};			
		};
	};
	case "A3L_GrandCaravan" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy Purple";};	
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy White";};			
		};
	};
	case "A3L_Challenger" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy Orange";};	
			case 4: {_color = "Glossy White";};			
		};
	};	
	case "Jonzie_Viper" :
	{
		switch (_index) do
		{
			case 0: {_color = "Aleatoire";};
		};
	};
	case "A3L_PuntoBlack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "A3L_RegalBlack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy Orange";};			
			case 4: {_color = "Glossy White";};
		};
	};
	case "A3L_JeepWhiteBlack" :
	{
		switch (_index) do
		{
			case 0: {_color = "White/Tan";};
			case 1: {_color = "White/Black";};
			case 2: {_color = "Green/Black";};
			case 3: {_color = "Green/Tan";};			
			case 4: {_color = "Red/Tan";};
			case 5: {_color = "Red/Black";};
			case 6: {_color = "Brown/Tan";};
			case 7: {_color = "Tan/Black";};
			case 8: {_color = "Grey/Tan";};			
			case 9: {_color = "Grey/Black";};			
		};
	};
	case "A3L_VolksWagenGolfGTiblack" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};
	case "S_Rangerover_Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};			
			case 4: {_color = "Glossy Purple";};
			case 5: {_color = "Glossy Green";};
			case 6: {_color = "Glossy Grey";};
			case 7: {_color = "Glossy Orange";};			
		};
	};
	case "A3L_F350Black" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy Blue";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Red";};
			case 3: {_color = "Glossy White";};
		};
	};	
	case "IVORY_PRIUS" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Taxi";};
			case 11: {_color = "Traffic Enforcement";};
			case 12: {_color = "Patrol";};
			case 13: {_color = "Police Sport";};			
			case 14: {_color = "EMS";};
		};
	};
	case "IVORY_R8SPYDER" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
		};
	};
	case "IVORY_R8" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
		};
	};
	case "IVORY_REV" :
	{
		switch (_index) do
		{
			case 0: {_color = "Matte White";};
			case 1: {_color = "Matte Black";};
			case 2: {_color = "Matte Blue";};
			case 3: {_color = "Matte Pink";};
			case 4: {_color = "Matte Green";};
			case 5: {_color = "Matte Red";};
			case 6: {_color = "Matte Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
			case 11: {_color = "Interceptor";};
			case 12: {_color = "Sheriff";};
			case 13: {_color = "Stoner 0-1";};
			case 14: {_color = "Sherpard 0-2";};
			case 15: {_color = "Martinez 1-1";};
			case 16: {_color = "Falon 1-2";};
			case 17: {_color = "Kwoczalla 1-3";};
			case 18: {_color = "Emerson 1-4";};
			case 19: {_color = "Koester 1-7";};
			case 20: {_color = "Forman 1-8";};
			case 21: {_color = "Abshire 2-0";};
			case 22: {_color = "McGuinness 2-1";};
			case 23: {_color = "Blue 2-2";};
			case 24: {_color = "O'hara 2-3";};
			case 25: {_color = "Gates 2-4";};
			case 26: {_color = "Indigo 2-5";};
			case 27: {_color = "Warfel 2-6";};
			case 28: {_color = "Votov 4-1";};
			case 29: {_color = "Reed 4-2";};
//			case 30: {_color = "Black White";};
//			case 31: {_color = "Blue Camo";};
//			case 32: {_color = "Camo";};
//			case 33: {_color = "Clouds";};
//			case 34: {_color = "Fire";};
//			case 35: {_color = "Galaxy";};
//			case 36: {_color = "Sky";};
		};
	};
	case "Jonzie_Viper" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
		};
	};
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
		};
	};	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{			
			case 0: {_color = "Orig1"};
			case 1: {_color = "Orig2"};	
			case 2: {_color = "TAXI"};			
			case 3: {_color = "Cop";};
		};
	};	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
		};
	};
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
		};
	};
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Police"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS White"};
		};
	};
	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Police"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS"};
		};
	};
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS"};
		};
	};
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
			case 2: {_color = "Black"};			
		};
	};
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SWAT"};
		};
	};
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "VIP"};
			case 1: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_medevac_F":
	{
		switch (_index) do
		{
			case 0: {_color = "EMS"};
		};
	};
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
};

_color;
