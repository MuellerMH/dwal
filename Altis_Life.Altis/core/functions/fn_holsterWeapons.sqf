/*

	f [ BOOL holster]

*/

private["_holster","_primary","_launcher","_handgun","_magazines","_handgunitems"];

_holster = _this select 0;

if(_holster && life_n_holstered) exitWith {systemChat "Holster: Status match!";}; //status match

if(_holster) then
{
	systemChat "Du packst deine Waffen weg.";

	//Call holster save fnc
	[] call life_fnc_holsterSaveGear;
	
	//Clear everything	
	player removeWeapon (primaryWeapon player);
	player removeWeapon (handGunWeapon player);
	
	//Set final vars
	life_n_holstered = true;
	
	hintSilent "Deine Items sind nicht weg! Shift+H benutzen, um sie wieder herauszuholen!";
}
else
{
	if(isNil("life_n_holster_data")) exitWith {};
	if( count life_n_holster_data < 1) exitWith {}; 
	
	systemChat "Du packst deine Waffen wieder aus.";
	life_n_holstered = false;
	
	[] call life_fnc_holsterLoadGear;
};

