#include <macro.h>
/*
	File: fn_clothing_deathwatch.sqf
	Author: Bryan "Tonic" Boardwine
	Editor: muellermh
	
	Description:
	Master config file for deathwatch clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Deathwatch Kleiderladen"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{	
		_ret = 
		[			
			["U_C_WorkerCoveralls","Combat Overalls",1250],
			["U_Marshal","Dienst Uniform",550]
		];
		
	};
	
	//Hats
	case 1:
	{
		
		_ret = 
		[
			["H_Beret_02",nil,500],
			["H_Beret_Colonel",nil,1000],
			["H_Beret_red",nil,1000],
			["H_Beret_grn",nil,1000]
		];
		
		
	};
	
	//Glasses
	case 2:
	{
		
		
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
		
	};
	
	//Vest
	case 3:
	{
		
		
		_ret = 
		[
			["V_BandollierB_blk",nil,2500],
			["V_PlateCarrier1_blk",nil,3000],
			["V_Chestrig_blk",nil,4000],
			["V_TacVestIR_blk",nil,6000],
			["V_PlateCarrierIAGL_dgtl",nil,7000],
			["V_PlateCarrierL_CTRG",nil,8000],
			["V_PlateCarrierH_CTRG",nil,9000],
			["V_I_G_resistanceLeader_F",nil,10000],
			["V_TacVest_blk_POLICE",nil,20000]
		];
		
	};
	
	//Backpacks
	case 4:
	{
		
		_ret = 
		[
			["B_Kitbag_cbr",nil,800],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Parachute",nil,5000],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Kitbag_mcamo",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Parachute",nil,10000]
		];
		
	};
};

_ret;