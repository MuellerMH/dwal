#include <macro.h>
/*
	ADAC clothing store
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
		_ret set[count _ret,["G_Shades_Black",nil,25]];
		
	};
	
	//Hats
	case 1:
	{
		
			_ret set[count _ret,["H_Beret_02",nil,500]];
			_ret set[count _ret,["H_Beret_Colonel",nil,1000]];
		
	};
	
	//Glasses
	case 2:
	{
		
			_ret set[count _ret,["G_Shades_Black",nil,25]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Aviator",nil,75]];
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
		
	};
	
	//Vest
	case 3:
	{
		
			_ret set[count _ret,["V_BandollierB_blk",nil,2500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,3000]];
			_ret set[count _ret,["V_Chestrig_blk",nil,4000]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,6000]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,7000]];
			_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,8000]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,9000]];
			_ret set[count _ret,["V_I_G_resistanceLeader_F",nil,10000]];
		
	};
	
	//Backpacks
	case 4:
	{
			_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
			_ret set[count _ret,["B_AssaultPack_cbr",nil,700]];
			_ret set[count _ret,["B_Bergen_sgg",nil,2500]];
			_ret set[count _ret,["B_Carryall_cbr",nil,3500]];
			_ret set[count _ret,["B_Parachute",nil,5000]];
			_ret set[count _ret,["B_TacticalPack_oli",nil,3500]];
			_ret set[count _ret,["B_FieldPack_ocamo",nil,3000]];
			_ret set[count _ret,["B_Kitbag_mcamo",nil,4500]];
			_ret set[count _ret,["B_Carryall_oli",nil,5000]];
			_ret set[count _ret,["B_Carryall_khk",nil,5000]];
			_ret set[count _ret,["B_Parachute",nil,10000]];
		
	};
};

_ret;