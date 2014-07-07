#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
*/
private["_side","_ret"];  // <<<--------- MUSS aktualisiert werden damit es funktioniert
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;


_home_spawn_data = missionNamespace getVariable "spawn_home_list";

_ret = [];




//Spawn Marker (Name der Markierung im Editor), Spawn Name (Angezeigter Name in der Spawnauswahl), PathToImage (Bild in der Spawnauswahl)
switch (_side) do
{
	case west:
	{
		{
			hint format ["Haus gefunden: %1", _x select 0];

			_ret = _ret + [ [_x select 0, "Haus", "icons\map_house.paa" ] ];
		}
		foreach (_home_spawn_data select 0) select 0;

		_ret = _ret + [  
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Luftüberwachung","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Grenzschutz","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Küstenwache","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_7","Telos HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_8","Pyrsos HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		
		{
			hint format ["Haus gefunden: %1", _x select 0];

			_ret = _ret + [ [_x select 0, "Haus", "icons\map_house.paa" ] ];
		}
		foreach (_home_spawn_data select 0) select 0;
		
		//Mit einer Lizenz für Rebellen kann man nur diese Spawnpunkte wählen
		if(license_civ_rebel && playerSide == civilian) then {
		_ret =_ret + [
					
				["rebellen_1","Rebellenposten","icons\rebel.paa"],
				["rebellen_2","Rebellenposten","icons\rebel.paa"],
				["rebellen_3","Rebellenposten","icons\rebel.paa"],
				["rebellen_4","Rebellenposten","icons\rebel.paa"]
			];
		};

		// Ohne die Lizenz für Rebellen bekommt man die normale Auswahl		
		if(!license_civ_rebel && playerSide == civilian) then {
		_ret = [
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if((["adac"] call life_fnc_permLevel) > 0) then
		{
			_ret  = _ret  + [
				["civ_adac_spawn_1","ADAC-Hauptquartier","icons\wrench.paa"],
				["civ_adac_spawn_2","ADAC-Stützpunkt","icons\wrench.paa"]
			];
		};
		
		//Donator können zusätzlich zu der normalen Auswahl noch folgende Spawnpunkte bekommen
		if(__GETC__(life_donator) > 0) then {
			_ret = _ret + [
				["donator_stadt","Donator Stadt","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};

		//Deathwatch können zusätzlich zu der normalen Auswahl noch folgende Spawnpunkte bekommen
		if(__GETC__(life_dwlevel) > 0) then {
			_ret = _ret + [
				["dw_spawn_1","Deathwatch Lager","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["dw_spawn_2","Deathwatch Lager","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["dw_spawn_3","Deathwatch Lager","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["dw_spawn_4","Deathwatch Lager","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
			];
		};		

		if((getPlayerUID player) in ["76561198131091263","76561198053634804","76561198107514535","76561198060814205","76561198060814205","76561198092017224","76561198120310094","76561198074798554","76561198072531256","76561198071150052","76561198095444635","76561198071671864"]) then {
			_ret = _ret + [
				["dng_spawn","DNG HQ","\a3\ui_f\data\map\MapControl\rebel.paa"]
			  ];
		};

		// if((getPlayerUID player) in ["76561198013768242","76561197999870106","76561198119463418","76561198071194368","76561198040571016","76561198023313589","76561198022930953","76561198048106230","76561198134878963","76561198132246412"]) then {
		// 	_ret = _ret + [
		// 		["hsc_spawn","HsC HQ","\a3\ui_f\data\map\MapControl\rebel.paa"]
		// 	  ];
		// };
    };
};

_ret;