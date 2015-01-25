/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["A3L_Priest_Uniform","Priest Uniform",2000],
		["A3L_Suit_Uniform","Suit",2000],
		["A3L_Character_Uniform","Life Uniform",2000],
		["A3L_Dude_Outfit","Dude outfit",2000],
		["A3L_Farmer_Outfit","Farmer Outfit",2000],
		["A3L_Worker_Outfit","Worker Outfit",2000],
		["A3L_Poop2day","I Pooped Today!",2000],
		["A3L_A3LogoPants","A3L Logo Pants",2000],
		["BluePlaid_uni","A3L Plaid (Blue)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
//		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",2000],
		["walkingdead","The Walking Dead",2000],
		["A3L_SpookyMummy","Egyptian Mummy",5000],
		["A3L_Zombie","Scary Zombie",5000],		
		["U_C_Driver_1_black",nil,1500],
		["U_C_Driver_1_blue",nil,1500],
		["U_C_Driver_1_red",nil,1500],
		["U_C_Driver_1_orange",nil,1500],
		["U_C_Driver_1_green",nil,1500],
		["U_C_Driver_1_white",nil,1500],
		["U_C_Driver_1_yellow",nil,1500],
		["U_C_Driver_2",nil,1500],
		["U_C_Driver_1",nil,1500],
		["U_C_Driver_3",nil,1500],
		["U_C_Driver_4",nil,1500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_Legoman","Lego Helmet",500],
			["A3L_soa_helmet","Biker Helmet",500],
			["A3L_gangster_hat","Gangster Mask",500],
			["A3L_Mask","Mask",500],
			["A3L_longhairblack","Long Hair Black",500],
			["A3L_longhairblond","Long Hair Blond",500],
			["A3L_longhairbrown","Long Hair Brown",500],
			["A3L_Crown","Crown",500],
			["cowboyhat","Cowboyhat",500],
			["A3L_mexicanhat","Mexican Hat",500],
			["santahat","Santa hat",500],
			["A3L_Sombrero","Sombrero",500],
			["turban","Turban",500],
			["A3L_russianhat","Russianhat",500],
			["A3L_Halloween_Pumpkinhead","Pumpkin Head",500],
			["A3L_Halloween_PredatorMask","Predator Mask",500],
			["A3L_Halloween_JigSaw","JigSaw Mask",500],
			["A3L_Helmet",nil,500],
			["A3L_Helmetblack",nil,500],			
			["H_RacingHelmet_1_black_F",nil,500],
			["H_RacingHelmet_1_red_F",nil,500],
			["H_RacingHelmet_1_white_F",nil,500],
			["H_RacingHelmet_1_blue_F",nil,500],
			["H_RacingHelmet_1_yellow_F",nil,500],
			["H_RacingHelmet_1_green_F",nil,500],
			["H_RacingHelmet_1_F",nil,500],
			["H_RacingHelmet_2_F",nil,500],
			["H_RacingHelmet_3_F",nil,500],
			["H_RacingHelmet_4_F",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["A3L_SpiderVest","Spidie The Spider!",3000],
			["A3L_SpookyVest","Ghost and Spider",5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};