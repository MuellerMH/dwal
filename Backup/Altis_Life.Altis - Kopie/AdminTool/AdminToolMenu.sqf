_pathtovehiclescars = "AdminTool\vehicles\Autos\";
_pathtovehicleshelis = "AdminTool\vehicles\Helis\";
_pathtoweapon = "AdminTool\weapons\";
_pathtotools = "AdminTool\tools\";
_EXECscript1 = 'player execVM "'+_pathtovehiclescars+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicleshelis+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtotools+'%1"';
//customise these menus to fit your server
if ((getPlayerUID player) in ["76561197976232481","76561198023313589","76561197978345671","76561198051320416"]) then { // Admin PlayerID Eintragen
	if ((getPlayerUID player) in ["76561197976232481","76561198023313589","76561197978345671","76561198051320416"]) then { // Mod PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561197976232481","76561198023313589","76561197978345671","76561198051320416"]) then { // Admin PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561197976232481","76561198023313589","76561197978345671","76561198051320416"]) then { // Super Admin PlayerID Eintragen
		adminmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Manu", [3], "#USER:SpawnMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
//customise to fit
ModToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
AdminToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["Selber Heilen", [3],  "", -5, [["expression", format[_EXECscript4,"heal.sqf"]]], "1", "1"],
		["Spieler Heilen", [4],  "", -5, [["expression", format[_EXECscript4,"healp.sqf"]]], "1", "1"],
		["Car God", [5],  "", -5, [["expression", format[_EXECscript4,"cargod.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript4,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript4, "TPtoME.sqf"]]], "1", "1"],
		["Teleport", [8], "", -5, [["expression", format[_EXECscript4, "Tele.sqf"]]], "1", "1"],
		["ESP", [9], "", -5, [["expression", format[_EXECscript4, "ESP.sqf"]]], "1", "1"],
		["Autos Repair und Flipen", [10], "", -5, [["expression", format[_EXECscript4, "repairflip.sqf"]]], "1", "1"],
		["Cash", [11], "", -5, [["expression", format[_EXECscript4, "cash.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SpawnMenu =
[
	["Spawn",true],
			["Waffen", [12], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
			["Vehicle", [12], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["Waffen",true],
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["MK 200", [3],  "", -5, [["expression", format[_EXECscript3,"mk200.sqf"]]], "1", "1"],
		["LRR", [4],  "", -5, [["expression", format[_EXECscript3,"lrr.sqf"]]], "1", "1"],
		["EBR", [5],  "", -5, [["expression", format[_EXECscript3,"ebr.sqf"]]], "1", "1"],
		["GM6", [6],  "", -5, [["expression", format[_EXECscript3,"gm6.sqf"]]], "1", "1"],
		["P07", [7],  "", -5, [["expression", format[_EXECscript3,"phgun.sqf"]]], "1", "1"],
		
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 = 
[
	["Waffen 2",true],
	//Add Weapons Here Gave another page because it could get a little confusing :P
		["MXSil", [2],  "", -5, [["expression", format[_EXECscript3,"MXSil.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
			["Autos", [12], "#USER:AutoMenu", -5, [["expression", ""]], "1", "1"],
			["Helis", [12], "#USER:HeliMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AutoMenu = 
[
	["Autos",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript1,"ATV.sqf"]]], "1", "1"],
		["Hunter Armed", [3],  "", -5, [["expression", format[_EXECscript1,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG .50", [4],  "", -5, [["expression", format[_EXECscript1,"offroad.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
HeliMenu = 
[
	["Helis",true],
		["Ka60", [2],  "", -5, [["expression", format[_EXECscript2,"Ka60.sqf"]]], "1", "1"],
		["Kat", [3],  "", -5, [["expression", format[_EXECscript2,"Kat.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";