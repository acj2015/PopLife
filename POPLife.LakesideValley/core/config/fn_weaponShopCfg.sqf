#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"No eres un medico de las EMS"};
                        default {
                                ["Hospital EMS Shop",
                                        [
                                                ["itemRadio",nil,500],
                                                ["ItemGPS",nil,500],
                                                ["Binocular",nil,350],
                                                ["ToolKit",nil,1500],
                                                ["FirstAidKit",nil,2000],
                                                ["Medikit",nil,750],
                                                ["NVGoggles",nil,2000],
                                                ["EMTRM_uni",nil,250],	
                                                ["AGM_Bandage",nil,50],
                                                ["AGM_Morphine",nil,100],
                                                ["AGM_Epipen",nil,100],
                                                ["AGM_Bloodbag",nil,500],
                                                ["AGM_MapTools",nil,200],
                                                ["AGM_SpareBarrel",nil,200],
												["AGM_ItemKestrel",nil,200],	
												["AGM_Altimeter",nil,1000],	
												["AGM_EarBuds",nil,200],		
                                                ["B_Carryall_cbr",nil,1000]										
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_attach":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia"};
                        default
                        {
                                ["Police Attachment Shop",
                                        [
                                                ["muzzle_mas_snds_L",nil,6000],
												["muzzle_mas_snds_LM",nil,20000],
												["muzzle_mas_snds_C",nil,2000],
                                                ["muzzle_mas_snds_M",nil,250],
                                                ["muzzle_mas_snds_Mc",nil,1000],
                                                ["muzzle_mas_snds_AK",nil,1500],
                                                ["muzzle_mas_snds_SM",nil,1000],
                                                ["muzzle_mas_snds_SMc",nil,2500],
                                                ["muzzle_mas_snds_SH",nil,1500],
                                                ["muzzle_mas_snds_SHc",nil,2500],
												["muzzle_mas_snds_SV",nil,1500],
                                                ["muzzle_mas_snds_SVc",nil,2500],
												["muzzle_mas_snds_SVD",nil,1500],
                                                ["muzzle_mas_snds_KSVK",nil,2500],
												["optic_mas_zeiss",nil,1500],
                                                ["optic_mas_zeiss_c",nil,2500],
												["optic_mas_zeiss_eo",nil,1500],
                                                ["optic_mas_zeiss_eo_c",nil,2500],
												["optic_mas_acog",nil,1500],
                                                ["optic_mas_acog_c",nil,2500],
												["optic_mas_acog_eo",nil,1500],
                                                ["optic_mas_acog_eo_c",nil,2500],
												["optic_mas_acog_rd",nil,1500],
                                                ["optic_mas_acog_rd_c",nil,2500],
												["optic_mas_handle",nil,1500],
                                                ["optic_mas_aim",nil,2500],
												["optic_mas_aim_c",nil,1500],
                                                ["optic_mas_pso",nil,2500],
												["optic_mas_pso_c",nil,1500],
                                                ["optic_mas_pso_eo",nil,2500],
												["optic_mas_pso_eo_c",nil,2500],
												["optic_mas_pso_nv",nil,2500],
												["optic_mas_pso_nv_c",nil,2500],
												["optic_mas_pso_nv_eo",nil,2500],
												["optic_mas_pso_nv_eo_c",nil,2500],
												["optic_mas_term",nil,250000],
												["acc_mas_pointer_IR",nil,250000],
												["optic_mas_DMS",nil,2500],
												["optic_mas_Holosight_blk",nil,2500],
												["optic_mas_Holosight_camo",nil,2500],
												["optic_mas_Arco_blk",nil,2500],
												["optic_mas_Arco_camo",nil,2500],
												["optic_mas_Hamr_camo",nil,2500],
												["optic_mas_Aco_camo",nil,2500],
												["optic_mas_ACO_grn_camo",nil,2500],
												["optic_mas_MRCO_camo",nil,2500],
												["RH_ta31rco",nil,10000],
												["RH_shortdot",nil,10000],
												["RH_reflex",nil,10000],
												["RH_fnp45",nil,3000],
                                                ["RH_p226",nil,3000],
                                                ["RH_X300",nil,3000],
                                                ["RH_reflex",nil,5000],
                                                ["RH_m3lr",nil,6000],
                                                ["RH_SFM952V",nil,3000],
                                                ["RH_spr_mbs",nil,3000],
                                                ["RH_ta31rco",nil,10000],
                                                ["RH_eotech553",nil,1000],
												["RH_saker",nil,1000],
                                                ["RH_peq15",nil,1000],
                                                ["optic_Nightstalker",nil,200000],
												["Trixie_LSMARK4",nil,3000],
												["Trixie_LSMARK4_Net",nil,3000],
												["Trixie_LSMARK4_Delta",nil,3000],
												["Trixie_LSMARK4_Delta_Camo",nil,3000],
												["Trixie_SB31250",nil,3000],
												["Trixie_SB31250_Net",nil,3000],
												["Trixie_ANPVS4",nil,3000],
												["Trixie_ANPVS4_Net",nil,3000],
												["Trixie_ANPVS10",nil,3000],
												["Trixie_ANPVS10_Green",nil,3000],
												["Trixie_ANPVS10_Net",nil,3000],
												["Trixie_ANPVS10_Green_Net",nil,3000],
												["Trixie_ANPASL",nil,3000],
												["Trixie_ANPASM",nil,3000],
												["Trixie_ANPASL_Net",nil,3000],
												["Trixie_ANPASM_Net",nil,3000],
												["Trixie_M68CCO",nil,3000],
												["Trixie_M68CCO_Net",nil,3000],
												["Trixie_Cyclone",nil,3000],
												["Trixie_Cyclone_Camo",nil,3000],
												["Trixie_Cyclone_Net",nil,3000],
												["Trixie_Ranger3",nil,3000],
												["Trixie_Ranger3_Camo",nil,3000],
												["Trixie_Ranger3_Net",nil,3000],
												["R3F_AIMPOINT",nil,3000],
												["R3F_AIMPOINT_DES",nil,3000],
												["R3F_EOTECH",nil,3000],
												["R3F_EOTECH_DES",nil,3000],
												["R3F_J4",nil,3000],
												["R3F_J4_DES",nil,3000],
												["R3F_FELIN_DES",nil,3000],
												["R3F_FELIN",nil,3000],
												["R3F_FELIN_FRF2",nil,3000],
												["R3F_J8",nil,3000],
												["R3F_J8_DES",nil,3000],
												["R3F_J8_MILDOT",nil,3000],
												["R3F_J10",nil,3000],
												["R3F_J10_MILDOT",nil,3000],
												["R3F_ZEISS",nil,3000],
												["R3F_NF",nil,3000],
												["R3F_NF42",nil,3000],
												["R3F_0B50",nil,3000],
												["R3F_PIRAT",nil,3000],
												["Trixie_PEQ2",nil,3000],
												["Trixie_Aimpoint",nil,3000],
												["Trixie_TA648",nil,3000],
												["Trixie_TA31F",nil,3000],
												["Trixie_Eotech",nil,3000],
												["Trixie_C79",nil,3000],	
												["Trixie_XM8_ACOG",nil,3000],
												["Trixie_XM8_REDDOT",nil,3000]
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_ammo":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia!"};
                        default
                        {
                                ["Police Ammo Shop",
                                        [
                                                ["mas_PG7V",nil,6000],
												["mas_OG7",nil,1000],
												["mas_PG18",nil,2000],
                                                ["mas_M136",nil,250],
                                                ["mas_MAAWS",nil,1000],
                                                ["mas_Stinger",nil,1500],
                                                ["mas_Strela",nil,1000],
                                                ["30Rnd_mas_556x45_Stanag",nil,2500],
                                                ["30Rnd_mas_556x45_T_Stanag",nil,1500],
                                                ["200Rnd_mas_556x45_Stanag",nil,2500],
												["200Rnd_mas_556x45_T_Stanag",nil,2000],
                                                ["100Rnd_mas_762x51_Stanag",nil,250],
                                                ["100Rnd_mas_762x51_T_Stanag",nil,1000],
                                                ["100Rnd_mas_762x54_mag",nil,1500],
                                                ["100Rnd_mas_762x54_T_mag",nil,1000],
                                                ["100Rnd_mas_762x39_mag",nil,2500],
                                                ["100Rnd_mas_762x39_T_mag",nil,1500],
                                                ["30Rnd_mas_545x39_mag",nil,2500],
 												["30Rnd_mas_545x39_T_mag",nil,1000],
												["100Rnd_mas_545x39_mag",nil,2000],
                                                ["100Rnd_mas_545x39_T_mag",nil,250],
                                                ["20Rnd_mas_762x51_Stanag",nil,1000],
                                                ["20Rnd_mas_762x51_T_Stanag",nil,1500],
                                                ["5Rnd_mas_762x51_Stanag",nil,1000],
                                                ["5Rnd_mas_762x51_T_Stanag",nil,2500],
                                                ["30Rnd_mas_762x39_mag",nil,1500],
                                                ["30Rnd_mas_762x39_T_mag",nil,2500],
												["10Rnd_mas_762x54_mag",nil,2000],
                                                ["10Rnd_mas_762x54_T_mag",nil,250],
                                                ["5Rnd_mas_127x99_Stanag",nil,1000],
                                                ["5Rnd_mas_127x99_dem_Stanag",nil,1500],
                                                ["5Rnd_mas_127x99_T_Stanag",nil,1000],
                                                ["5Rnd_mas_127x108_mag",nil,2500],
                                                ["5Rnd_mas_127x108_dem_mag",nil,1500],
                                                ["5Rnd_mas_127x108_T_mag",nil,2500],
 												["30Rnd_mas_9x21_Stanag",nil,1000],
												["30Rnd_mas_9x21d_Stanag",nil,2000],
                                                ["12Rnd_mas_45acp_Mag",nil,250],
                                                ["10Rnd_mas_45acp_Mag",nil,1000],
                                                ["8Rnd_mas_45acp_Mag",nil,1500],
                                                ["15Rnd_mas_9x21_Mag",nil,1000],
                                                ["17Rnd_mas_9x21_Mag",nil,2500],
                                                ["13Rnd_mas_9x21_Mag",nil,1500],
                                                ["8Rnd_mas_9x18_mag",nil,2500],
                                                ["7Rnd_mas_12Gauge_Slug",nil,205],
                                                ["7Rnd_mas_12Gauge_Pellets",nil,1000],
                                                ["10Rnd_mas_12Gauge_Slug",nil,1500],
                                                ["10Rnd_mas_12Gauge_Pellets",nil,1000],
                                                ["64Rnd_mas_9x18_mag",nil,2500],
                                                ["20Rnd_mas_765x17_Mag",nil,1500],
                                                ["25Rnd_mas_9x19_Mag",nil,2500], 
 												["26_cartridge",nil,2000],
                                                ["RH_17Rnd_9x19_g17",nil,250],
                                                ["RH_33Rnd_9x19_g18",nil,1000],
                                                ["RH_7Rnd_45cal_m1911",nil,1500],
                                                ["RH_20Rnd_762x51_AR10",nil,1000],
                                                ["30rnd_556x45_STANAG",nil,2500],
                                                ["30Rnd_556x45_Stanag_Tracer_Red",nil,1500],
                                                ["5Rnd_mas_762x51_Stanag",nil,2500], 
												["RH_15Rnd_9x19_SIG",nil,1000],
                                                ["RH_12Rnd_45cal_usp",nil,1000],
                                                ["RH_30Rnd_556x45_Mk262",nil,1000],
												["R3F_15Rnd_9x19_PAMAS",nil,3000],
												["R3F_25Rnd_556x45_FAMAS",nil,3000],
												["R3F_30Rnd_9x19_MP5",nil,3000],
												["R3F_30Rnd_556x45_HK416",nil,3000],
												["R3F_20Rnd_762x51_HK417",nil,3000],
												["R3F_10Rnd_762x51_FRF2",nil,3000],
												["R3F_7Rnd_127x99_PGM",nil,3000],
												["R3F_200Rnd_556x45_MINIMI",nil,3000],
												["R3F_100Rnd_762x51_MINIMI",nil,3000],	
												["Trixie_5x762_Mag",nil,3000],
												["Trixie_5x338_Mag",nil,3000],
												["Trixie_10x762_Mag",nil,3000],
												["Trixie_20x762_Mag",nil,3000],
												["Trixie_10x127_Mag",nil,3000],
												["Trixie_10x127_HE_Mag",nil,3000],
												["Trixie_10x127_HEIAP_Mag",nil,3000],
												["Trixie_100Rnd",nil,3000],
												["Trixie_100Rnd_T",nil,3000],
												["Trixie_200Rnd",nil,3000],
												["Trixie_200Rnd_T",nil,3000],
												["Trixie_20Rnd",nil,3000],
												["Trixie_20Rnd_T",nil,3000],
												["Trixie_30Rnd",nil,3000],
												["Trixie_30Rnd_T",nil,3000],
												["Trixie_XM8_100Rnd",nil,3000],
												["Trixie_XM8_30Rnd",nil,3000],
												["30Rnd_65x39_caseless_green",nil,3000]
                                        ]
                                ];
                        };
                };
        };
			
		case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
                                                ["Taser_26","Taser",20000],
                                                ["26_cartridge",nil,500],
                                                ["Binocular",nil,1500],
                                                ["ItemGPS",nil,1000],
												["FirstAidKit",nil,1500],
                                                ["Medikit",nil,5000],
                                                ["ToolKit",nil,2500],
												["B_UavTerminal",nil,2500],
												["I_UavTerminal",nil,2500],
												["O_UavTerminal",nil,2500],
                                                ["NVGoggles",nil,20000]                                                                                           																																																																																																																																																																																																																																																													
																				
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia!"};
                        case (__GETC__(life_coplevel) < 2): {"No eres Patrullero"};
                        default
                        {
                                ["Patrol Officer Shop",
                                        [ 
										        ["arifle_mas_mp5",nil,90000],
												["arifle_mas_mp5sd",nil,120000],
												["R3F_PAMAS",nil,140000],
												["R3F_MP5SD",nil,150000],											   
												["R3F_HK416M",nil,160000],
												["R3F_HK416M_DES",nil,170000],
												["R3F_HK416M_HG_DES",nil,180000],
												["Trixie_XM8_Carbine",nil,200000],
												["Trixie_XM8_Carbine_HG",nil,210000],
											    ["RH_g17",nil,30000],
                                                ["RH_g19",nil,34750],
                                                ["RH_g19t",nil,36750],
												["RH_g18",nil,32300],
                                                ["RH_m1911",nil,39750],
                                                ["RH_kimber",nil,43250],
                                                ["RH_kimber_nw",nil,45000],                                                   
                                                ["MineDetector",nil,50000]
                                        ]
                                ];
                        };
                };
        };
 
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres policia!"};
                        case (__GETC__(life_coplevel) < 3): {"No eres Sargento!"};
                        default
                        {
                                ["Sergeant Officer Shop",
                                        [
										        ["arifle_mas_hk416",nil,150000],
												["RH_SAMR",nil,130000],
                                                ["RH_M4A1_ris",nil,165000],
												["R3F_HK417M",nil,160000],
												["R3F_HK417S_HG",nil,170000],
												["R3F_HK417M_HG",nil,180000],
												["R3F_HK417L",nil,190000],
												["R3F_HK417S_HG_DES",nil,200000],	
												["R3F_HK417M_DES",nil,210000],
												["R3F_HK417M_HG_DES",nil,220000],
												["R3F_HK417L_DES",nil,230000],
												["R3F_HK416M",nil,240000],
												["R3F_HK416M_DES",nil,250000],
												["R3F_HK416M_HG_DES",nil,260000],												
												["RH_m16a3",nil,170000],
												["Trixie_XM8_DMR",nil,140000],
												["Trixie_XM8_DMR_NB",nil,150000],
												["Trixie_XM8_Compact",nil,160000],
												["RH_m16a4",nil,174900],
												["RH_mk12mod1",nil,247000]									
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_highrank":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia!"};
                        case (__GETC__(life_coplevel) < 6): {"No eres de los Geos"};
                        default
                        {
                                ["SWAT shop",
                                        [     
										        ["HandGrenade_Stone","Flashbang",5000],
										        ["arifle_mas_hk417c",nil,200000],
												["arifle_mas_hk417c_v",nil,210000],
												["arifle_mas_hk417c_d",nil,220000],
												["arifle_mas_hk416",nil,230000],
												["arifle_mas_hk416_m203",nil,240000],
												["arifle_mas_hk416_v",nil,250000],
												["arifle_mas_hk416_d",nil,260000],
												["arifle_mas_hk416_m203_v_t",nil,270000],
												["arifle_mas_hk416c",nil,280000],
												["arifle_mas_hk416c_d",nil,290000],
												["arifle_mas_mk17",nil,220000],
												["arifle_mas_mk17_gl",nil,230000],
												["arifle_mas_mk16",nil,200000],
												["arifle_mas_mk16_gl",nil,210000],
												["arifle_mas_mk16_l",nil,220000],	
												["srifle_mas_sr25",nil,280000],
												["srifle_mas_sr25_v",nil,290000],
												["srifle_mas_sr25_d",nil,300000],
												["Trixie_XM8_SAW",nil,170000],
												["Trixie_XM8_GL",nil,180000],
												["Trixie_XM8_SAW_NB",nil,190000],
												["Trixie_MK12",nil,247500],
												["Trixie_Mk12_Camo",nil,254750],
												["Trixie_LM308MWS",nil,200000],
                                                ["Trixie_M24",nil,300000],
												["Trixie_M24_Clean",nil,320000],
												["Trixie_M24_Black",nil,320000],
												["Trixie_M24_Black_Clean",nil,340000],												
                                                ["RH_SAMR",nil,130000],
                                                ["RH_M4A1_ris",nil,170000],                                                                                         											
                                                ["Chemlight_green",nil,2000],
                                                ["Chemlight_red",nil,2000],
                                                ["Chemlight_yellow",nil,2000],
                                                ["SmokeShell",nil,10000],
                                                ["SmokeShellGreen",nil,11000],
                                                ["SmokeShellRed",nil,1100]                                                                                        
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_lieutenant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres un policia!"};
                        case (__GETC__(life_coplevel) < 4): {"No eres Teniente!"};
                        default
                        {
                                ["lieutenant shop",
                                        [
										        ["srifle_mas_m24",nil,300000],									
												["srifle_mas_m24_d_h",nil,320000],
												["Trixie_M110",nil,290000],
												["Trixie_M110_NG",nil,300000],
												["Trixie_M110_NG_Black",nil,310000],
												["Trixie_AWM338",nil,350000],
												["Trixie_AWM338_Black",nil,360000],
												["Trixie_AWM338_Ghillie",nil,360000],
												["srifle_mas_mk17s",nil,220000],
												["srifle_mas_m110",nil,230000],
										        ["arifle_mas_saiga",nil,230000],	
												["arifle_mas_m4",nil,230000],
												["arifle_mas_m4_m203",nil,240000],
												["arifle_mas_m4_v",nil,250000],
												["arifle_mas_m4_gl_v",nil,260000],
												["arifle_mas_m4_d",nil,270000],
												["arifle_mas_m4_m203_d_t",nil,280000],
												["arifle_mas_m4c",nil,290000],
												["arifle_mas_m4_m203c",nil,300000],
												["arifle_mas_m4_m203c_v",nil,310000],
												["arifle_mas_m4c_d",nil,320000],
												["arifle_mas_m4_m203c_d",nil,330000],
												["arifle_mas_m16",nil,170000],
												["arifle_mas_m16_gl",nil,190000],	
												["arifle_mas_l119",nil,170000],
												["arifle_mas_l119_gl_t",nil,180000],
												["arifle_mas_l119_m203",nil,190000],
												["arifle_mas_l119_v",nil,200000],
												["arifle_mas_l119_m203_v",nil,210000],
												["arifle_mas_l119_d",nil,220000],
												["arifle_mas_l119_gl_d",nil,230000],
												["arifle_mas_l119_m203_d",nil,240000],
												["LMG_mas_Mk48_F",nil,180000],
                                                ["RH_SAMR",nil,350000],
                                                ["RH_M4A1_ris",nil,300000]                                                                                                                                                                                                                      
                                        ]
                                ];
                        };
                };
        };
		
		case "cop_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"No eres policia!"};
                        case (__GETC__(life_coplevel) < 5): {"No eres comandante!"};
                        default
                        {
                                [" shop",
                                        [
										        ["srifle_mas_m24",nil,30000],									
												["srifle_mas_m24_d_h",nil,310000],
												["srifle_mas_m107",nil,320000],
												["Trixie_M107",nil,300000],
												["Trixie_M107_Green",nil,310000],
												["Trixie_M107_Black",nil,310000],
												["Trixie_AS50",nil,300000],
												["Trixie_M24",nil,300000],
												["Trixie_M24_Clean",nil,310000],
												["Trixie_M24_Black",nil,310000],
												["Trixie_M24_Black_Clean",nil,320000],							
												["srifle_mas_mk17s",nil,170000],
												["srifle_mas_m110",nil,210000],
										        ["mas_launch_Stinger_F",nil,500000],
												["mas_launch_MAAWS_F",nil,500000],
										        ["arifle_mas_saiga",nil,170000],	
												["arifle_mas_m4",nil,170000],
												["arifle_mas_m4_m203",nil,180000],
												["arifle_mas_m4_v",nil,190000],
												["arifle_mas_m4_gl_v",nil,200000],
												["arifle_mas_m4_d",nil,210000],
												["arifle_mas_m4_m203_d_t",nil,220000],
												["arifle_mas_m4c",nil,230000],
												["arifle_mas_m4_m203c",nil,240000],
												["arifle_mas_m4_m203c_v",nil,250000],
												["arifle_mas_m4c_d",nil,260000],
												["arifle_mas_m4_m203c_d",nil,270000],
												["arifle_mas_m16",nil,140000],
												["arifle_mas_m16_gl",nil,150000],	
												["arifle_mas_l119",nil,180000],
												["arifle_mas_l119_gl_t",nil,190000],
												["arifle_mas_l119_m203",nil,200000],
												["arifle_mas_l119_v",nil,210000],
												["arifle_mas_l119_m203_v",nil,210000],
												["arifle_mas_l119_d",nil,230000],
												["arifle_mas_l119_gl_d",nil,240000],
												["arifle_mas_l119_m203_d",nil,250000],
												["LMG_mas_Mk48_F",nil,270000],
												["LMG_mas_mg3_F_h",nil,270000],
												["LMG_mas_Mk200_F",nil,290000],
												["LMG_mas_M249_F",nil,300000],
												["LMG_mas_M249a_F",nil,323000],	
												["R3F_Minimi",nil,150000],
												["R3F_Minimi_HG",nil,160000],
												["R3F_Minimi_762",nil,170000],
												["R3F_Minimi_762_HG",nil,180000],
                                                ["HandGrenade_Stone","Flashbang",5000]                                                                                                                                     
                                        ]
                                ];
                        };
                };
        };
		
		case "signstore":
		{
				["Sign Shop",
						[
						        ["A3L_sign",nil,5000],
                                ["A3L_sign2",nil,1500],
                                ["A3L_sign3",nil,1000]
						]
				];
		};
		
		case "black":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        case (!license_civ_rebel): {"No posees la licencia de rebelde!"};
                        default
                        {
                                ["Mohammed's Ghetto Weapons Shop",
                                        [
                                                ["srifle_mas_svd",nil,100000],													
												["LMG_mas_m72_F",nil,60000],													
												["hgun_mas_sa61_F",nil,12000],
												["hgun_mas_sa61_F_sd",nil,12000],
												["hgun_mas_uzi_F",nil,12000],
												["R3F_Famas_F1",nil,30000],
												["R3F_Famas_F1_HG",nil,30000],
												["R3F_Famas_surb",nil,30000],
												["R3F_Famas_surb_HG",nil,30000],
												["R3F_Famas_G2",nil,30000],
												["R3F_Famas_G2_HG",nil,30000],
												["R3F_Famas_G2",nil,30000],
												["Trixie_M14DMR",nil,40000],
												["Trixie_M14DMR_NG",nil,40000],
												["Trixie_M14DMR_Clean",nil,40000],
												["Trixie_M14DMR_NG_Black",nil,40000],
												["Trixie_M14DMR_Clean_Black",nil,40000],
												["Trixie_M14DMR_Clean_Pink",nil,40000],
												["Trixie_M14DMR_NG_Black_Short",nil,40000],
												["Trixie_M14DMR_NG_Short",nil,40000],												
												["Trixie_CZ550",nil,30000],
												["Trixie_CZ550_Rail",nil,30000],													
												["Trixie_Enfield",nil,30000],
												["Trixie_Enfield_Rail",nil,30000],
												["Trixie_M14",nil,40000],
												["Trixie_M14_Green",nil,40000],
												["Trixie_M14_Black",nil,40000],
										        ["arifle_mas_g3",nil,30000],
												["arifle_mas_g3_m203",nil,30000],
												["arifle_mas_g3s_h",nil,30000],
												["arifle_mas_g3s_m203_h",nil,30000],												
												["srifle_mas_ebr",nil,42000],
												["arifle_katiba_F",nil,20000],												
										        ["LMG_mas_pkm_F",nil,100000],
												["LMG_mas_pkm_F_h",nil,100000],
												["LMG_mas_pkm_F_a",nil,100000],
												["LMG_mas_rpk_F",nil,100000],
												["LMG_mas_rpk_F_h",nil,100000],
												["LMG_mas_rpk_F_a",nil,100000],												
												["arifle_mas_m70",nil,45000],
												["arifle_mas_m70_gl",nil,45000],
												["arifle_mas_m70ab",nil,45000],												
												["arifle_mas_aks74u",nil,30000],
												["arifle_mas_aks74u_h",nil,30000],
												["arifle_mas_aks74u_a",nil,30000],
												["arifle_mas_aks74u_c",nil,30000],
												["arifle_mas_aks74u_c_h",nil,30000],
												["arifle_mas_aks74u_c_a",nil,30000],												
												["arifle_mas_bizon",nil,15000],													
												["arifle_mas_akms",nil,90000],
												["arifle_mas_akms_gl",nil,90000],
												["arifle_mas_akms_c",nil,90000],
												["arifle_mas_akm",nil,90000],
												["arifle_mas_ak_74m_sf",nil,35000],
												["arifle_mas_ak_74m_sf_gl",nil,35000],
												["arifle_mas_ak_74m_sf_c",nil,35000],
												["arifle_mas_ak_74m_sf_gl_c_e",nil,35000],
												["arifle_mas_ak_74m_a",nil,35000],											
												["arifle_mas_aks74",nil,32000],										
												["arifle_mas_aks74_gl",nil,32000],											
                                                ["RH_g18",nil,3500],
                                                ["RH_33Rnd_9x19_g18",nil,500],
                                                ["RH_tec9",nil,3500],              
                                                ["RH_32Rnd_9x19_tec",nil,200],        
                                                ["RH_muzi",nil,3000],              
                                                ["RH_30Rnd_9x19_UZI",nil,125],
												["RH_ar10",nil,4500],
												["RH_20Rnd_762x51_AR10",nil,300],
												["30Rnd_mas_556x45_Stanag",nil,250],
                                                ["30Rnd_mas_556x45_T_Stanag",nil,150],
                                                ["200Rnd_mas_556x45_Stanag",nil,250],
												["200Rnd_mas_556x45_T_Stanag",nil,200],
                                                ["100Rnd_mas_762x51_Stanag",nil,25],
                                                ["100Rnd_mas_762x51_T_Stanag",nil,100],
                                                ["100Rnd_mas_762x54_mag",nil,150],
                                                ["100Rnd_mas_762x54_T_mag",nil,100],
                                                ["100Rnd_mas_762x39_mag",nil,250],
                                                ["100Rnd_mas_762x39_T_mag",nil,150],
                                                ["30Rnd_mas_545x39_mag",nil,250],
 												["30Rnd_mas_545x39_T_mag",nil,100],
												["100Rnd_mas_545x39_mag",nil,200],
                                                ["100Rnd_mas_545x39_T_mag",nil,25],
                                                ["20Rnd_mas_762x51_Stanag",nil,100],
                                                ["20Rnd_mas_762x51_T_Stanag",nil,150],
                                                ["5Rnd_mas_762x51_Stanag",nil,100],
                                                ["5Rnd_mas_762x51_T_Stanag",nil,250],
                                                ["30Rnd_mas_762x39_mag",nil,150],
                                                ["30Rnd_mas_762x39_T_mag",nil,250],
												["10Rnd_mas_762x54_mag",nil,200],
                                                ["10Rnd_mas_762x54_T_mag",nil,25],
                                                ["5Rnd_mas_127x99_Stanag",nil,100],
                                                ["5Rnd_mas_127x99_dem_Stanag",nil,150],
                                                ["5Rnd_mas_127x99_T_Stanag",nil,100],
                                                ["5Rnd_mas_127x108_mag",nil,250],
                                                ["5Rnd_mas_127x108_dem_mag",nil,150],
                                                ["5Rnd_mas_127x108_T_mag",nil,250],
 												["30Rnd_mas_9x21_Stanag",nil,100],
												["30Rnd_mas_9x21d_Stanag",nil,200],
                                                ["12Rnd_mas_45acp_Mag",nil,25],
                                                ["10Rnd_mas_45acp_Mag",nil,100],
                                                ["8Rnd_mas_45acp_Mag",nil,150],
                                                ["15Rnd_mas_9x21_Mag",nil,100],
                                                ["17Rnd_mas_9x21_Mag",nil,250],
                                                ["13Rnd_mas_9x21_Mag",nil,150],
                                                ["8Rnd_mas_9x18_mag",nil,250],
                                                ["7Rnd_mas_12Gauge_Slug",nil,25],
                                                ["7Rnd_mas_12Gauge_Pellets",nil,100],
                                                ["10Rnd_mas_12Gauge_Slug",nil,150],
                                                ["10Rnd_mas_12Gauge_Pellets",nil,100],
                                                ["64Rnd_mas_9x18_mag",nil,250],
                                                ["20Rnd_mas_765x17_Mag",nil,150],
                                                ["25Rnd_mas_9x19_Mag",nil,250], 
 												["26_cartridge",nil,200],
                                                ["RH_17Rnd_9x19_g17",nil,25],
                                                ["RH_33Rnd_9x19_g18",nil,100],
                                                ["RH_7Rnd_45cal_m1911",nil,150],
                                                ["RH_20Rnd_762x51_AR10",nil,100],
                                                ["30rnd_556x45_STANAG",nil,250],
                                                ["30Rnd_556x45_Stanag_Tracer_Red",nil,150],
                                                ["5Rnd_mas_762x51_Stanag",nil,250], 
												["RH_15Rnd_9x19_SIG",nil,100],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_30Rnd_556x45_Mk262",nil,100],
												["Trixie_5x762_Mag",nil,300],
												["Trixie_5x338_Mag",nil,300],
												["Trixie_10x762_Mag",nil,300],
												["Trixie_20x762_Mag",nil,300],
												["Trixie_10x127_Mag",nil,300],
												["Trixie_10x127_HE_Mag",nil,300],
												["R3F_15Rnd_9x19_PAMAS",nil,300],
												["R3F_25Rnd_556x45_FAMAS",nil,300],
												["R3F_30Rnd_9x19_MP5",nil,300],
												["R3F_30Rnd_556x45_HK416",nil,300],
												["R3F_20Rnd_762x51_HK417",nil,300],
												["R3F_10Rnd_762x51_FRF2",nil,300],
												["R3F_7Rnd_127x99_PGM",nil,300],
												["R3F_200Rnd_556x45_MINIMI",nil,300],
												["R3F_100Rnd_762x51_MINIMI",nil,300],											
												["Trixie_10x127_HEIAP_Mag",nil,300],
												["FLAY_1Rnd_Arrow",nil,300],
												["FLAY_acc_Quiver",nil,300],
												["Trixie_100Rnd",nil,300],
												["Trixie_100Rnd_T",nil,300],
												["Trixie_200Rnd",nil,300],
												["Trixie_200Rnd_T",nil,300],
												["Trixie_20Rnd",nil,300],
												["Trixie_20Rnd_T",nil,300],
												["Trixie_30Rnd",nil,300],
												["Trixie_30Rnd_T",nil,300],
												["Trixie_FNFAL_Mag",nil,300],
												["Trixie_CZ550_Mag",nil,300],
												["Trixie_Enfield_Mag",nil,300],
												["30Rnd_65x39_caseless_green",nil,300]
                                        ]
                                ];
                        };
                };
        };
       
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        case (!license_civ_rebel): {"No posees la licencia de rebelde!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [                                               
                                                ["srifle_mas_svd",nil,200000],
												
                                                ["FLAY_CompoundBow",nil,20000],
												["FLAY_1Rnd_Arrow",nil,2000],
												["FLAY_acc_Quiver_7",nil,2000],
												["FLAY_acc_Stabilizer",nil,2000],												
												
												["LMG_mas_m72_F",nil,120000],	
												
												["hgun_mas_sa61_F",nil,12000],
												["hgun_mas_sa61_F_sd",nil,12000],
												["hgun_mas_uzi_F",nil,12000],
												
												["R3F_Famas_F1",nil,50000],
												["R3F_Famas_F1_HG",nil,60000],
												["R3F_Famas_surb",nil,50000],
												["R3F_Famas_surb_HG",nil,60000],
												["R3F_Famas_G2",nil,50000],
												["R3F_Famas_G2_HG",nil,60000],
												["R3F_Famas_G2",nil,50000],

												["Trixie_M14DMR",nil,90000],
												["Trixie_M14DMR_NG",nil,90000],
												["Trixie_M14DMR_Clean",nil,90000],
												["Trixie_M14DMR_NG_Black",nil,90000],
												["Trixie_M14DMR_Clean_Black",nil,90000],
												["Trixie_M14DMR_Clean_Pink",nil,90000],
												["Trixie_M14DMR_NG_Black_Short",nil,90000],
												["Trixie_M14DMR_NG_Short",nil,90000],
												
												["Trixie_CZ550",nil,50000],
												["Trixie_CZ550_Rail",nil,50000],	
												
												["Trixie_Enfield",nil,30000],
												["Trixie_Enfield_Rail",nil,30000],
												
												["Trixie_M14",nil,90000],
												["Trixie_M14_Green",nil,90000],
												["Trixie_M14_Black",nil,90000],
																					
										        ["arifle_mas_g3",nil,80000],
												["arifle_mas_g3_m203",nil,80000],
												["arifle_mas_g3s_h",nil,80000],
												["arifle_mas_g3s_m203_h",nil,80000],
												
												["srifle_mas_ebr",nil,72000],
												["arifle_katiba_F",nil,30000],
												
										        ["LMG_mas_pkm_F",nil,170000],
												["LMG_mas_pkm_F_h",nil,170000],
												["LMG_mas_pkm_F_a",nil,170000],
												["LMG_mas_rpk_F",nil,170000],
												["LMG_mas_rpk_F_h",nil,170000],
												["LMG_mas_rpk_F_a",nil,170000],
												
												["arifle_mas_m70",nil,95000],
												["arifle_mas_m70_gl",nil,95000],
												["arifle_mas_m70ab",nil,95000],
												
												["arifle_mas_aks74u",nil,50000],
												["arifle_mas_aks74u_h",nil,50000],
												["arifle_mas_aks74u_a",nil,50000],
												["arifle_mas_aks74u_c",nil,50000],
												["arifle_mas_aks74u_c_h",nil,50000],
												["arifle_mas_aks74u_c_a",nil,50000],
												
												["arifle_mas_bizon",nil,35000],	
												
												["arifle_mas_akms",nil,145000],
												["arifle_mas_akms_gl",nil,145000],
												["arifle_mas_akms_c",nil,145000],
												["arifle_mas_akm",nil,145000],
												
												["arifle_mas_ak_74m_sf",nil,55000],
												["arifle_mas_ak_74m_sf_gl",nil,55000],
												["arifle_mas_ak_74m_sf_c",nil,55000],
												["arifle_mas_ak_74m_sf_gl_c_e",nil,55000],
												["arifle_mas_ak_74m_a",nil,55000],
												
												["arifle_mas_aks74",nil,52000],										
												["arifle_mas_aks74_gl",nil,52000],
												
                                                ["RH_g18",nil,3500],
                                                ["RH_33Rnd_9x19_g18",nil,500],
                                                ["RH_tec9",nil,7500],              
                                                ["RH_32Rnd_9x19_tec",nil,200],        
                                                ["RH_muzi",nil,8000],              
                                                ["RH_30Rnd_9x19_UZI",nil,125],
												["RH_ar10",nil,12500],
												["RH_20Rnd_762x51_AR10",nil,300]
																							
                                        ]
                                ];
                        };
                };
        };
		
		case "rebel_attach":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        case (!license_civ_rebel): {"No posees la licencia de rebelde!"};
                        default
                        {
                                ["Mohammed's Attachment Shop",
                                        [
                                                ["muzzle_mas_snds_L",nil,600],
												["muzzle_mas_snds_LM",nil,2000],
												["muzzle_mas_snds_C",nil,200],
                                                ["muzzle_mas_snds_M",nil,25],
                                                ["muzzle_mas_snds_Mc",nil,100],
                                                ["muzzle_mas_snds_AK",nil,150],
                                                ["muzzle_mas_snds_SM",nil,100],
                                                ["muzzle_mas_snds_SMc",nil,250],
                                                ["muzzle_mas_snds_SH",nil,150],
                                                ["muzzle_mas_snds_SHc",nil,250],
												["muzzle_mas_snds_SV",nil,150],
                                                ["muzzle_mas_snds_SVc",nil,250],												                                               
												["optic_mas_zeiss",nil,150],
                                                ["optic_mas_zeiss_c",nil,250],
												["optic_mas_zeiss_eo",nil,150],
                                                ["optic_mas_zeiss_eo_c",nil,250],
												["optic_mas_acog",nil,150],
                                                ["optic_mas_acog_c",nil,250],
												["optic_mas_acog_eo",nil,150],
                                                ["optic_mas_acog_eo_c",nil,250],
												["optic_mas_acog_rd",nil,150],
                                                ["optic_mas_acog_rd_c",nil,250],
												["optic_mas_handle",nil,150],
                                                ["optic_mas_aim",nil,250],
												["optic_mas_aim_c",nil,150],
                                                ["optic_mas_pso",nil,250],
												["optic_mas_pso_c",nil,150],
                                                ["optic_mas_pso_eo",nil,250],
												["optic_mas_pso_eo_c",nil,250],
												["optic_mas_pso_nv",nil,250],
												["optic_mas_pso_nv_c",nil,250],
												["optic_mas_pso_nv_eo",nil,250],
												["optic_mas_pso_nv_eo_c",nil,250],
												["optic_mas_DMS",nil,250],
												["optic_mas_Holosight_blk",nil,250],
												["optic_mas_Holosight_camo",nil,250],
												["optic_mas_Arco_blk",nil,250],
												["optic_mas_Arco_camo",nil,250],
												["optic_mas_Hamr_camo",nil,250],
												["optic_mas_Aco_camo",nil,250],
												["optic_mas_ACO_grn_camo",nil,250],
												["optic_mas_MRCO_camo",nil,250],
												["RH_ta31rco",nil,1000],
												["RH_shortdot",nil,1000],
												["RH_reflex",nil,1000],
												["RH_fnp45",nil,300],
                                                ["RH_p226",nil,300],
                                                ["RH_X300",nil,300],
                                                ["RH_reflex",nil,500],
                                                ["RH_m3lr",nil,600],
                                                ["RH_SFM952V",nil,300],
                                                ["RH_spr_mbs",nil,300],
                                                ["RH_ta31rco",nil,1000],
                                                ["RH_eotech553",nil,100],
												["RH_saker",nil,100],
                                                ["RH_peq15",nil,100],  
												["R3F_SILENCIEUX_FAMAS",nil,100],
												["R3F_SILENCIEUX_FAMAS_DES",nil,100],
												["R3F_SILENCIEUX_HK416",nil,100],
												["R3F_SILENCIEUX_HK416_DES",nil,100],
												["R3F_SILENCIEUX_HK417",nil,100],
												["R3F_SILENCIEUX_HK417_DES",nil,100],	
												["Trixie_LSMARK4",nil,300],
												["Trixie_LSMARK4_Net",nil,300],
												["Trixie_LSMARK4_Delta",nil,300],
												["Trixie_LSMARK4_Delta_Camo",nil,300],
												["Trixie_SB31250",nil,300],
												["Trixie_SB31250_Net",nil,300],
												["Trixie_ANPVS4",nil,300],
												["Trixie_ANPVS4_Net",nil,300],
												["Trixie_ANPVS10",nil,300],
												["Trixie_ANPVS10_Green",nil,300],
												["Trixie_ANPVS10_Net",nil,300],
												["Trixie_ANPVS10_Green_Net",nil,300],
												["Trixie_FNFAL_Rail",nil,50000],
												["Trixie_M68CCO",nil,300],
												["Trixie_M68CCO_Net",nil,300],
												["Trixie_Cyclone",nil,300],
												["Trixie_Cyclone_Camo",nil,300],
												["Trixie_Cyclone_Net",nil,300],
												["Trixie_Ranger3",nil,300],
												["Trixie_Ranger3_Camo",nil,300],
												["Trixie_Ranger3_Net",nil,300],
												["R3F_AIMPOINT",nil,300],
												["R3F_AIMPOINT_DES",nil,300],
												["R3F_EOTECH",nil,300],
												["R3F_EOTECH_DES",nil,300],
												["R3F_J4",nil,300],
												["R3F_J4_DES",nil,300],
												["R3F_J8",nil,300],
												["R3F_J8_DES",nil,300],
												["R3F_J8_MILDOT",nil,300],
												["R3F_J10",nil,300],
												["R3F_J10_MILDOT",nil,300],
												["R3F_ZEISS",nil,300],
												["R3F_NF",nil,300],
												["R3F_NF42",nil,300],
												["R3F_OB5O",nil,300],
												["R3F_PIRAT",nil,300],
												["Trixie_Aimpoint",nil,300],
												["Trixie_TA648",nil,300],
												["Trixie_TA31F",nil,300],
												["Trixie_Eotech",nil,300],
												["Trixie_C79",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
		case "rebel_ammo":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        case (!license_civ_rebel): {"No posees la licencia de rebelde!"};
                        default
                        {
                                ["Mohammed's Ammo Shop",
                                        [                                                                                            
                                                ["30Rnd_mas_556x45_Stanag",nil,250],
                                                ["30Rnd_mas_556x45_T_Stanag",nil,150],
                                                ["200Rnd_mas_556x45_Stanag",nil,250],
												["200Rnd_mas_556x45_T_Stanag",nil,200],
                                                ["100Rnd_mas_762x51_Stanag",nil,25],
                                                ["100Rnd_mas_762x51_T_Stanag",nil,100],
                                                ["100Rnd_mas_762x54_mag",nil,150],
                                                ["100Rnd_mas_762x54_T_mag",nil,100],
                                                ["100Rnd_mas_762x39_mag",nil,250],
                                                ["100Rnd_mas_762x39_T_mag",nil,150],
                                                ["30Rnd_mas_545x39_mag",nil,250],
 												["30Rnd_mas_545x39_T_mag",nil,100],
												["100Rnd_mas_545x39_mag",nil,200],
                                                ["100Rnd_mas_545x39_T_mag",nil,25],
                                                ["20Rnd_mas_762x51_Stanag",nil,100],
                                                ["20Rnd_mas_762x51_T_Stanag",nil,150],
                                                ["5Rnd_mas_762x51_Stanag",nil,100],
                                                ["5Rnd_mas_762x51_T_Stanag",nil,250],
                                                ["30Rnd_mas_762x39_mag",nil,150],
                                                ["30Rnd_mas_762x39_T_mag",nil,250],
												["10Rnd_mas_762x54_mag",nil,200],
                                                ["10Rnd_mas_762x54_T_mag",nil,25],
                                                ["5Rnd_mas_127x99_Stanag",nil,100],
                                                ["5Rnd_mas_127x99_dem_Stanag",nil,150],
                                                ["5Rnd_mas_127x99_T_Stanag",nil,100],
                                                ["5Rnd_mas_127x108_mag",nil,250],
                                                ["5Rnd_mas_127x108_dem_mag",nil,150],
                                                ["5Rnd_mas_127x108_T_mag",nil,250],
 												["30Rnd_mas_9x21_Stanag",nil,100],
												["30Rnd_mas_9x21d_Stanag",nil,200],
                                                ["12Rnd_mas_45acp_Mag",nil,25],
                                                ["10Rnd_mas_45acp_Mag",nil,100],
                                                ["8Rnd_mas_45acp_Mag",nil,150],
                                                ["15Rnd_mas_9x21_Mag",nil,100],
                                                ["17Rnd_mas_9x21_Mag",nil,250],
                                                ["13Rnd_mas_9x21_Mag",nil,150],
                                                ["8Rnd_mas_9x18_mag",nil,250],
                                                ["7Rnd_mas_12Gauge_Slug",nil,25],
                                                ["7Rnd_mas_12Gauge_Pellets",nil,100],
                                                ["10Rnd_mas_12Gauge_Slug",nil,150],
                                                ["10Rnd_mas_12Gauge_Pellets",nil,100],
                                                ["64Rnd_mas_9x18_mag",nil,250],
                                                ["20Rnd_mas_765x17_Mag",nil,150],
                                                ["25Rnd_mas_9x19_Mag",nil,250], 
 												["26_cartridge",nil,200],
                                                ["RH_17Rnd_9x19_g17",nil,25],
                                                ["RH_33Rnd_9x19_g18",nil,100],
                                                ["RH_7Rnd_45cal_m1911",nil,150],
                                                ["RH_20Rnd_762x51_AR10",nil,100],
                                                ["30rnd_556x45_STANAG",nil,250],
                                                ["30Rnd_556x45_Stanag_Tracer_Red",nil,150],
                                                ["5Rnd_mas_762x51_Stanag",nil,250], 
												["RH_15Rnd_9x19_SIG",nil,100],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_30Rnd_556x45_Mk262",nil,100],
												["Trixie_5x762_Mag",nil,300],
												["Trixie_5x338_Mag",nil,300],
												["Trixie_10x762_Mag",nil,300],
												["Trixie_20x762_Mag",nil,300],
												["Trixie_10x127_Mag",nil,300],
												["Trixie_10x127_HE_Mag",nil,300],
												["R3F_15Rnd_9x19_PAMAS",nil,300],
												["R3F_25Rnd_556x45_FAMAS",nil,300],
												["R3F_30Rnd_9x19_MP5",nil,300],
												["R3F_30Rnd_556x45_HK416",nil,300],
												["R3F_20Rnd_762x51_HK417",nil,300],
												["R3F_10Rnd_762x51_FRF2",nil,300],
												["R3F_7Rnd_127x99_PGM",nil,300],
												["R3F_200Rnd_556x45_MINIMI",nil,300],
												["R3F_100Rnd_762x51_MINIMI",nil,300],											
												["Trixie_10x127_HEIAP_Mag",nil,300],
												["FLAY_1Rnd_Arrow",nil,300],
												["FLAY_acc_Quiver",nil,300],
												["Trixie_100Rnd",nil,300],
												["Trixie_100Rnd_T",nil,300],
												["Trixie_200Rnd",nil,300],
												["Trixie_200Rnd_T",nil,300],
												["Trixie_20Rnd",nil,300],
												["Trixie_20Rnd_T",nil,300],
												["Trixie_30Rnd",nil,300],
												["Trixie_30Rnd_T",nil,300],
												["Trixie_FNFAL_Mag",nil,300],
												["Trixie_CZ550_Mag",nil,300],
												["Trixie_Enfield_Mag",nil,300],
                                                ["30Rnd_65x39_caseless_green",nil,300]												
                                        ]
                                ];
                        };
                };
        };
		
		case "donator_gun":
	    {
		switch(true) do
		{
			case (playerSide != civilian): {"No eres un civil!"};
			case (!license_civ_donator): {"No eres donador!"};
			default
			{
				                        ["Donator Shop",					
                                        [
                                                ["V_Rangemaster_belt",nil,4900],
                                                ["RH_deagle",nil,5000],
												["srifle_LRR_F",nil,1000],						
					                           	["7Rnd_408_Mag",nil,1000], 
                                                ["RH_deagleg",nil,5000],
                                                ["RH_deagles",nil,5000],
												["optic_SOS",nil,505],
												["muzzle_snds_L",nil,505],
                                                ["RH_deaglem",nil,5000],
                                                ["RH_7Rnd_50_AE",nil,100],
                                                ["RH_cz75",nil,6000],
                                                ["RH_16Rnd_9x19_cz",nil,125],
                                                ["RH_sw659",nil,2000],
                                                ["RH_14Rnd_9x19_sw",nil,100],
                                                ["RH_usp",nil,2000],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_mak",nil,1500],
                                                ["RH_8Rnd_9x18_Mak",nil,75],
                                                ["RH_uspm",nil,1750],
                                                ["RH_16Rnd_40cal_usp",nil,125],
                                                ["RH_m9",nil,1250],
                                                ["RH_15Rnd_9x19_M9",nil,75],
                                                ["RH_m9c",nil,2000],
                                                ["RH_tt33",nil,1750],
                                                ["RH_8Rnd_762_tt33",nil,50],            
                                                ["RH_mk2",nil,1500],
                                                ["RH_10Rnd_22LR_mk2",nil,75],          
                                                ["RH_p226",nil,2500],
                                                ["RH_15Rnd_9x19_SIG",nil,125],      
                                                ["RH_p226s",nil,2500],
                                                ["RH_mateba",nil,2000],            
                                                ["RH_6Rnd_44_Mag",nil,75],              
                                                ["RH_python",nil,1900],            
                                                ["RH_6Rnd_357_Mag",nil,75],            
                                                ["RH_mp412",nil,3000],                  
                                                ["RH_bull",nil,6000],
                                                ["RH_6Rnd_454_Mag",nil,75],            
                                                ["RH_bullb",nil,6000],                          
                                                ["RH_ttracker",nil,6500],          
                                                ["RH_6Rnd_45ACP_Mag",nil,75],      
                                                ["RH_ttracker_g",nil,5000],                
                                                ["RH_fnp45",nil,2000],              
                                                ["RH_15Rnd_45cal_fnp",nil,75],      
                                                ["RH_fnp45t",nil,2000],                  
                                                ["RH_fn57",nil,1500],              
                                                ["RH_20Rnd_57x28_FN",nil,75],        
                                                ["RH_fn57_g",nil,2000],                  
                                                ["RH_fn57_t",nil,2000],                  
                                                ["RH_gsh18",nil,4000],              
                                                ["RH_18Rnd_9x19_gsh",nil,75],
												["RH_g18",nil,3500],
                                                ["RH_33Rnd_9x19_g18",nil,2500],
                                                ["RH_tec9",nil,7500],              
                                                ["RH_32Rnd_9x19_tec",nil,200],        
                                                ["RH_muzi",nil,8000],              
                                                ["RH_30Rnd_9x19_UZI",nil,125],
						["RH_ar10",nil,12500],
						["RH_20Rnd_762x51_AR10",nil,300],
						["RH_m16a3",nil,14000],
						["RH_m16a4",nil,18000],
						["30rnd_556x45_STANAG",nil,800],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,800],
						["RH_mk12mod1",nil,25000],
						["RH_compM4s",nil,5000],
						["RH_eotech533",nil,5000],
						["RH_shortdot",nil,5000],
						["RH_reflex",nil,5000],
						["LMG_mas_mk48_F",nil,35000],
												["LMG_mas_Mk200_F",nil,35000],
												["LMG_mas_M249a_F",nil,35000],
												["20Rnd_556x45_UW_mag",nil,2500],
												["200Rnd_mas_556x45_Stanag",nil,2000],
												["100Rnd_mas_762x51_Stanag",nil,2000],
												["150Rnd_762x51_Box",nil,2000],
												["muzzle_snds_H_MG",nil,15000],
												["acc_flashlight",nil,1000],
												["acc_pointer_IR",nil,1500],
												["acc_mas_pointer_IR",nil,1500],
												["optic_mas_term",nil,5500],
                                                ["optic_Nightstalker",nil,7500],
												["optic_NVS",nil,7500],
												["arifle_mas_mp5",nil,27500],
												["30Rnd_mas_9x21_Stanag",nil,2500],
												["muzzle_snds_L",nil,2500],
												["optic_mas_aim",nil,2500],
												["optic_mas_acog",nil,2500],
												["srifle_mas_m24",nil,37500],
												["5Rnd_mas_762x51_Stanag",nil,2500],
												["muzzle_mas_snds_SH",nil,7500],
												["optic_Nightstalker",nil,7500],
												["optic_NVS",nil,7500],
												["srifle_mas_hk417",nil,17500],
												["20Rnd_mas_762x51_Stanag",nil,2500],
												["optic_mas_aim",nil,2500],
												["optic_mas_acog",nil,2500],
												["muzzle_mas_snds_SM",nil,2500],
												["LMG_mas_rpk_F",nil,27500],
												["100Rnd_mas_545x39_mag",nil,2500],
												["srifle_mas_ksvk",nil,27500],
												["5Rnd_mas_127x108_mag",nil,7500],
												["optic_Nightstalker",nil,7500],
												["optic_NVS",nil,7500],
												["arifle_mas_bizon",nil,17500],
												["64Rnd_mas_9x18_mag",nil,2500],
												["optic_mas_aim",nil,7500],
												["optic_mas_acog",nil,7500],
												["arifle_mas_saiga",nil,17500],
												["10Rnd_mas_12Gauge_Slug",nil,2500],
												["10Rnd_mas_12Gauge_Pellets",nil,2500],
												["optic_mas_aim",nil,7500],
												["optic_mas_acog",nil,7500],
												["arifle_mas_akm",nil,27500],
												["30Rnd_mas_762x39_mag",nil,2500],
												["optic_Nightstalker",nil,7500],
												["optic_NVS",nil,7500],
												["optic_mas_aim",nil,7500],
												["optic_mas_acog",nil,7500],
												["arifle_mas_aks74",nil,27500],
												["arifle_mas_ak_74m",nil,27500],
												["arifle_mas_aks74u",nil,27500],
												["30Rnd_mas_545x39_mag",nil,2500],
												["optic_mas_aim",nil,7500],
												["optic_mas_acog",nil,7500],
												["muzzle_mas_snds_AK",nil,7500],
                                                ["srifle_mas_m107",nil,27500],
                                                ["5Rnd_mas_127x99_Stanag",nil,2500],
                                                ["muzzle_snds_B",nil,2500],
                                                ["optic_Nightstalker",nil,7500],
												["optic_NVS",nil,7500],
                                                ["arifle_mas_m1014",nil,12500],
                                                ["7Rnd_mas_12Gauge_Slug",nil,2500],
												["7Rnd_mas_12Gauge_Pellets",nil,2500]  
                                        ]
                                ];
                        };
                };
        };
		
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        case (!license_civ_gun): {"No tienes la licencia de armas!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["V_Rangemaster_belt",nil,4900],
                                                ["RH_deagle",nil,5000],
                                                ["RH_deagle",nil,5000],
                                                ["RH_deagles",nil,5000],
                                                ["RH_deaglem",nil,5000],
                                                ["RH_7Rnd_50_AE",nil,100],
                                                ["RH_cz75",nil,6000],
                                                ["RH_16Rnd_9x19_cz",nil,125],
                                                ["RH_sw659",nil,2000],
                                                ["RH_14Rnd_9x19_sw",nil,100],
                                                ["RH_usp",nil,2000],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_mak",nil,1500],
                                                ["RH_8Rnd_9x18_Mak",nil,75],
                                                ["RH_uspm",nil,1750],
                                                ["RH_16Rnd_40cal_usp",nil,125],
                                                ["RH_m9",nil,1250],
                                                ["RH_15Rnd_9x19_M9",nil,75],
                                                ["RH_m9c",nil,2000],
                                                ["RH_tt33",nil,1750],
                                                ["RH_8Rnd_762_tt33",nil,50],            
                                                ["RH_mk2",nil,1500],
                                                ["RH_10Rnd_22LR_mk2",nil,75],          
                                                ["RH_p226",nil,2500],
                                                ["RH_15Rnd_9x19_SIG",nil,125],      
                                                ["RH_p226s",nil,2500],
                                                ["RH_mateba",nil,2000],            
                                                ["RH_6Rnd_44_Mag",nil,75],              
                                                ["RH_python",nil,1900],            
                                                ["RH_6Rnd_357_Mag",nil,75],            
                                                ["RH_mp412",nil,3000],                  
                                                ["RH_bull",nil,6000],
                                                ["RH_6Rnd_454_Mag",nil,75],            
                                                ["RH_bullb",nil,6000],                          
                                                ["RH_ttracker",nil,6500],          
                                                ["RH_6Rnd_45ACP_Mag",nil,75],      
                                                ["RH_ttracker_g",nil,5000],                
                                                ["RH_fnp45",nil,2000],              
                                                ["RH_15Rnd_45cal_fnp",nil,75],      
                                                ["RH_fnp45t",nil,2000],                  
                                                ["RH_fn57",nil,1500],              
                                                ["RH_20Rnd_57x28_FN",nil,75],        
                                                ["RH_fn57_g",nil,2000],                  
                                                ["RH_fn57_t",nil,2000],                  
                                                ["RH_gsh18",nil,4000],              
                                                ["RH_18Rnd_9x19_gsh",nil,75],
												["arifle_sdar_F","underwater Rifle",20000],
                     		                    ["20Rnd_556x45_UW_mag","underwater Magazine",125]
                                               
                                        ]
                                ];
                        };
                };
        };
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["RH_g18",nil,3500],
                                                ["RH_33Rnd_9x19_g18",nil,300],
                                                ["RH_tec9",nil,7500],              
                                                ["RH_32Rnd_9x19_tec",nil,200],        
                                                ["RH_muzi",nil,8000],              
                                                ["RH_30Rnd_9x19_UZI",nil,125]
                                        ]
                                ];
                        };
                };
        };
		
		case "nicknack":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        default
                        {
                                ["Nick-Nacks Store",
                                        [
                                                ["MeleeHatchet",nil,350],
                                                ["firehat",nil,300],
                                                ["a3l_hardhat",nil,750],              
                                                ["A3L_Mask",nil,200],        
                                                ["A3L_SkateHelmet_green",nil,800],                                                            
												["A3L_Halloween_Pumpkinhead",nil,350],
                                                ["A3L_Halloween_JigSaw",nil,300],
                                                ["A3L_Helmet",nil,750],              
                                                ["A3L_Helmetblack",nil,200],        
                                                ["A3L_Sign2",nil,800],              
                                                ["A3L_Sign",nil,125],
												["A3L_Shovel",nil,350],
                                                ["A3L_Spanner",nil,300],
                                                ["A3L_SpookyVest",nil,750],              
                                                ["A3L_SpiderVest",nil,200],        
                                                ["jokermask",nil,800],              
                                                ["A3L_ChainSaw",nil,125],
												["A3L_Extinguisher",nil,750],              
                                                ["A3L_JackHammer",nil,200],        
												["A3L_Bikini_Girl",nil,750]																																																													
                                        ]
                                ];
                        };
                };
        };
		
		case "paintball":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"No eres un civil!"};
                        default
                        {
                                ["PaintBall Store",
                                        [
                                                ["A3L_PaintballGun_red",nil,12350],
                                                ["A3L_PaintballGun_blue",nil,12350],
                                                ["A3L_PaintballGun_pink",nil,12350],              
                                                ["PaintBalls",nil,200]                                                                                                                    
                                        ]
                                ];
                        };
                };
        };
		
        case "genstore":
        {
                ["Altis General Store",
                        [
                                ["itemRadio",nil,500],
                                ["Binocular",nil,150],
                                ["ItemGPS",nil,100],
                                ["ToolKit",nil,250],
                                ["FirstAidKit",nil,150],
								["AGM_Bandage",nil,100],
								["AGM_MapTools",nil,200],
                                ["AGM_SpareBarrel",nil,200],
								["AGM_ItemKestrel",nil,200],	
								["AGM_Altimeter",nil,200],	
								["AGM_EarBuds",nil,200],
                                ["NVGoggles",nil,2000],
                                ["Chemlight_red",nil,300],
                                ["Chemlight_yellow",nil,300],
                                ["Chemlight_green",nil,300],
                                ["Chemlight_blue",nil,300]
                        ]
                ];
        };
};