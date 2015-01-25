/*
	File: fn_initSpy.sqf
	
	Description:
	Does some things that I made over-complicated / un-needed but blah.
	Will eventually include server-side checks but it's blah at this point.
	
	Will also become a standalone system which is why it's setup like this.
*/
private["_binConfigPatches","_cfgPatches","_endM"];
if(isServer && !hasInterface) exitWith {}; //Server doesn't need to know.
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define __GETC__(var) (call var)

__CONST__(W_O_O_K_I_E_ANTI_ANTI_HAX,"No");
__CONST__(W_O_O_K_I_E_FUD_ANTI_ANTI_HAX,"No");
__CONST__(E_X_T_A_S_Y_ANTI_ANTI_HAX,"CopyPasta");
__CONST__(E_X_T_A_S_Y_Pro_RE,"Iswhat");
__CONST__(E_X_T_A_S_Y_Car_RE,"Youdo");
__CONST__(DO_NUKE,"LOL");
__CONST__(JxMxE_spunkveh,"Blah");
__CONST__(JxMxE_spunkveh2,"Blah");
__CONST__(JxMxE_spunkair,"Blah");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE_OLD,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_VEH,"No");
__CONST__(JJJJ_MMMM___EEEEEEE_SPAWN_WEAPON,"No");

/*
	Compile our list of allowed addon patches, by default this DOES NOT ALLOW ANY ADDONS.
	
	If you want to white-list addons such as JSRS or Blastcore you need to start a test instance (Host locally and not the mission) and first fill the SPY_cfg_patchList array, once you executed it (Filled it)
	Run the following code and it will copy the list of addons / patches not in the list to your clipboard (Ctrl + V) and then add it to the array.
	
	_cfgPatches = [];
	_binConfigPatches = configFile >> "CfgPatches";
	for "_i" from 0 to count (_binConfigPatches)-1 do {
		_patchEntry = _binConfigPatches select _i;
		if(isClass _patchEntry) then {
			if(!((configName _patchEntry) in SPY_cfg_patchList)) then {
				_cfgPatches set[count _cfgPatches,(configName _patchEntry)];
			};
		};
	};
	copyToClipboard str(_cfgPatches);
	
	i.e
	["cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","JSRS_Environment","WarFXPE","cba_common","cba_events","cba_hashes","cba_network","cba_strings","cba_ui","cba_vectors","JSRS2_120mm_Cannon","JSRS2_127","JSRS2_155mm_AMOS",
	"JSRS2_230mm_Titan","JSRS2_30mm_Cannon","JSRS2_35mm_Autocannon","JSRS2_4Five45","JSRS2_ACPC","JSRS2_Autocannon","JSRS2_Bullethits","JSRS2_DAGR","JSRS2_DAR","JSRS2_EBR","JSRS2_Explosions","JSRS2_Explosives","JSRS2_Filters","JSRS2_FS2000",
	"JSRS2_Gatling","JSRS2_GMG20","JSRS2_GMG40","JSRS2_Khaybar","JSRS2_LMGRCWS","JSRS2_M134","JSRS2_M200","JSRS2_M320R","JSRS2_M6","JSRS2_Minigun","JSRS2_MX","JSRS2_NLAW","JSRS2_P07","JSRS2_PDW","JSRS2_Rahim","JSRS2_Rook40","JSRS2_RPG32",
	"JSRS2_Scorpian","JSRS2_SDAR","JSRS2_Skalpel_ATGM","JSRS2_Skyfire","JSRS2_Sonic_Cracks","JSRS2_Titan","JSRS2_TRG20","JSRS2_Vector","JSRS2_Veh_Titan","JSRS2_Zafir","JSRS2_Zubr45","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic","cba_help",
	"cba_ui_helper","cba_versioning","JSRS2_Movement","JSRS2_Silencers","cba_main","cba_main_a3","JSRS2_2S9_Sorcher","JSRS2_AFV4_Gorgon","JSRS2_AH99_Blackfoot","JSRS2_AH9_Pawnee","JSRS2_AMV7_Marshal","JSRS2_BTRK_Kamysh","JSRS2_CH49_Mohawk","JSRS2_Distance",
	"JSRS2_FighterPlane3","JSRS2_FV720_Mora","JSRS2_Hunter","JSRS2_Ifrit","JSRS2_IFV6a_Cheetah","JSRS2_IFV6c_Panther","JSRS2_M2A1_Slammer","JSRS2_M4_Scorcher","JSRS2_M5_Sandstorm","JSRS2_MBT52_Kuma","JSRS2_Mi48_Kajman","JSRS2_MSE3_Marid","JSRS2_Offroad",
	"JSRS2_Po30_Orca","JSRS2_Strider","JSRS2_SUV","JSRS2_T100_Varsuk","JSRS2_Truck1","JSRS2_Truck2","JSRS2_UAV_1","JSRS2_UH80_GhostHawk","JSRS2_Van","JSRS2_WY55_Hellcat","JSRS2_ZSU39_Tigris","cba_xeh_a3"]
*/
	
_patchList = 
["life_server","CAData","A3_BaseConfig_F","A3_Dubbing_Radio_F","A3_Functions_F","A3_Functions_F_EPA","A3_Functions_F_EPC","A3_Data_F","A3_Data_F_ParticleEffects","A3_Editor_F","A3_Functions_F_Curator",
"A3_Language_F","A3_Language_F_Beta","A3_Language_F_Curator","A3_Language_F_EPA","A3_Language_F_EPB","A3_Language_F_EPC","A3_Language_F_Gamma","A3_LanguageMissions_F","A3_LanguageMissions_F_Beta",
"A3_LanguageMissions_F_Gamma","A3_Misc_F","A3_Misc_F_Helpers","A3_Modules_F","A3_Modules_F_DynO","A3_Modules_F_Effects","A3_Modules_F_Events","A3_Modules_F_GroupModifiers","A3_Modules_F_HC",
"A3_Modules_F_Intel","A3_Modules_F_LiveFeed","A3_Modules_F_Marta","A3_Modules_F_Misc","A3_Modules_F_Multiplayer","A3_Modules_F_ObjectModifiers","A3_Modules_F_Sites","A3_Modules_F_Skirmish",
"A3_Modules_F_StrategicMap","A3_Modules_F_Supports","A3_Modules_F_UAV","A3_Modules_F_Beta","A3_Modules_F_Beta_FiringDrills","A3_Modules_F_EPB","A3_Modules_F_EPB_Misc","A3_Music_F","A3_Music_F_EPA",
"A3_Music_F_EPB","A3_Music_F_EPC","A3_Roads_F","A3_Rocks_F","A3_Sounds_F","A3_Sounds_F_EPB","A3_Sounds_F_EPC","A3_Structures_F","A3_Structures_F_Bridges","A3_Structures_F_Civ","A3_Structures_F_Civ_Accessories",
"A3_Structures_F_Civ_Ancient","A3_Structures_F_Civ_BellTowers","A3_Structures_F_Civ_Calvaries","A3_Structures_F_Civ_Camping","A3_Structures_F_Civ_Chapels","A3_Structures_F_Civ_Constructions","A3_Structures_F_Civ_Dead",
"A3_Structures_F_Civ_Garbage","A3_Structures_F_Civ_InfoBoards","A3_Structures_F_Civ_Lamps","A3_Structures_F_Civ_Market","A3_Structures_F_Civ_Offices","A3_Structures_F_Civ_Pavements","A3_Structures_F_Civ_PlayGround",
"A3_Structures_F_Civ_SportsGrounds","A3_Structures_F_Civ_Statues","A3_Structures_F_Dominants","A3_Structures_F_Dominants_Amphitheater","A3_Structures_F_Dominants_Castle","A3_Structures_F_Dominants_Church",
"A3_Structures_F_Dominants_Hospital","A3_Structures_F_Dominants_Lighthouse","A3_Structures_F_Dominants_WIP","A3_Structures_F_Furniture","A3_Structures_F_Households","A3_Structures_F_Households_Addons",
"A3_Structures_F_Households_House_Big01","A3_Structures_F_Households_House_Big02","A3_Structures_F_Households_House_Shop01","A3_Structures_F_Households_House_Shop02","A3_Structures_F_Households_House_Small01",
"A3_Structures_F_Households_House_Small02","A3_Structures_F_Households_House_Small03","A3_Structures_F_Households_Slum","A3_Structures_F_Households_Stone_Big","A3_Structures_F_Households_Stone_Shed",
"A3_Structures_F_Households_Stone_Small","A3_Structures_F_Households_WIP","A3_Structures_F_Ind","A3_Structures_F_Ind_AirPort","A3_Structures_F_Ind_Cargo","A3_Structures_F_Ind_CarService",
"A3_Structures_F_Ind_ConcreteMixingPlant","A3_Structures_F_Ind_Crane","A3_Structures_F_Ind_DieselPowerPlant","A3_Structures_F_Ind_Factory","A3_Structures_F_Ind_FuelStation","A3_Structures_F_Ind_FuelStation_Small",
"A3_Structures_F_Ind_Pipes","A3_Structures_F_Ind_PowerLines","A3_Structures_F_Ind_ReservoirTank","A3_Structures_F_Ind_Shed","A3_Structures_F_Ind_SolarPowerPlant","A3_Structures_F_Ind_Tank",
"A3_Structures_F_Ind_Transmitter_Tower","A3_Structures_F_Ind_WavePowerPlant","A3_Structures_F_Ind_Windmill","A3_Structures_F_Ind_WindPowerPlant","A3_Structures_F_Items","A3_Structures_F_Items_Documents",
"A3_Structures_F_Items_Electronics","A3_Structures_F_Items_Cans","A3_Structures_F_Items_Gadgets","A3_Structures_F_Items_Luggage","A3_Structures_F_Items_Stationery","A3_Structures_F_Items_Tools",
"A3_Structures_F_Items_Valuables","A3_Structures_F_Items_Vessels","A3_Structures_F_Mil","A3_Structures_F_Mil_BagBunker","A3_Structures_F_Mil_BagFence","A3_Structures_F_Mil_Barracks","A3_Structures_F_Mil_Bunker",
"A3_Structures_F_Mil_Cargo","A3_Structures_F_Mil_Flags","A3_Structures_F_Mil_Fortification","A3_Structures_F_Mil_Helipads","A3_Structures_F_Mil_Offices","A3_Structures_F_Mil_Radar","A3_Structures_F_Mil_Shelters",
"A3_Structures_F_Mil_TentHangar","A3_Structures_F_Naval","A3_Structures_F_Naval_Buoys","A3_Structures_F_Naval_Piers","A3_Structures_F_Naval_RowBoats","A3_Structures_F_Research","A3_Structures_F_System",
"A3_Structures_F_Training","A3_Structures_F_Training_InvisibleTarget","A3_Structures_F_Walls","A3_Structures_F_EPA_Civ_Camping","A3_Structures_F_EPA_Civ_Constructions","A3_Structures_F_EPA_Items_Electronics",
"A3_Structures_F_EPA_Items_Food","A3_Structures_F_EPA_Items_Medical","A3_Structures_F_EPA_Items_Tools","A3_Structures_F_EPA_Items_Vessels","A3_Structures_F_EPA_Walls","A3_Structures_F_EPB_Civ_Accessories",
"A3_Structures_F_EPB_Civ_Camping","A3_Structures_F_EPB_Civ_Dead","A3_Structures_F_EPB_Civ_Garbage","A3_Structures_F_EPB_Civ_Graffiti","A3_Structures_F_EPB_Civ_PlayGround","A3_Structures_F_EPB_Furniture",
"A3_Structures_F_EPB_Items_Documents","A3_Structures_F_EPB_Items_Luggage","A3_Structures_F_EPB_Items_Military","A3_Structures_F_EPB_Items_Vessels","A3_Structures_F_EPB_Naval_Fishing","A3_Structures_F_EPC_Civ_Accessories",
"A3_Structures_F_EPC_Civ_Camping","A3_Structures_F_EPC_Civ_Garbage","A3_Structures_F_EPC_Civ_InfoBoards","A3_Structures_F_EPC_Civ_Kiosks","A3_Structures_F_EPC_Civ_PlayGround",
"A3_Structures_F_EPC_Civ_Tourism","A3_Structures_F_EPC_Dominants_GhostHotel","A3_Structures_F_EPC_Dominants_Stadium","A3_Structures_F_EPC_Furniture","A3_Structures_F_EPC_Items_Documents",
"A3_Structures_F_EPC_Items_Electronics","A3_Structures_F_EPC_Walls","A3_UIFonts_F","A3_Animals_F","A3_Animals_F_AnimConfig","A3_Animals_F_Fishes","A3_Animals_F_Kestrel","A3_Animals_F_Rabbit",
"A3_Animals_F_Seagull","A3_Animals_F_Snakes","A3_Animals_F_Turtle","A3_Animals_F_Chicken","A3_Animals_F_Dog","A3_Animals_F_Goat","A3_Animals_F_Sheep","A3_Anims_F","A3_Anims_F_Config_Sdr",
"A3_Anims_F_EPA","A3_Anims_F_EPC","A3_Map_Data","A3_Map_Stratis","A3_Map_Stratis_Scenes","A3_Plants_F_Bush","A3_Signs_F","A3_Signs_F_AD","A3_UI_F","A3_UI_F_Curator","A3_Weapons_F",
"A3_Weapons_F_NATO","A3_Weapons_F_CSAT","A3_Weapons_F_AAF","A3_weapons_F_FIA","A3_Weapons_F_ItemHolders","A3_Weapons_F_Headgear","A3_Weapons_F_Uniforms","A3_Weapons_F_Vests","A3_Weapons_F_Ammoboxes",
"A3_Weapons_F_DummyWeapons","A3_Weapons_F_Explosives","A3_Weapons_F_Items","A3_Weapons_F_Launchers_NLAW","A3_Weapons_F_Launchers_LAW","A3_Weapons_F_EBR","A3_Weapons_F_LongRangeRifles_GM6",
"A3_Weapons_F_LongRangeRifles_M320","A3_Weapons_F_Machineguns_M200","A3_Weapons_F_Pistols_P07","A3_Weapons_F_Pistols_Rook40","A3_Weapons_F_Rifles_Khaybar","A3_Weapons_F_Rifles_MX","A3_Weapons_F_Rifles_SDAR",
"A3_Weapons_F_Rifles_TRG20","A3_Weapons_F_beta","A3_Weapons_F_Beta_Ammoboxes","A3_Weapons_F_Launchers_Titan","A3_Weapons_F_beta_EBR","A3_Weapons_F_Machineguns_Zafir","A3_Weapons_F_Pistols_ACPC2","A3_Weapons_F_beta_Rifles_Khaybar",
"A3_Weapons_F_Rifles_Mk20","A3_Weapons_F_beta_Rifles_MX","A3_Weapons_F_beta_Rifles_TRG20","A3_Weapons_F_Rifles_Vector","a3_weapons_f_rifles_SMG_02","A3_Weapons_F_EPA_LongRangeRifles_DMR_01","A3_Weapons_F_EPA_EBR",
"A3_Weapons_F_EPA_LongRangeRifles_GM6","A3_Weapons_F_Pistols_Pistol_heavy_01","A3_Weapons_F_Pistols_Pistol_heavy_02","A3_Weapons_F_EPA_Rifles_MX","A3_Weapons_F_EPB_LongRangeRifles_GM3","A3_Weapons_F_EPB_LongRangeRifles_M320",
"A3_Weapons_F_EPB_Rifles_MX_Black","A3_Weapons_F_gamma","A3_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_Pistols_PDW2000","A3_Characters_F","A3_Characters_F_BLUFOR","A3_Characters_F_Civil","A3_Characters_F_Heads",
"A3_Characters_F_OPFOR","A3_Characters_F_Proxies","A3_Characters_F_Beta","A3_Characters_F_INDEP","A3_Characters_F_EPB_Heads","A3_Characters_F_Gamma","A3_Data_F_Curator","A3_Data_F_Curator_Eagle","A3_Data_F_Curator_Intel",
"A3_Data_F_Curator_Misc","A3_Data_F_Curator_Respawn","A3_UAV_F_Characters_F_Gamma","A3_UAV_F_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_gamma_Items","A3_Map_Altis","A3_Map_Altis_Scenes","A3_Missions_F","A3_Missions_F_Beta",
"A3_Missions_F_Gamma","A3_Modules_F_Curator","A3_Modules_F_Curator_Animals","A3_Modules_F_Curator_CAS","A3_Modules_F_Curator_Curator","A3_Modules_F_Curator_Effects","A3_Modules_F_Curator_Environment","A3_Modules_F_Curator_Flares",
"A3_Modules_F_Curator_Intel","A3_Modules_F_Curator_Lightning","A3_Modules_F_Curator_Mines","A3_Modules_F_Curator_Misc","A3_Modules_F_Curator_Multiplayer","A3_Modules_F_Curator_Objectives","A3_Modules_F_Curator_Ordnance",
"A3_Modules_F_Curator_Respawn","A3_Modules_F_Curator_Smokeshells","A3_Static_F","A3_Static_F_Mortar_01","A3_Static_F_Beta_Mortar_01","A3_Static_F_Gamma","A3_Static_F_Gamma_AA","A3_Static_F_Gamma_AT","A3_Static_F_Gamma_Mortar_01",
"A3_Weapons_F_Acc","A3_Weapons_F_Beta_Acc","A3_Weapons_F_EPA","A3_Weapons_F_EPA_Acc","A3_Weapons_F_EPA_Ammoboxes","A3_Weapons_F_EPB","A3_Weapons_F_EPB_Acc","A3_Weapons_F_EPB_Ammoboxes","A3_Weapons_F_EPC","A3_Weapons_F_gamma_Acc",
"A3_Air_F","A3_Air_F_Heli_Light_01","A3_Air_F_Heli_Light_02","A3_Air_F_Beta","A3_Air_F_Beta_Heli_Attack_01","A3_Air_F_Beta_Heli_Attack_02","A3_Air_F_Beta_Heli_Transport_01","A3_Air_F_Beta_Heli_Transport_02","A3_Air_F_Beta_Parachute_01",
"A3_Air_F_Beta_Parachute_02","A3_Air_F_EPB_Heli_Light_03","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPC_Plane_CAS_02","A3_Air_F_Gamma_Plane_Fighter_03","A3_Armor_F","A3_armor_f_beta","A3_Armor_F_Panther","A3_armor_f_beta_APC_Tracked_02",
"A3_Armor_F_EPB_APC_tracked_03","A3_Armor_F_EPB_MBT_03","A3_Armor_F_Slammer","A3_Armor_F_T100K","A3_Boat_F","A3_Boat_F_Boat_Armed_01","A3_Boat_F_Boat_Transport_01","A3_Boat_F_Beta_Boat_Armed_01","A3_Boat_F_Beta_Boat_Transport_01",
"A3_Boat_F_SDV_01","A3_Boat_F_EPC_Submarine_01_F","A3_Boat_F_Civilian_Boat","A3_Boat_F_Trawler","A3_Boat_F_Gamma_Boat_Transport_01","A3_Characters_F_Common","A3_Characters_F_EPA","A3_Characters_F_EPB","A3_Characters_F_EPC",
"A3_Data_F_Curator_Characters","A3_Data_F_Curator_Virtual","A3_Air_F_Gamma_UAV_01","A3_Air_F_Gamma_UAV_02","A3_Missions_F_EPA","A3_Missions_F_EPB","A3_Missions_F_EPC","A3_Modules_F_Curator_Chemlights","A3_Soft_F","A3_Soft_F_MRAP_01",
"A3_Soft_F_MRAP_02","A3_Soft_F_Offroad_01","A3_Soft_F_Quadbike","A3_Soft_F_MRAP_03","A3_Soft_F_Beta_Quadbike","A3_Soft_F_HEMTT","A3_Soft_F_TruckHeavy","A3_Soft_F_EPC_Truck_03","A3_Soft_F_Car","A3_Soft_F_Gamma_Offroad",
"A3_Soft_F_Gamma_Quadbike","A3_Soft_F_SUV","A3_Soft_F_Gamma_HEMTT","A3_Soft_F_Gamma_TruckHeavy","A3_Soft_F_Truck","A3_Structures_F_Wrecks","A3_Structures_F_EPA_Mil_Scrapyard","A3_Air_F_EPC_Plane_Fighter_03",
"A3_Armor_F_AMV","A3_Armor_F_Marid","A3_Armor_F_EPC_MBT_01","A3_Armor_F_APC_Wheeled_03","A3_CargoPoses_F","A3_Soft_F_Crusher_UGV","A3_Missions_F_Curator","A3_Data_F_Kart_ParticleEffects","A3_Language_F_Kart",
"A3_LanguageMissions_F_Kart","A3_Structures_F_Kart_Civ_SportsGrounds","A3_Structures_F_Kart_Mil_Flags","A3_Anims_F_Kart","A3_Structures_F_Kart_Signs_Companies","A3_UI_F_Kart",
"A3_Weapons_F_Kart_Pistols_Pistol_Signal_F","A3_Data_F_Kart","A3_Missions_F_Kart","A3_Modules_F_Kart","A3_Modules_F_Kart_TimeTrials","A3_Weapons_F_Kart","A3_Characters_F_Kart","A3_Soft_F_Kart_Kart_01",
"A3_Structures_F_Civ_Graffiti","A3_Structures_F_Civ_Kiosks","A3_Structures_F_Civ_Tourism","A3_Structures_F_Items_Medical","A3_Structures_F_Items_Military","A3_Structures_F_Naval_Fishing","A3_Structures_F_Signs_Companies","A3_Structures_F_Mil_Scrapyard",
"A3_Soft_F_Bootcamp_Truck","A3_Soft_F_Bootcamp_Quadbike","A3_Soft_F_Bootcamp_Offroad_01","A3_Weapons_F_Bootcamp","A3_Modules_F_Bootcamp_Misc","A3_Modules_F_Bootcamp","A3_Characters_F_Bootcamp_Common","A3_Weapons_F_Bootcamp_Ammoboxes","A3_UI_F_Bootcamp",
"A3_Characters_F_Bootcamp","A3_Weapons_F_Bootcamp_LongRangeRifles_M320","A3_Weapons_F_Bootcamp_LongRangeRifles_GM6","A3_Structures_F_Bootcamp_Items_Food","A3_Structures_F_Bootcamp_Items_Electronics","A3_Structures_F_Bootcamp_Civ_SportsGrounds",
"A3_Structures_F_Bootcamp_Civ_Camping","A3_Language_F_Bootcamp","A3_Functions_F_Bootcamp","A3_Structures_F_Bootcamp_VR_Helpers","A3_Structures_F_Bootcamp_VR_CoverObjects","A3_Structures_F_Bootcamp_VR_Blocks","A3_Structures_F_Bootcamp_Training",
"A3_Structures_F_Bootcamp_System","A3_Structures_F_Bootcamp_Items_Sport","A3_Structures_F_Bootcamp_Ind_Cargo","A3_Sounds_F_Bootcamp","A3_Data_F_Bootcamp","A3_Map_VR_Scenes","A3_Missions_F_Bootcamp","A3_Music_F_Bootcamp","Map_VR","A3Data",
"A3_Data_F_Hook","A3_Air_F_RTD","A3_Functions_F_Heli","A3_Language_F_Heli","A3_Modules_F_Heli","A3_Modules_F_Heli_SpawnAi",
"A3_Music_F_Heli","A3_Structures_F_Heli_Civ_Accessories","A3_Structures_F_Heli_Civ_Constructions","A3_Structures_F_Heli_Civ_Garbage",
"A3_Structures_F_Heli_Civ_Market","A3_Structures_F_Heli_Furniture","A3_Structures_F_Heli_Ind_AirPort","A3_Structures_F_Heli_Ind_Cargo",
"A3_Structures_F_Heli_Ind_Machines","A3_Structures_F_Heli_Items_Airport","A3_Structures_F_Heli_Items_Luggage","A3_Structures_F_Heli_Items_Sport",
"A3_Structures_F_Heli_Items_Tools","A3_Structures_F_Heli_VR_Helpers","A3_Structures_F_Heli_Items_Electronics","A3_Structures_F_Heli_Items_Food",
"A3_Anims_F_Heli","A3_Supplies_F_Heli","A3_Supplies_F_Heli_Bladders","A3_Supplies_F_Heli_CargoNets","A3_Supplies_F_Heli_Fuel","A3_Supplies_F_Heli_Slingload",
"A3_Air_F_RTD","A3_Boat_F_Heli_Boat_Armed_01","A3_Boat_F_Heli_SDV_01","A3_Data_F_Heli","A3_Missions_F_Heli","A3_Soft_F_Heli_Car",
"A3_Soft_F_Heli_MRAP_01","A3_Air_F_Heli_Heli_Transport_04","A3_Soft_F_Heli_MRAP_02","A3_Soft_F_Heli_MRAP_03","A3_Soft_F_Heli_Quadbike","A3_Soft_F_Heli_SUV",
"A3_Soft_F_Heli_Truck","A3_UI_F_Heli","A3_Air_F_Heli","A3_Air_F_Heli_Heli_Attack_01","A3_Air_F_Heli_Heli_Attack_02","A3_Air_F_Heli_Heli_Light_01","A3_Air_F_Heli_Heli_Light_02","A3_Air_F_Heli_Heli_Light_03",
"A3_Air_F_Heli_Heli_Transport_01","A3_Air_F_Heli_Heli_Transport_02","A3_Air_F_Heli_Heli_Transport_03","A3_Air_F_Heli_Heli_Transport_04",
"A3_CargoPoses_F_Heli","A3_Soft_F_Heli_Crusher_UGV","a2l_trafficlights","CAData","A3_BaseConfig_F","A3_Dubbing_Radio_F","A3_Functions_F","A3_Functions_F_EPA","A3_Functions_F_EPC","Map_VR","A3_Map_VR_Scenes","A3_Bush","A3_Plants","A3_Trees","testanimation",
"ASL_AS350","A3L_Atom","a3l_axe","A3L_Balaclava","A3L_Bank","A3L_BBQ","A3L_Billboards","A3L_Bomb","A3L_Boxes","A3L_BMW135","A3L_CarStore","A3L_Court","A3L_Crops","A3L_EMTMain","A3L_EMTMain_Bottom","A3L_Factory","A3L_FactoryMachinery","A3L_FatHead","firehat",
"A3L_Flipcar","A3L_ForSale","A3L_Halloween","A3L_Jigsaw","A3L_Hammer","hardhat","a3l_hats","A3L_Helmets","A3L_Horse","A3L_HospitalBed","A3L_Ferrari","A3L_Hoverboard_bull","A3L_jailBus","A3L_KartIndoor","A3L_MainBank","A3L_ManuMachine","A3L_Markers","A3L_MarketStall",
"A3L_MoneyPile","A3L_MonsterTruck","A3L_Nightclub","A3L_PaintBallHelmet","A3L_PaintBallObjects","a3l_pickaxe","Heli_addon","A3L_PoliceHQ","A3L_Prison","A3L_Prison_Gates","A3L_PrisonWall","maxhat","A3L_Ramps","A3L_Rocks","A3L_savepoint","A3L_SchoolBus","A3L_Schultz_Fences",
"A3L_Schultz_Obj","A3L_Sign2","A3L_Sign3","A3L_Sign","CAWheeled2_MMT","A3L_Sounds","A3L_Shovel","A3L_Spanner","A3L_SuicideVest","A3L_Tarmac","A3L_Vests","A3L_Wedding","A3L_WorkBench","b737","b747","BTTF","CABuildings","CAData_ParticleEffects","CARoads2Dam","CASigns2",
"CAStructures","CAStructuresBarn_W","CAStructuresHouse","CAStructuresHouse_A_Office01","CAStructuresHouse_A_Office02","CAStructuresHouse_HouseV2","CAStructuresHouse_HouseV","pond_test","CAStructures_Proxy_BuildingParts","CAStructures_Proxy_Ruins","CAStructures_Ruins",
"CAStructuresShed_Small","CAStructures_E","CAStructures_E_HouseA","CAStructures_E_HouseA_A_Villa","CAStructures_E_Misc_Misc_Interier","CAStructures_E_Misc_Misc_Water","CAWheeled3","CAWheeled3_M1030","CAWheeled3_TT650","cse_f_configuration","cse_f_states","cse_gui",
"E76_Buildings","E76_buildingshouseblocks","E76_BuildingsUI","E76_Objects","E76_buildingsA1_hotel","E76_objectsA1_Misc","E76_objectsA1_watertank","E76_objectsapplewood","E76_BuildingsShops","E76_objectsdam","E76_objectsHouse_E76_jail","E76_objectsjunkpress",
"E76objectsVictimboard","E76_roads","E76_roadsbetonblock","E76_Roads_bridge1","E76_roadsMisc","E76_roadsmodules","E76_objectsrailroad","E76_roadsroadsigns","E76_roadstrafficlights","E76_RoadsTunnel","Glider","il96","IVORY_CRJ200","IVORY_ERJ135","IVORY_T6A",
"ivory_yak42d","jokermask","mbg_african_buildings","MBG_Buildings_2","MBG_Buildings_3","MBG_Islandobject","Oz_Is_Objects","pld_objects","santahat","SMD_sahrani_artif_obj","Buildings","castle","buildings_misc","particle_effects","CASounds","tu154","turban",
"cba_xeh","Extended_EventHandlers","CBA_Extended_EventHandlers","yak42","A3_Data_F","A3_Data_F_ParticleEffects","A3_Data_F_Bootcamp","A3_Data_F_Kart_ParticleEffects","A3_Editor_F","A3_Functions_F_Bootcamp","A3_Functions_F_Curator","A3_Functions_F_Heli",
"A3_Language_F","A3_Language_F_Beta","A3_Language_F_Curator","A3_Language_F_EPA","A3_Language_F_EPB","A3_Language_F_EPC","A3_Language_F_Gamma","A3_Language_F_Heli","A3_Language_F_Kart","A3_LanguageMissions_F","A3_LanguageMissions_F_Beta","A3_LanguageMissions_F_Gamma",
"A3_LanguageMissions_F_Kart","A3_Misc_F","A3_Misc_F_Helpers","A3_Modules_F","A3_Modules_F_DynO","A3_Modules_F_Effects","A3_Modules_F_Events","A3_Modules_F_GroupModifiers","A3_Modules_F_HC","A3_Modules_F_Intel","A3_Modules_F_LiveFeed","A3_Modules_F_Marta",
"A3_Modules_F_Misc","A3_Modules_F_Multiplayer","A3_Modules_F_ObjectModifiers","A3_Modules_F_Sites","A3_Modules_F_Skirmish","A3_Modules_F_StrategicMap","A3_Modules_F_Supports","A3_Modules_F_UAV","A3_Modules_F_Beta","A3_Modules_F_Beta_FiringDrills","A3_Modules_F_EPB",
"A3_Modules_F_EPB_Misc","A3_Modules_F_Heli","A3_Modules_F_Heli_SpawnAi","A3_Music_F","A3_Music_F_Bootcamp","A3_Music_F_EPA","A3_Music_F_EPB","A3_Music_F_EPC","A3_Music_F_Heli","A3_Roads_F","A3_Rocks_F","A3_Sounds_F","A3_Sounds_F_Bootcamp","A3_Sounds_F_EPB","A3_Sounds_F_EPC",
"A3_Structures_F","A3_Structures_F_Bridges","A3_Structures_F_Civ","A3_Structures_F_Civ_Accessories","A3_Structures_F_Civ_Ancient","A3_Structures_F_Civ_BellTowers","A3_Structures_F_Civ_Calvaries","A3_Structures_F_Civ_Camping","A3_Structures_F_Civ_Chapels",
"A3_Structures_F_Civ_Constructions","A3_Structures_F_Civ_Dead","A3_Structures_F_Civ_Garbage","A3_Structures_F_Civ_Graffiti","A3_Structures_F_Civ_InfoBoards","A3_Structures_F_Civ_Kiosks","A3_Structures_F_Civ_Lamps","A3_Structures_F_Civ_Market","A3_Structures_F_Civ_Offices",
"A3_Structures_F_Civ_Pavements","A3_Structures_F_Civ_PlayGround","A3_Structures_F_Civ_SportsGrounds","A3_Structures_F_Civ_Statues","A3_Structures_F_Civ_Tourism","A3_Structures_F_Dominants","A3_Structures_F_Dominants_Amphitheater","A3_Structures_F_Dominants_Castle",
"A3_Structures_F_Dominants_Church","A3_Structures_F_Dominants_Hospital","A3_Structures_F_Dominants_Lighthouse","A3_Structures_F_Dominants_WIP","A3_Structures_F_Furniture","A3_Structures_F_Households","A3_Structures_F_Households_Addons","A3_Structures_F_Households_House_Big01",
"A3_Structures_F_Households_House_Big02","A3_Structures_F_Households_House_Shop01","A3_Structures_F_Households_House_Shop02","A3_Structures_F_Households_House_Small01","A3_Structures_F_Households_House_Small02","A3_Structures_F_Households_House_Small03","A3_Structures_F_Households_Slum",
"A3_Structures_F_Households_Stone_Big","A3_Structures_F_Households_Stone_Shed","A3_Structures_F_Households_Stone_Small","A3_Structures_F_Households_WIP","A3_Structures_F_Ind","A3_Structures_F_Ind_AirPort","A3_Structures_F_Ind_Cargo","A3_Structures_F_Ind_CarService","A3_Structures_F_Ind_ConcreteMixingPlant",
"A3_Structures_F_Ind_Crane","A3_Structures_F_Ind_DieselPowerPlant","A3_Structures_F_Ind_Factory","A3_Structures_F_Ind_FuelStation","A3_Structures_F_Ind_FuelStation_Small","A3_Structures_F_Ind_Pipes","A3_Structures_F_Ind_PowerLines","A3_Structures_F_Ind_ReservoirTank","A3_Structures_F_Ind_Shed",
"A3_Structures_F_Ind_SolarPowerPlant","A3_Structures_F_Ind_Tank","A3_Structures_F_Ind_Transmitter_Tower","A3_Structures_F_Ind_WavePowerPlant","A3_Structures_F_Ind_Windmill","A3_Structures_F_Ind_WindPowerPlant","A3_Structures_F_Items","A3_Structures_F_Items_Documents","A3_Structures_F_Items_Electronics",
"A3_Structures_F_Items_Cans","A3_Structures_F_Items_Gadgets","A3_Structures_F_Items_Luggage","A3_Structures_F_Items_Medical","A3_Structures_F_Items_Military","A3_Structures_F_Items_Stationery","A3_Structures_F_Items_Tools","A3_Structures_F_Items_Valuables","A3_Structures_F_Items_Vessels",
"A3_Structures_F_Mil","A3_Structures_F_Mil_BagBunker","A3_Structures_F_Mil_BagFence","A3_Structures_F_Mil_Barracks","A3_Structures_F_Mil_Bunker","A3_Structures_F_Mil_Cargo","A3_Structures_F_Mil_Flags","A3_Structures_F_Mil_Fortification","A3_Structures_F_Mil_Helipads","A3_Structures_F_Mil_Offices",
"A3_Structures_F_Mil_Radar","A3_Structures_F_Mil_Shelters","A3_Structures_F_Mil_TentHangar","A3_Structures_F_Naval","A3_Structures_F_Naval_Buoys","A3_Structures_F_Naval_Fishing","A3_Structures_F_Naval_Piers","A3_Structures_F_Naval_RowBoats","A3_Structures_F_Research","A3_Structures_F_System",
"A3_Structures_F_Training","A3_Structures_F_Training_InvisibleTarget","A3_Structures_F_Walls","A3_Structures_F_Bootcamp_Ind_Cargo","A3_Structures_F_Bootcamp_Items_Sport","A3_Structures_F_Bootcamp_System","A3_Structures_F_Bootcamp_Training","A3_Structures_F_Bootcamp_VR_Blocks",
"A3_Structures_F_Bootcamp_VR_CoverObjects","A3_Structures_F_Bootcamp_VR_Helpers","A3_Structures_F_EPA_Civ_Camping","A3_Structures_F_EPA_Civ_Constructions","A3_Structures_F_EPA_Items_Electronics","A3_Structures_F_EPA_Items_Food","A3_Structures_F_EPA_Items_Medical","A3_Structures_F_EPA_Items_Tools",
"A3_Structures_F_EPA_Items_Vessels","A3_Structures_F_EPA_Walls","A3_Structures_F_EPB_Civ_Accessories","A3_Structures_F_EPB_Civ_Camping","A3_Structures_F_EPB_Civ_Dead","A3_Structures_F_EPB_Civ_Garbage","A3_Structures_F_EPB_Civ_Graffiti","A3_Structures_F_EPB_Civ_PlayGround","A3_Structures_F_EPB_Furniture",
"A3_Structures_F_EPB_Items_Documents","A3_Structures_F_EPB_Items_Luggage","A3_Structures_F_EPB_Items_Military","A3_Structures_F_EPB_Items_Vessels","A3_Structures_F_EPB_Naval_Fishing","A3_Structures_F_EPC_Civ_Accessories","A3_Structures_F_EPC_Civ_Camping","A3_Structures_F_EPC_Civ_Garbage","A3_Structures_F_EPC_Civ_InfoBoards",
"A3_Structures_F_EPC_Civ_Kiosks","A3_Structures_F_EPC_Civ_PlayGround","A3_Structures_F_EPC_Civ_Tourism","A3_Structures_F_EPC_Dominants_GhostHotel","A3_Structures_F_EPC_Dominants_Stadium","A3_Structures_F_EPC_Furniture","A3_Structures_F_EPC_Items_Documents","A3_Structures_F_EPC_Items_Electronics","A3_Structures_F_EPC_Walls",
"A3_Structures_F_Heli_Civ_Accessories","A3_Structures_F_Heli_Civ_Constructions","A3_Structures_F_Heli_Civ_Garbage","A3_Structures_F_Heli_Civ_Market","A3_Structures_F_Heli_Furniture","A3_Structures_F_Heli_Ind_AirPort","A3_Structures_F_Heli_Ind_Cargo","A3_Structures_F_Heli_Ind_Machines","A3_Structures_F_Heli_Items_Airport",
"A3_Structures_F_Heli_Items_Luggage","A3_Structures_F_Heli_Items_Sport","A3_Structures_F_Heli_Items_Tools","A3_Structures_F_Heli_VR_Helpers","A3_Structures_F_Kart_Civ_SportsGrounds","A3_Structures_F_Kart_Mil_Flags","A3_UIFonts_F","A3L_Base","A3L_Store","CABuildings2","A_GeneralStore_01","CABuildings2_A_Pub","Barn_Metal",
"CABuildingParts","CABuildingParts_Signs","CATEC","Farm_Cowshed","CAHouseBlock_A","CAHouseBlock_B","CAHouseBlock_C","CAHouseBlock_D","CSA38_SBWZ39","cse_main","cse_sys_medical","E76_buildingsbank","E76_BuildingsHouse","E76_BuildingsMisc","E76_buildingsproxy","E76_buildingstower","mbg_killhouses_a3","WarFXPE","cba_common",
"cba_events","cba_hashes","cba_network","cba_strings","cba_vectors","A3_Animals_F","A3_Animals_F_AnimConfig","A3_Animals_F_Fishes","A3_Animals_F_Kestrel","A3_Animals_F_Rabbit","A3_Animals_F_Seagull","A3_Animals_F_Snakes","A3_Animals_F_Turtle","A3_Animals_F_Chicken","A3_Animals_F_Dog","A3_Animals_F_Goat","A3_Animals_F_Sheep",
"A3_Anims_F","A3_Anims_F_Config_Sdr","A3_Anims_F_EPA","A3_Anims_F_EPC","A3_Anims_F_Kart","A3_Language_F_Bootcamp","A3_Map_Data","A3_Map_Stratis","A3_Map_Stratis_Scenes","A3_Plants_F_Bush","A3_Signs_F","A3_Signs_F_AD","A3_Structures_F_Signs_Companies","A3_Structures_F_Bootcamp_Civ_Camping","A3_Structures_F_Bootcamp_Civ_SportsGrounds",
"A3_Structures_F_Bootcamp_Items_Electronics","A3_Structures_F_Bootcamp_Items_Food","A3_Structures_F_Heli_Items_Electronics","A3_Structures_F_Heli_Items_Food","A3_Structures_F_Kart_Signs_Companies","A3_UI_F","A3_UI_F_Curator","A3_UI_F_Kart","A3_Weapons_F","A3_Weapons_F_NATO","A3_Weapons_F_CSAT","A3_Weapons_F_AAF","A3_weapons_F_FIA",
"A3_Weapons_F_ItemHolders","A3_Weapons_F_Headgear","A3_Weapons_F_Uniforms","A3_Weapons_F_Vests","A3_Weapons_F_Ammoboxes","A3_Weapons_F_DummyWeapons","A3_Weapons_F_Explosives","A3_Weapons_F_Items","A3_Weapons_F_Launchers_NLAW","A3_Weapons_F_Launchers_LAW","A3_Weapons_F_Launchers_Titan","A3_Weapons_F_EPA_LongRangeRifles_DMR_01",
"A3_Weapons_F_EBR","A3_Weapons_F_LongRangeRifles_GM6","A3_Weapons_F_LongRangeRifles_M320","A3_Weapons_F_Machineguns_M200","A3_Weapons_F_Machineguns_Zafir","A3_Weapons_F_Pistols_ACPC2","A3_Weapons_F_Pistols_P07","A3_Weapons_F_Pistols_Pistol_heavy_01","A3_Weapons_F_Pistols_Pistol_heavy_02","A3_Weapons_F_Pistols_Rook40",
"A3_Weapons_F_Rifles_Khaybar","A3_Weapons_F_Rifles_Mk20","A3_Weapons_F_Rifles_MX","A3_Weapons_F_EPB_Rifles_MX_Black","A3_Weapons_F_Rifles_SDAR","A3_Weapons_F_Rifles_TRG20","A3_Weapons_F_Pistols_PDW2000","A3_Weapons_F_Rifles_Vector","a3_weapons_f_rifles_SMG_02","A3_Weapons_F_beta","A3_Weapons_F_Beta_Ammoboxes",
"A3_Weapons_F_beta_EBR","A3_Weapons_F_EPA_LongRangeRifles_GM6","A3_Weapons_F_EPB_LongRangeRifles_M320","A3_Weapons_F_beta_Rifles_Khaybar","A3_Weapons_F_beta_Rifles_MX","A3_Weapons_F_beta_Rifles_TRG20","A3_Weapons_F_Bootcamp_LongRangeRifles_GM6","A3_Weapons_F_Bootcamp_LongRangeRifles_M320",
"A3_Weapons_F_EPB_LongRangeRifles_GM3","A3_Weapons_F_gamma","A3_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_EPA_EBR","A3_Weapons_F_EPA_Rifles_MX","A3_Weapons_F_Kart_Pistols_Pistol_Signal_F","Test_weapon_F","A3L_Client","A3L_Extinquisher","Radar_Gun","Taser_26","Tv_Camera",
"cse_f_eh","cse_f_modules","cse_sys_equipment","LakesideValley","RH_de_cfg","RH_m4_cfg","task_force_radio_items","Blastcore_VEP","cba_ai","cba_arrays","cba_diagnostic","cba_help","cba_keybinding","cba_ui","cba_ui_helper","cba_versioning",
"A3_Anims_F_Heli","A3_Characters_F","A3_Characters_F_BLUFOR","A3_Characters_F_Civil","A3_Characters_F_Heads","A3_Characters_F_OPFOR","A3_Characters_F_Proxies","A3_Characters_F_Beta","A3_Characters_F_INDEP","A3_Characters_F_Bootcamp","A3_Characters_F_EPB_Heads","A3_Characters_F_Gamma","A3_Data_F_Curator",
"A3_Data_F_Curator_Eagle","A3_Data_F_Curator_Intel","A3_Data_F_Curator_Misc","A3_Data_F_Curator_Respawn","A3_Data_F_Kart","A3_UAV_F_Characters_F_Gamma","A3_UAV_F_Weapons_F_Gamma_Ammoboxes","A3_Weapons_F_gamma_Items","A3_Map_Altis","A3_Map_Altis_Scenes","A3_Missions_F","A3_Missions_F_Beta","A3_Missions_F_Gamma",
"A3_Missions_F_Kart","A3_Modules_F_Curator","A3_Modules_F_Curator_Animals","A3_Modules_F_Curator_CAS","A3_Modules_F_Curator_Curator","A3_Modules_F_Curator_Effects","A3_Modules_F_Curator_Environment","A3_Modules_F_Curator_Flares","A3_Modules_F_Curator_Intel","A3_Modules_F_Curator_Lightning","A3_Modules_F_Curator_Mines",
"A3_Modules_F_Curator_Misc","A3_Modules_F_Curator_Multiplayer","A3_Modules_F_Curator_Objectives","A3_Modules_F_Curator_Ordnance","A3_Modules_F_Curator_Respawn","A3_Modules_F_Curator_Smokeshells","A3_Modules_F_Kart","A3_Modules_F_Kart_TimeTrials","A3_Static_F","A3_Static_F_Mortar_01","A3_Static_F_Beta_Mortar_01",
"A3_Static_F_Gamma","A3_Static_F_Gamma_Mortar_01","A3_Supplies_F_Heli","A3_Supplies_F_Heli_Bladders","A3_Supplies_F_Heli_CargoNets","A3_Supplies_F_Heli_Fuel","A3_Supplies_F_Heli_Slingload","A3_UI_F_Bootcamp","A3_Weapons_F_Acc","A3_Weapons_F_Beta_Acc","A3_Weapons_F_Bootcamp_Ammoboxes","A3_Weapons_F_EPA","A3_Weapons_F_EPA_Acc",
"A3_Weapons_F_EPA_Ammoboxes","A3_Weapons_F_EPB","A3_Weapons_F_EPB_Acc","A3_Weapons_F_EPB_Ammoboxes","A3_Weapons_F_EPC","A3_Weapons_F_gamma_Acc","A3_Weapons_F_Kart","A3L_Anims","Test_Character_F","A3L_Civ10","A3L_Civ11","A3L_Civ12","A3L_Civ13","A3L_Civ14","A3L_Civ15","A3L_civ16","A3L_Civ17","A3L_civ18","A3L_civ19","A3L_civ1",
"A3L_civ20","A3L_Civ21","A3L_Civ22","A3L_Civ23","A3L_Civ25","A3L_civ2","A3L_civ3","A3L_Civ4","A3L_Civ5","A3L_Civ7","A3L_Civ8","A3L_Civ9","A3L_Client2","A3L_Coveralls","A3L_EMT2","A3L_EMT1","A3L_Patrol2","A3L_Patrol3","A3L_PoloShirts","A3L_Rangemaster","A3L_SWAT1","SWATvest2","SWATvest","SWERTvest","A3L_UniPD","A3L_UniSWAT",
"A3L_PoliceVests","FEMAL3_Heads","FEMAL3_UnitInfo","cba_main","cba_main_a3","A3_Air_F","A3_Air_F_Heli_Light_01","A3_Air_F_Heli_Light_02","A3_Air_F_Beta","A3_Air_F_Beta_Heli_Attack_01","A3_Air_F_Beta_Heli_Attack_02","A3_Air_F_Beta_Heli_Transport_01","A3_Air_F_Beta_Heli_Transport_02","A3_Air_F_Beta_Parachute_01",
"A3_Air_F_Beta_Parachute_02","A3_Air_F_EPB_Heli_Light_03","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPC_Plane_CAS_02","A3_Air_F_Gamma_Plane_Fighter_03","A3_Air_F_RTD","A3_Armor_F","A3_armor_f_beta","A3_Armor_F_Panther","A3_armor_f_beta_APC_Tracked_02","A3_Armor_F_EPB_APC_tracked_03","A3_Armor_F_EPB_MBT_03","A3_Armor_F_Slammer",
"A3_Armor_F_T100K","A3_Boat_F","A3_Boat_F_Boat_Armed_01","A3_Boat_F_Boat_Transport_01","A3_Boat_F_Beta_Boat_Armed_01","A3_Boat_F_Beta_Boat_Transport_01","A3_Boat_F_SDV_01","A3_Boat_F_EPC_Submarine_01_F","A3_Boat_F_Civilian_Boat","A3_Boat_F_Trawler","A3_Boat_F_Gamma_Boat_Transport_01","A3_Boat_F_Heli_Boat_Armed_01",
"A3_Boat_F_Heli_SDV_01","A3_Characters_F_Common","A3_Characters_F_Bootcamp_Common","A3_Characters_F_EPA","A3_Characters_F_EPB","A3_Characters_F_EPC","A3_Characters_F_Kart","A3_Data_F_Curator_Characters","A3_Data_F_Curator_Virtual","A3_Data_F_Heli","A3_Air_F_Gamma_UAV_01","A3_Air_F_Gamma_UAV_02","A3_Missions_F_Bootcamp",
"A3_Missions_F_Curator","A3_Missions_F_EPA","A3_Missions_F_EPB","A3_Missions_F_EPC","A3_Missions_F_Heli","A3_Modules_F_Bootcamp","A3_Modules_F_Bootcamp_Misc","A3_Modules_F_Curator_Chemlights","A3_Soft_F","A3_Soft_F_MRAP_01","A3_Soft_F_MRAP_02","A3_Soft_F_Offroad_01","A3_Soft_F_Quadbike","A3_Soft_F_MRAP_03",
"A3_Soft_F_Beta_Quadbike","A3_Soft_F_HEMTT","A3_Soft_F_TruckHeavy","A3_Soft_F_EPC_Truck_03","A3_Soft_F_Car","A3_Soft_F_Gamma_Offroad","A3_Soft_F_Gamma_Quadbike","A3_Soft_F_SUV","A3_Soft_F_Gamma_HEMTT","A3_Soft_F_Gamma_TruckHeavy","A3_Soft_F_Truck","A3_Soft_F_Heli_Car","A3_Soft_F_Heli_MRAP_01","A3_Soft_F_Heli_MRAP_02",
"A3_Soft_F_Heli_MRAP_03","A3_Soft_F_Heli_Quadbike","A3_Soft_F_Heli_SUV","A3_Soft_F_Heli_Truck","A3_Soft_F_Kart_Kart_01","A3_Static_F_Gamma_AA","A3_Static_F_Gamma_AT","A3_Structures_F_Mil_Scrapyard","A3_Structures_F_Wrecks","A3_Structures_F_EPA_Mil_Scrapyard","A3_UI_F_Heli","A3_Weapons_F_Bootcamp","A3L_RockX","BMW_M5",
"A3L_Bus","A3L_Challenger","A3L_Charger","A3L_Container","A3L_Cooper","A3L_Crane","A3L_CVPI_F","A3L_Dumptruck","A3L_Ambulance_F","A3L_Escort","A3L_EvoX_F","A3L_F350","A3L_Ferrari458","Test_car_F","A3L_GrandCaravan_F","A3L_Hyster60","A3L_Jeep","A3L_Karts","A3L_Ladders","A3L_LadderTruck","A3L_ObjectsOnSteroids","A3L_PatrolBoat",
"A3L_Regal","A3L_SpeedYacht","A3L_Tahoe_F","A3L_Taurus","A3L_Towtruck","A3L_Tug","A3L_VolksWagenGolfGTi","A3L_VolvoS60R","bwi_a3_t6","D_Cobalt","ivory_b206","IVORY_PRIUS","A3L_R8","IVORY_UH1Y","Jonzie_Ambulance","Jonzie_A3L_Car_Base","Jonzie_Forklift","Jonzie_Mini_Cooper","Jonzie_Viper","S_MclarenP1","S_PorscheRS","S_RangeRover",
"S_Skyline","task_force_radio","cba_xeh_a3","A3_Air_F_EPC_Plane_Fighter_03","A3_Air_F_Heli","A3_Air_F_Heli_Heli_Attack_01","A3_Air_F_Heli_Heli_Attack_02","A3_Air_F_Heli_Heli_Light_01","A3_Air_F_Heli_Heli_Light_02","A3_Air_F_Heli_Heli_Light_03","A3_Air_F_Heli_Heli_Transport_01","A3_Air_F_Heli_Heli_Transport_02",
"A3_Air_F_Heli_Heli_Transport_03","A3_Air_F_Heli_Heli_Transport_04","A3_Armor_F_AMV","A3_Armor_F_Marid","A3_Armor_F_EPC_MBT_01","A3_Armor_F_APC_Wheeled_03","A3_CargoPoses_F","A3_CargoPoses_F_Heli","A3_Soft_F_Crusher_UGV","A3_Soft_F_Bootcamp_Offroad_01","A3_Soft_F_Bootcamp_Quadbike","A3_Soft_F_Bootcamp_Truck",
"A3_Soft_F_Heli_Crusher_UGV","A3L_AMC","A3L_Punto","A3L_CarCarrier","A3L_FordKa","A3L_RX7","A3L_Suburban","Camaro","IVORY_REV","IVORY_R8","IVORY_R8SPYDER","A3L_isWL","A3_Stones","Gizz_SniperPack_items","Gizz_SniperPack","mas_weapons","mas_weapons_pack","mas_weapons_nw","mas_weapons_m4","mas_weapons_ak","RPIMA","gign_shield","gign",
"r3f_acc","r3f_armes","r3f_armes_c","r3f_armes_c_fhq","f1car","asdg_jointrails","FHQ_Accessories","cowboyhat","GNT_C185","HAFM_HMMWV","lsd_nvg","H3","DAR_H1","DAR_MTVR"];

uiNamespace setVariable["RscDisplayRemoteMissions",displayNull]; //For Spy-Glass..

_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";

_binConfigPatches = configFile >> "CfgPatches";
for "_i" from 0 to count (_binConfigPatches)-1 do {
	_patchEntry = _binConfigPatches select _i;
	if(isClass _patchEntry) then {
		if(!((configName _patchEntry) in _patchList)) exitWith {
			[[profileName,getPlayerUID player,(configName _patchEntry)],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,format["Unknown Addon Patch: %1",(configName _patchEntry)]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
	};
};
/*
//Check for copy-pasters of Dev-Con styled execution.
//Because I am nice, add these to the following below to allow CBA; "CBA_CREDITS_CONT_C","CBA_CREDITS_M_P
private["_children","_allowedChildren"];
_children = [configFile >> "RscDisplayMPInterrupt" >> "controls",0] call BIS_fnc_returnChildren;
_allowedChildren = [
"Title","MissionTitle","DifficultyTitle","PlayersName","ButtonCancel","ButtonSAVE","ButtonSkip","ButtonRespawn","ButtonOptions",
"ButtonVideo","ButtonAudio","ButtonControls","ButtonGame","ButtonTutorialHints","ButtonAbort","DebugConsole","Feedback","MessageBox"
];

{
	if(!((configName _x) in _allowedChildren)) exitWith {
		[[profileName,getPlayerUID player,"Modified_MPInterrupt"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
		[[profileName,"Devcon like executor detected"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
} foreach _children;
*/
/*
	Display Validator
	Loops through and makes sure none of the displays were modified..
	
	TODO: Run check every x minutes and validate all displays.
*/
{
	_onLoad = getText(configFile >> (_x select 0) >> "onLoad");
	_onUnload = getText(configFile >> (_x select 0) >> "onUnload");
	if(_onLoad != (_x select 1) OR _onUnload != (_x select 2)) exitWith {
		[[profileName,getPlayerUID player,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
		[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call _endM;
	};
}
foreach [
	["RscDisplayMainMap","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayGetReady","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayInventory","[""onLoad"",_this,""RscDisplayInventory"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayInventory"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayLoadMission","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayInterrupt","[""onLoad"",_this,""RscDisplayInterrupt"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayInterrupt"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsVideo","[""onLoad"",_this,""RscDisplayOptionsVideo"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsVideo"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptions","[""onLoad"",_this,""RscDisplayOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayAVTerminal","[""onLoad"",_this,""RscDisplayAVTerminal"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayAVTerminal"",'IGUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayConfigureAction","[""onLoad"",_this,""RscDisplayConfigureAction"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayConfigureAction"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayConfigureControllers","[""onLoad"",_this,""RscDisplayConfigureControllers"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayConfigureControllers"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayControlSchemes","[""onLoad"",_this,""RscDisplayControlSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayControlSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayCustomizeController","[""onLoad"",_this,""RscDisplayCustomizeController"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayCustomizeController"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayDebriefing","[""onLoad"",_this,""RscDisplayDebriefing"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayDebriefing"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayDiary","[""onLoad"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDiary"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayGameOptions","[""onLoad"",_this,""RscDisplayGameOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayGameOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayJoystickSchemes","[""onLoad"",_this,""RscDisplayJoystickSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayJoystickSchemes"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayLoading","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayMicSensitivityOptions","[""onLoad"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayMicSensitivityOptions"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsAudio","[""onLoad"",_this,""RscDisplayOptionsAudio"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsAudio"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayOptionsLayout","[""onLoad"",_this,""RscDisplayOptionsLayout"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayOptionsLayout"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
//	["RscDisplayStart","[""onLoad"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayLoading"",'Loading'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""],
	["RscDisplayVehicleMsgBox","[""onLoad"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf""","[""onUnload"",_this,""RscDisplayVehicleMsgBox"",'GUI'] call compile preprocessfilelinenumbers ""A3\ui_f\scripts\initDisplay.sqf"""]
];

[] execVM "SpyGlass\fn_cmdMenuCheck.sqf";
[] execVM "SpyGlass\fn_variableCheck.sqf";
[] execVM "SpyGlass\fn_menuCheck.sqf";

//Create a no-recoil hack check.
[] spawn {
	waitUntil {(!isNil "life_fnc_moveIn") && !isNull (findDisplay 46)};
	_endM = compile PreProcessFileLineNumbers "\a3\functions_f\Misc\fn_endMission.sqf";
	while {true} do {
		if((unitRecoilCoefficient player) < 1) then {
			[[profileName,getPlayerUID player,"No_recoil_hack"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,"No recoil hack"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call _endM;
		};
		sleep 1.5;
	};
};