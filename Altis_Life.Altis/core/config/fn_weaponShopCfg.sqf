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
	//////////////////////Gas shop
	case "gas":
	{
		["Tankstelle",
			[
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["Itemwatch",nil,100],
				["ItemCompass",nil,50],
				["ItemMap",nil,50],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000]
			]
		];
	};
	////////////////////// Medikit-Shop
	case "medical":
	{
		["Medizinische Ausrüstung",
			[				
				["FirstAidKit",nil,150]/*,
				["Medikit",nil,2000]*/
			]
		];
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			default
			{
				["Anwärter Shop",
					[
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag_Tracer_Red","SDAR Gummigeschoss 556x45",180],
						//["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250],
						["hgun_P07_snds_F","Taser Pistole",5000],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",50], 						
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],
						/*["FirstAidKit",nil,150],
						["Medikit",nil,1000],*/
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Wachtmeister Shop",
					[
						//SDAR with UW ammo
						["arifle_sdar_F","SDAR",10000],
						["30Rnd_556x45_Stanag","SDAR Magazin 556x45",250], //SDAR scharfe Muni
						["20Rnd_556x45_UW_mag","Underwater SDAR Magazin 556x45",200],
						["arifle_MX_Black_F",nil,15000],
						["arifle_MXC_Black_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["30Rnd_9x21_Mag",nil,250],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,3000],
						["SmokeShellBlue","Traenengas",500],
						["hgun_Pistol_Signal_F",nil,1500],
						["6Rnd_RedSignal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,100]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Oberwachtmeister Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,5000],
						["muzzle_snds_acp",nil,2500],
						["11Rnd_45ACP_Mag",nil,200],
						["optic_MRD",nil,2000],
						["arifle_MX_Black_F",nil,15000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_Black_F",nil,60000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["muzzle_snds_B",nil,2500],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["SmokeShellBlue","Traenengas",500],
						["B_UAV_01_F",nil,20000],
						["B_UavTerminal",nil,1000],
						["B_UAV_01_backpack_F",nil,10000],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_kommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Kommissar Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,5000],
						["muzzle_snds_acp",nil,2500],
						["11Rnd_45ACP_Mag",nil,200],
						["optic_MRD",nil,2000],
						["arifle_MX_Black_F",nil,15000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MXM_Black_F",nil,60000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_MX_GL_Black_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["1Rnd_HE_Grenade_shell","HE Granate MX",500],
						["1Rnd_SmokeBlue_Grenade_shell","1Rauch",500],
						["3Rnd_SmokeBlue_Grenade_shell","3Rauch",500],
						["muzzle_snds_B",nil,2500],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["SmokeShellBlue","Traenengas",500],
						["Laserdesignator",nil,4500],
						["Laserbatteries",nil,500],
						["B_UAV_01_F",nil,20000],
						["B_UavTerminal",nil,1000],
						["B_UAV_01_backpack_F",nil,10000],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,1000]					
					]
				];
			};
		};
	};
	
	case "cop_hauptkommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Hauptkommissar Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,5000],
						["muzzle_snds_acp",nil,2500],
						["11Rnd_45ACP_Mag",nil,200],
						["optic_MRD",nil,2000],
						["arifle_MX_Black_F",nil,15000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_Black_F",nil,75000],
						["100Rnd_65x39_caseless_mag",nil,2000],
						["100Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",2000],
						["arifle_MXM_Black_F",nil,60000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2500],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,10000],
						["APERSTripMine_Wire_Mag",nil,50000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000],
						["optic_tws",nil,6000],
						["SmokeShellBlue","Traenengas",500],
						["MiniGrenade",nil,2500],
						["HandGrenade",nil,5000],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,1000]										
					]
				];
			};
		};
	};
	
	case "cop_polizeirat":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 6): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Polizeirat Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,5000],
						["muzzle_snds_acp",nil,2500],
						["11Rnd_45ACP_Mag",nil,200],
						["optic_MRD",nil,2000],
						["arifle_MX_Black_F",nil,15000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_Black_F",nil,75000],
						["muzzle_snds_H_MG",nil,5000],
						["100Rnd_65x39_caseless_mag",nil,2000],
						["100Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",2000],
						["arifle_MXM_Black_F",nil,60000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2500],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,10000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000],
						["optic_tws_mg",nil,6000],
						["SmokeShellRed","Traenengas",500],
						["MiniGrenade",nil,2500],
						["HandGrenade",nil,5000]						
					]
				];
			};
		};
	};
	
	case "cop_oberrat":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 7): {"Du hast nicht den benötigten Rang!"};
			default
			{
				["Polizeipräsidenten Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,5000],
						["muzzle_snds_acp",nil,2500],
						["11Rnd_45ACP_Mag",nil,200],
						["optic_MRD",nil,2000],
						["arifle_MX_Black_F",nil,15000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["arifle_MX_SW_Black_F",nil,75000],
						["muzzle_snds_H_MG",nil,5000],
						["100Rnd_65x39_caseless_mag",nil,2000],
						["100Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",2000],
						["arifle_MXM_Black_F",nil,60000],
						["muzzle_snds_H",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer","65x39 Gummigeschoss",500],
						["srifle_LRR_F",nil,80000],
						["7Rnd_408_Mag",nil,2000],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2500],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,10000],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,750],
						["optic_Holosight",nil,1500],
						["optic_Holosight_smg",nil,1500],
						["optic_Hamr",nil,2000],
						["optic_MRCO",nil,3000],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000],
						["optic_Nightstalker",nil,5000],
						["SmokeShellBlue","Traenengas",500],
						["MiniGrenade",nil,2500],
						["HandGrenade",nil,5000]						
					]
				];
			};
		};
	};
	
	//##98
	case "cop_sniper":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (!license_cop_sniper): {"Du bist kein Sniper!"};
			default
			{
				["Altis Sniper Shop",
					[
						["srifle_LRR_F",nil,90000],
						["7Rnd_408_Mag",nil,2500],
						["optic_Arco",nil,4000],
						["optic_SOS",nil,5000],
						["optic_NVS",nil,6000]					
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_rebel): {"Du hast keine Rebellentlizenz!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_Katiba_F",nil,28000],
						["arifle_SDAR_F",nil,22000],
						["arifle_TRG21_F",nil,33000],
						["srifle_DMR_01_F",nil,50000],
						["srifle_EBR_F",nil,75000],
						["arifle_Mk20_F",nil,80000],
						["LMG_Zafir_pointer_F",nil,100000],
						["SMG_01_F",nil,10000],
						["SMG_02_F",nil,12000],
						["hgun_Pistol_heavy_02_F",nil,6000],
						["launch_RPG32_F",nil,580000],
						["RPG32_HE_F",nil,75000],
						["30Rnd_65x39_caseless_green",nil,500],
						["20Rnd_556x45_UW_mag",nil,200],
						["30Rnd_556x45_Stanag",nil,600],
						["10Rnd_762x51_Mag",nil,800],
						["150Rnd_762x51_Box",nil,2000],
						["30Rnd_45ACP_Mag_SMG_01",nil,200],
						["30Rnd_9x21_Mag",nil,100],
						["20Rnd_762x51_Mag",nil,400],
						["6Rnd_45ACP_Cylinder",nil,100],
						["optic_MRD",nil,500],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,8000],
						["optic_DMS",nil,10000],
						["MiniGrenade",nil,20000],
						["ClaymoreDirectionalMine_Remote_Mag",nil,95000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Cop!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_P07_F",nil,5000],
						["hgun_Rook40_F",nil,5500],
						["hgun_ACPC2_F",nil,6000],
						["hgun_Pistol_heavy_01_F",nil,8000],
						["30Rnd_9x21_Mag",nil,800],
						["9Rnd_45ACP_Mag",nil,400],
						["11Rnd_45ACP_Mag",nil,600],
						["optic_MRD",nil,2000]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) >= 1):
			{
				["Donator Shop",
					[
						["hgun_P07_F",nil,2500],
						["hgun_Rook40_F",nil,2600],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_Yorris_F",nil,3500],
						["6Rnd_45ACP_Cylinder",nil,80],
						["hgun_Pistol_heavy_01_MRD_F",nil,3500],
						["hgun_ACPC2_F",nil,1000],
						["11Rnd_45ACP_Mag",nil,100],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,100],
						["SMG_01_F",nil,5500],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["SMG_02_F",nil,5000],
						["30Rnd_9x21_Mag",nil,100],
						["srifle_DMR_01_F",nil,10000],
						["10Rnd_762x51_Mag",nil,200],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,200],
						["arifle_Katiba_C_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MXC_F",nil,25000],
						["arifle_MX_F",nil,30000],
						["arifle_MXM_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["arifle_MX_SW_F",nil,40000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["arifle_SDAR_F",nil,7000],
						["20Rnd_556x45_UW_mag",nil,80],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_TRG21_F",nil,12000],
						["30Rnd_556x45_Stanag",nil,100],
						["arifle_Mk20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,120],
						["arifle_Mk20C_F",nil,18000],
						["30Rnd_556x45_Stanag",nil,120],
						["srifle_GM6_F",nil,250000],
						["5Rnd_127x108_Mag",nil,2000],
						["srifle_LRR_F",nil,350000],
						["7Rnd_408_Mag",nil,5000],
						["LMG_Mk200_F",nil,70000],
						["200Rnd_65x39_cased_Box",nil,1000],
						["LMG_Zafir_F",nil,65000],
						["150Rnd_762x51_Box",nil,700],
						["launch_NLAW_F",nil,580000],
						["NLAW_F",nil,65000],
						["launch_RPG32_F",nil,430000],
						["hgun_Pistol_Signal_F",nil,1500],
						["6Rnd_RedSignal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,100],
						["RPG32_F",nil,6500],
						["optic_Arco",nil,2000],
						["optic_Hamr",nil,3000],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,2000],
						["optic_SOS",nil,5000],
						["acc_flashlight",nil,700],
						["acc_pointer_IR",nil,1300],
						["optic_MRCO",nil,3000],
						["optic_LRPS",nil,10000],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_H",nil,1400],
						["muzzle_snds_L",nil,1500],
						["muzzle_snds_M",nil,1500],
						["muzzle_snds_B",nil,1800],
						["muzzle_snds_H_MG",nil,4000],
						["ClaymoreDirectionalMine_Remote_Mag",nil,95000],
						["APERSTripMine_Wire_Mag",nil,95000],
						["MiniGrenade",nil,15000],
						["HandGrenade",nil,20000],
						["ItemWatch",nil,200],
						["ItemCompass",nil,250],
						["ItemGPS",nil,350],
						["ItemMap",nil,100],
						["MineDetector",nil,2500],
						["Binocular",nil,600],
						["Rangefinder",nil,3500],
						["Laserdesignator",nil,4500],
						["Laserbatteries",nil,500],
						["optic_Nightstalker",nil,15000],
						["FirstAidKit",nil,400]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,500],
				["Rangefinder",nil,5000],
				["ItemGPS",nil,250],
				["ToolKit",nil,1200],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2500]
			]
		];
	};

	// DeatWatch

	// Weapons
	case "dwShop_weapon_1":
	{		
		switch(true) do
		{
			case (__GETC__(life_dwlevel) < 0): {"Du bist kein DeathWatch Mitglied."};
			case (__GETC__(life_dwlevel) >= 1):
			{
				["DeathWatch Firearms",
					[
						["arifle_MX_Black_F",nil,1500],
						["arifle_MXC_Black_F",nil,2000],
						["arifle_MX_SW_Black_F",nil,3000],
						["arifle_MXM_Black_F",nil,4000],
						["arifle_MX_GL_Black_Hamr_pointer_F",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["100Rnd_65x39_caseless_mag",nil,500],
						["1Rnd_HE_Grenade_shell",nil,800],
						["3Rnd_HE_Grenade_shell",nil,1500],
						["3Rnd_UGL_FlareCIR_F",nil,1000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,800],
						["UGL_FlareCIR_F",nil,1000],
						["srifle_GM6_LRPS_F",nil,50000],
						["5Rnd_127x108_Mag",nil,500],
						["5Rnd_127x108_APDS_Mag",nil,5000],
						["srifle_LRR_LRPS_F",nil,100000],
						["7Rnd_408_Mag",nil,800],
						["LMG_Mk200_MRCO_F",nil,80000],
						["200Rnd_65x39_cased_Box",nil,500],
						["optic_Arco",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_Aco",nil,1000],
						["optic_Aco_smg",nil,3000],
						["optic_Nightstalker",nil,50000],
						["optic_tws",nil,50000],
						["optic_tws_mg",nil,50000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_H_MG",nil,10000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_tws_mg",nil,50000],
						["launch_RPG32_F",nil,80000],
						["RPG32_F",nil,15000],
						["RPG32_HE_F",nil,25000],
						["launch_I_Titan_short_F",nil,200000],
						["Titan_AT",nil,50000],
						["Titan_AP",nil,50000],
						["launch_I_Titan_F",nil,250000],
						["MiniGrenade",nil,1500],
						["HandGrenade",nil,3000],
						["HandGrenade_Stone",nil,5000],
						["SmokeShellBlue",nil,1500],
						["APERSMine_Range_Mag",nil,10000],
						["APERSBoundingMine_Range_Mag",nil,15000],
						["APERSTripMine_Wire_Mag",nil,30000]						
					]
				];
			};
		};	
	};
	
	
	case "dwShop_genstore":
	{	switch(true) do
		{
			case (call life_dwlevel < 0): {"Du bist kein DeathWatch Mitglied."};
			case (call life_dwlevel >= 1):
			{
				["Deathwatch General Store",
					[
						["MineDetector",nil,50],
						["Binocular",nil,50],
						["Rangefinder",nil,150],
						["NVGoggles",nil,200],
						["FirstAidKit",nil,100],
						["Medikit",nil,500],
						["ToolKit",nil,500],
						["ItemGPS",nil,500],
						["Laserdesignator",nil,1000],
						["Laserbatteries",nil,500]
					]
				];
			};
		};		
	};



	
	case "event":
	{
		if( [] call life_fnc_playerInEvent ) then
		{
			["*** Event ***",
					[						
						["hgun_P07_snds_F","Taser Pistole",1],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",1]
						/*["hgun_P07_F",nil,2500],
						["16Rnd_9x21_Mag",nil,50],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["ItemMap",nil,50],
						["ItemGPS",nil,200],
						["ToolKit",nil,250],						
						["NVGoggles",nil,2000],
						["B_UAV_01_F",nil,100000],
						["B_UAV_01_backpack_F",nil,50000]*/
					]
				];
		}
		else
		{
			hint "Du bist kein Teilnehmer des Events!";
			[];
		};
	};
};
