/*

	Resets market by calling marketConfiguration

*/

[] call life_fnc_marketconfiguration;

[[0,format["Die Preise haben sich wieder erhohlt!",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

hint "Markpreise resettet.";