waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561197976232481","76561198023313589","76561197978345671","76561198051320416"]) then {
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
};