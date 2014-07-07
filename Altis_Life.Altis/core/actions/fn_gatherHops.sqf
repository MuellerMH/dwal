/*
	File: fn_gatherCocaine.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["hops",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	
	//##87
	//player say3D "harvest";
	//[player,"harvest"] call life_fnc_globalSound;
	
	titleText["Ernte Hopfen ...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"hops",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast etwas Hopfen geerntet.","PLAIN"];
	};
};

life_action_inUse = false;