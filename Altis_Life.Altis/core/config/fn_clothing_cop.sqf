#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{		
		_ret set[count _ret,["U_Rangemaster","Polizeiuniform",25]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
		};
		if(__GETC__(life_mediclevel) > 1) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Medical Uniform",2000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Uniform",2000]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",6000]];
			_ret set[count _ret,["U_B_GhillieSuit","Ghillie",15000]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls","Piloten Anzug",5500]];
			_ret set[count _ret,["U_B_CTRG_3","CTRG Uniform",1800]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Beret_blk_POLICE",nil,50]];
	
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_BandMask_khk",nil,75]];
			_ret set[count _ret,["H_HelmetB",nil,120]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,80]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_HelmetB_desert",nil,100]];
			_ret set[count _ret,["H_Booniehat_indp",nil,100]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,2500]];
		};
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
			["G_Combat",nil,55],
			["G_Diving",nil,1000]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,1450]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1300]];
			_ret set[count _ret,["V_RebreatherB",nil,5300]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,6000]];
			_ret set[count _ret,["V_TacVest_camo",nil,2000]];
			_ret set[count _ret,["V_PlateCarrierSpec_rgr",Gasweste,5200]];
			
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Parachute",nil,5000]
		];
	};
};

_ret;