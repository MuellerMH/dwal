/*

	Zentrale Konfiguration für alle Fahrzeuge

*/


//Schema: FAHRZEUG, CONDITIONS (civ,cop,reb,adac,donator) - leer lassen für alle - arbeitet mit ODER, FARB-NAME, FARB-DATEN, ---FARBEIMER---
life_vehicle_colors_new = 
[
	//C_Offroad_01_F
	//////////////////////////////////////////////////////
	["C_Offroad_01_F",[]		, "Rot", ["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"], 1], 
	["C_Offroad_01_F",[]		, "Gelb",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"], 1],
	["C_Offroad_01_F",[]		, "Weiss",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"], 1],
	["C_Offroad_01_F",[]		, "Blau",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"], 1],
	["C_Offroad_01_F",[]		, "Dunkelrot",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"], 1],
	["C_Offroad_01_F",[]		, "Blau-Weiss",["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"], 1],
	["C_Offroad_01_F",["cop"]	, "Polizei",["vehskins\police_offroad.paa"], 2],
	["C_Offroad_01_F",[]		, "Taxi",["#(argb,8,8,3)color(0.6,0.3,0.01,1)"], 1],
	["C_Offroad_01_F",["adac"], "ADAC",["vehskins\adac_offroad.paa"], 3],
	["C_SUV_01_F",["adac"], "ADAC",["vehskins\adac_suv.paa"], 3],
	["C_Offroad_01_F",[], 	"Energy",["vehskins\lila.paa"], 3],
	["C_Offroad_01_F",[], 	"DeathWatch",["vehskins\offroad_01_space_blue.paa"], 3],

	
	//C_Hatchback_01_F
	//////////////////////////////////////////////////////
	["C_Hatchback_01_F",[]		, "Beige",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Gruen",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Blau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Dunkelblau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Gelb",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Weiss",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 3],
	["C_Hatchback_01_F",[]		, "Grau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 3],
	
	//C_Hatchback_01_sport_F
	//////////////////////////////////////////////////////
	["C_Hatchback_01_sport_F",[]		, "Beige",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Gruen",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Blau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Dunkelblau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Gelb",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Weiss",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"], 5],
	["C_Hatchback_01_sport_F",[]		, "Grau",["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"], 5],
	["C_Hatchback_01_sport_F",["cop"]	, "Polizei",["vehskins\police_hatchback.paa"], 6],
	
	//C_SUV_01_F
	//////////////////////////////////////////////////////
	["C_SUV_01_F",[]		,"Dunkelrot",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"], 5],
	["C_SUV_01_F",[]		,"Silber",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"], 5],
	["C_SUV_01_F",[]		,"Organge",["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"], 5],
	["C_SUV_01_F",["cop"]	,"Polizei",["vehskins\police_suv.paa"], 6],
	["C_SUV_01_F",[]	,"Carbon_Full",["vehskins\carbon_full_suv_v1.paa"], 10],
	["C_SUV_01_F",[]	,"Orange",["vehskins\orangesuv.jpg"], 10],
	["C_SUV_01_F",[]	,"Carbon_Weiß",["vehskins\carbon_suv_V3.paa"], 10],
	["C_SUV_01_F",[]	,"SUV Luxus",["vehskins\suv_white.paa"], 10],
	// ["C_SUV_01_F",[]	,"DeathWatch",["vehskins\SUV_Tribals.paa"], 10],
	//C_Van_01_box_F
	//////////////////////////////////////////////////////
	["C_Van_01_box_F",[]		,"Weiss",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_box_F",[]		,"Rot",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	
	//C_Van_01_transport_F
	//////////////////////////////////////////////////////
	["C_Van_01_transport_F",[]		,"Weiss",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_transport_F",[]		,"Rot",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	
	//C_Van_01_fuel_F
	//////////////////////////////////////////////////////
	//HINWEIS: WAR NICHT IN ORIGINALER DATEI
	["C_Van_01_fuel_F",[]		,"Weiss",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"], 1],
	["C_Van_01_fuel_F",[]		,"Rot",["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"], 1],
	
	//B_Quadbike_01_F
	//////////////////////////////////////////////////////
	["B_Quadbike_01_F",[]			,"Braun",["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]		,"Digi Wueste",["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Schwarz",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Blau",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Rot",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Weiss",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Digi Gruen",["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"], 1],
	["B_Quadbike_01_F",[]			,"Hunter Camo",["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	["B_Quadbike_01_F",["reb"]		,"Rebell Camo",["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"], 1],
	
	//B_Heli_Light_01_F
	//////////////////////////////////////////////////////
	["B_Heli_Light_01_F",[]			,"Gruen-Braun",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Blau",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Rot",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Digi Gruen",["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Blaulinie",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Elyptisch",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Furious",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Jeans Blau",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Rotlinie",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Sonne",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Vrana",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"], 12],
	["B_Heli_Light_01_F",[]			,"Wellenblau",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"], 12],
	["B_Heli_Light_01_F",["reb"]	,"Rebell Digi",["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"], 12],
	["B_Heli_Light_01_F",["cop"]	,"Polizei",["vehskins\police_hummingbird.paa"], 12],
	["B_Heli_Light_01_F",["adac"]	,"ADAC",["vehskins\adac_Hummingbird.paa"], 12],
	
	//O_Heli_Light_02_unarmed_F
	//////////////////////////////////////////////////////
	["O_Heli_Light_02_unarmed_F",[]					,"Blau-Weiss",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"], 12],
	["O_Heli_Light_02_unarmed_F",["donator"]		,"Digi Gruen",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"], 12],
	["O_Heli_Light_02_unarmed_F",["reb"]			,"Rebell",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"], 12],
	
	//O_Heli_Light_02_F
	//////////////////////////////////////////////////////
	["O_Heli_Light_02_F",["donator"]		,"Digi Gruen",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"], 12],
	["O_Heli_Light_02_F",["donator"]		,"Rebell",["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"], 12],
	
	//B_MRAP_01_F (Hunter)
	//////////////////////////////////////////////////////
	["B_MRAP_01_F",["cop"]					,"Panda",["vehskins\cophunter.jpg"], 12],
	
	["I_MRAP_03_F",["cop"]					,"Schwarz",["vehskins\strider.paa"], 12],
	
	["I_MRAP_03_hmg_F",["cop"]					,"Schwarz",["vehskins\strider.paa"], 12],
	
	//B_MRAP_01_hmg_F (Bewaffneter Hunter) - Hat die selben Texturen wie der Hunter
	//////////////////////////////////////////////////////
	["B_MRAP_01_hmg_F",["cop"]					,"Panda",["vehskins\cophunter.jpg"], 12],
	
	//I_Truck_02_covered_F
	//////////////////////////////////////////////////////
	["I_Truck_02_covered_F",[]		,"Orange",["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	["I_Truck_02_covered_F",["cop"]	,"Schwarz",["#(argb,8,8,3)color(0.05,0.05,0.05,1)"], 10],
	
	//B_Truck_01_transport_F (Hemett)
	//////////////////////////////////////////////////////
	["B_Truck_01_transport_F",[]		,"Standard",[], 8],
	//["B_Truck_01_transport_F",[]		,"Standard",["\A3\Soft_F_Beta\Truck_01\data\truck_01_ext_01.paa","\a3\soft_f_beta\Truck_01\data\truck_01_ext_02.paa"], 8],
	["B_Truck_01_transport_F",["adac"]		,"ADAC",["vehskins\adac_hemett_01.paa","vehskins\adac_hemett_02.paa"], 9],
	
	//I_Truck_02_transport_F
	//////////////////////////////////////////////////////
	["I_Truck_02_transport_F",[]		,"Orange",["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"], 8],
	["I_Truck_02_transport_F",["cop"]	,"Schwarz",["#(argb,8,8,3)color(0.05,0.05,0.05,1)"], 10],
	
	//I_Heli_light_03_F
	//////////////////////////////////////////////////////
	["I_Heli_light_03_F",["cop"]					,"Polizei",["vehskins\police_hellcat.paa"], 12],

	
	//I_Heli_light_03_unarmed_F
	//////////////////////////////////////////////////////
	["I_Heli_light_03_unarmed_F",["cop"]			,"Polizei",["vehskins\police_hellcat.jpg"], 12],	
	["I_Heli_light_03_unarmed_F",["adac"]			,"ADAC",["vehskins\adac_hellcat.paa"], 12],
	["I_Heli_light_03_unarmed_F",["donator"]		,"Standard",["\a3\air_f_epb\Heli_Light_03\data\heli_light_03_base_indp_co.paa"], 12],
	
	//I_Heli_Transport_02_F
	//////////////////////////////////////////////////////
	["I_Heli_Transport_02_F",[]			,"Ion",["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
												"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
												"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"], 12],
	["I_Heli_Transport_02_F",[]			,"Dahoman",["\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
													"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa"], 12],


	// O_MRAP_02_F - IFRIT
	////////////////////////////////////
	["O_MRAP_02_F",[]			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
													"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	["O_MRAP_02_F",[]			,"[#NC] Skin",["vehskins\ifrit\Ifrit_urban_front_nc.jpg",
													"vehskins\ifrit\Ifrit_urban_hinten_nC.jpg"], 12],
	["O_MRAP_02_F",[]			,"[DNG] Skin",["vehskins\ifrit\DNG_Ifrit.paa",
													"vehskins\ifrit\DNG_Ifrit2.paa"], 12],

	// DeathWatch

	// ["B_SDV_01_F", []			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	// ["O_Truck_03_device_F", []			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	// ["O_APC_Wheeled_02_rcws_F", []			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	// ["I_Heli_light_03_unarmed_F",[]			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	// ["I_APC_Wheeled_03_cannon_F",[]			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	// ["O_APC_Tracked_02_AA_F",[]			        ,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
	// 												"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],

	// O_MRAP_02_F - IFRIT
	////////////////////////////////////
	["O_MRAP_02_hmg_F",[]			,"Standard",["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa",
													"\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 12],
	["O_MRAP_02_hmg_F",[]			,"[#NC] Skin",["vehskins\ifrit\Ifrit_urban_front_nc.jpg",
													"vehskins\ifrit\Ifrit_urban_hinten_nC.jpg"], 12],
	["O_MRAP_02_hmg_F",[]			,"[DNG] Skin",["vehskins\ifrit\mrap_02_ext_01_co.jpg",
													"vehskins\ifrit\mrap_02_ext_02_co.jpg"], 12]

													
	//B_MRAP_01_gmg_F
	//////////////////////////////////////////////////////
	//ACHTUNG: Keine Quelle vorhanden!
	//["B_MRAP_01_gmg_F",["cop"]			,"Polizei",["vehskins\police_hellcat.paa"]],
    //["B_MRAP_01_gmg_F",["cop"]			,"SEK",["vehskins\sek_hunter_01.paa"]],	
];

