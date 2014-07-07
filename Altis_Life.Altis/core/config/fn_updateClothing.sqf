#include <macro.h>
/*

	Updates player clothing by replacing vanilla by custom ones

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) > 1 && (call life_coplevel) < 10 ) then
		{
			player setObjectTextureGlobal  [0, "uniforms\police_uniform.paa"]; //recruit uniform
		}
		else
		{
			player setObjectTextureGlobal  [0, "uniforms\recrute_uniform_rettungsdienst.paa"]; //recruit uniform
		};

		if( __GETC__(life_mediclevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "uniforms\polizei_2.paa"]; //recruit uniform
		};
	};
	case (playerSide == west && _uniform == "U_B_SpecopsUniform_sgg"):
	{
		player setObjectTextureGlobal  [0, "uniforms\sek.paa"]; //recruit uniform
	};
	case (playerSide == civilian && _uniform == "U_Rangemaster" && (["adac"] call life_fnc_permLevel) > 0 ):
	{
		player setObjectTextureGlobal  [0, "uniforms\adac_uniform.paa"]; //adac uniform
		
	};
	case (playerSide == civilian)
	{
		if( (call life_dwlevel) == 1) then
		{
			player setObjectTextureGlobal  [0, "uniforms\clothing1_cv.paa"]; //deathwatch uniform
		};
		if( (call life_dwlevel) == 2) then
		{
			player setObjectTextureGlobal  [0, "uniforms\clothing1_cu.paa"]; //deathwatch uniform
		};
		if( (call life_dwlevel) == 3) then
		{
			player setObjectTextureGlobal  [0, "uniforms\clothing1_co.paa"]; //deathwatch uniform
		};		
		if( (call life_dwlevel) == 4) then
		{
			player setObjectTextureGlobal  [0, "uniforms\clothing1_cd.paa"]; //deathwatch uniform
		};
	};
};

///backpack
////////////////

/*_backpack = backpack player;

switch(true) do
{
	case (playerSide == west && _backpack == "B_Bergen_Base"):
	{
	};
};*/