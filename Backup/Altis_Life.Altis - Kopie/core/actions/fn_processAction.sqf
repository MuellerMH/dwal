private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_vals","_delayInt"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 6)) exitWith {};
if ((vehicle player) != player) exitWith { hint "Du musst aussteigen." };
if (side player == west) exitWith {hint "Du bist Polizist also bitte."};


//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {[["oilu"],"oilp",1200,"pumpe Öl"];};
	case "diamond": {[["diamond"],"diamondc",1350,"schlage Diamant"]};	
	case "salt": {[["salt"],"salt_r",450,"wasche Salz"]};
	case "sand": {[["sand"],"glass",650,"brenne Glas"]};
	case "bier": {[["hopsr","malt","yeastr"],"bier",800,"braue Bier"]};		
	case "malt": {[["cereals"],"malt",300,"mahle Getreide"]};		
	case "flour": {[["cereals"],"flour",300,"mahle Getreide"]};		
	case "yeast": {[["yeast"],"yeastr",300,"verarbeite Hefe"]};		
	case "hops": {[["hops"],"hopsr",300,"mahle Hopfen"]};		
	case "bread": {[["flour"],"bread",300,"backe Brot"]};		
	///////////////////////////////////////////////////////////
	case "heroin": {[["heroinu"],"heroinp",2100,"koche Heroin"]};
	case "cocaine": {[["cocaine"],"cocainep",1500,"presse Kokain"]};
	case "marijuana": {[["cannabis"],"marijuana",1000,"trockne Marijuana"]};	
	case "epinephrine" : {[["epinephrineu"],"epinephrinep",1000,"koche Epinephrine"]};
	case "meth" : {[["epinephrinep","cocainep"],"meth",1000,"koche Meth"]};
	//case "medHanf" : {[["cannabis"],"Medhanf",250,"trockne Medhanf"]};
	/////////////////////////////////////////////////////////////
	case "cement": {[["rock"],"cement",350,"mische Zement"]};
	case "iron": {[["ironore"],"iron_r",1120,"schmelze Eisen"]};
	case "copper": {[["copperore"],"copper_r",750,"schmelze Kupfer"]};
	case "silver": {[["silver"],"silverr",750,"schmelze Silber"]};
	case "coal": {[["coal"],"coalr",700,"grabe Kohle"]};	
	case "gold": {[["gold"],"goldr",800,"schmelze Gold"]};
	//case "": {["","",,""]};
	//case "": {["","",,""]};
	//case "": {["","",,""]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {hint "Du hast nicht die benötigten Gegenstände"};

//Setup vars.
_oldItem = [];
_vals = [];
{_oldItem = _oldItem + [_x];} foreach (_itemInfo select 0);
if(count _oldItem == 0) exitWith {hint "Du hast nicht die benötigten Gegenstände"};
{_vals = _vals + [missionNamespace getVariable ([_x,0] call life_fnc_varHandle)];} foreach _oldItem;
_oldVal = _vals select 0;
{if (_x < _oldVal) then {_oldVal = _x};} foreach _vals;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if(_oldVal == 0) exitWith {};
_cost = _cost * _oldVal;

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if((!_hasLicense)&&(life_cash < _cost)) exitWith {
	hint format["Du brauchst €%1 um ohne Lizenz zu verarbeiten!",[_cost] call life_fnc_numberText];
	5 cutText ["","PLAIN"]; life_is_processing = false;
};
_delayInt = _oldVal * 0.03;
while{true} do {
	sleep _delayInt;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
};

	
if(player distance _vendor > 10) exitWith {hint "Bleib in der Nähe 10m."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if((!_hasLicense)&&(life_cash < _cost)) exitWith {hint format["Du brauchst €%1 um ohne Lizenz zu verarbeiten!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!(alive player)) exitWith {hint "Du musst am leben sein."; 5 cutText ["","PLAIN"]; life_is_processing = false;};

//Removes the old items
{
	if(!([false,_x,_oldVal] call life_fnc_handleInv)) exitWith {
		5 cutText ["","PLAIN"]; life_is_processing = false;
	};
} foreach _oldItem;

//Adds the new item
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {
	5 cutText ["","PLAIN"];
	{[true,_x,_oldVal] call life_fnc_handleInv;} foreach _oldItem;
	life_is_processing = false;
};

5 cutText ["","PLAIN"];
if (_hasLicense) then {
	titleText[format["Du hast deine sachen in %1 verarbeitet",_itemName],"PLAIN"];
} else {
	titleText[format["Du hast deine Sachen in %1 verarbeitet für €%2",_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	["cash","take",_cost] call life_fnc_updateCash;
}; 

life_is_processing = false;


/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.

private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};
if ((vehicle player) != player) exitWith { hint "Aussteigen bitte." }; // NUts
if (side player == west) exitWith {hint "Du bist Polizist also bitte !!."}; // Nuts
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {[["oilu"],"oilp",1200,"pumpe Öl"];};
	case "diamond": {[["diamond"],"diamondc",1350,"schlage Diamant"]};	
	case "salt": {[["salt"],"salt_r",450,"wasche Salz"]};
	case "beer": {[["hopfen","mais"],"beer",800,"braue Bier"]};		
	case "sand": {[["sand"],"glass",650,"brenne Glas"]};
	///////////////////////////////////////////////////////////
	case "heroin": {[["heroinu"],"heroinp",2100,"koche Heroin"]};
	case "cocaine": {[["cocaine"],"cocainep",1500,"presse Kokain"]};
	case "marijuana": {[["cannabis"],"marijuana",500,"trockne Marijuana"]};	
	case "epinephrine" : {[["epinephrineu"],"epinephrinep",500,"koche Epinephrine"]};
	//case "meth" : {[["epinephrinep","cocaine"],"meth",500,"koche Meth"]};
	//case "medmarijuauna" : {[["cannabis"],"medmarijuana",250,"trockne medMarijuana"]};
	/////////////////////////////////////////////////////////////
	case "cement": {[["rock"],"cement",350,"mische Zement"]};
	case "iron": {[["ironore"],"iron_r",1120,"schmelze Eisen"]};
	case "copper": {[["copperore"],"copper_r",750,"schmelze Kupfer"]};
	case "silver": {[["silver"],"silver_r",750,"schmelze Silber"]};
	case "coal": {[["coalore"],"coal_r",700,"grabe Kohle"]};	
	case "gold": {[["gold"],"gold_r",800,"schmelze Gold"]};
	//case "": {["","",,""]};
	//case "": {["","",,""]};
	//case "": {["","",,""]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["You have processed %1 into %2",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format["You need $%1 to process  without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["You have processed %1 into %2 for $%3",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	
*/
// /*
// 	File: fn_processAction.sqf
// 	Author: Bryan "Tonic" Boardwine
	
// 	Description:
// 	Master handling for processing an item.
// */
// private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP", "_sound"];
// _vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
// _type = [_this,3,"",[""]] call BIS_fnc_param;
// //Error check
// if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

// //unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
// _sound = "";

// _itemInfo = switch (_type) do
// {
// 	case "oil": 
// 	{
// 		_sound="processoil"; 
// 		["oilu","oilp",1200,"Processing Oil"];
// 	};
// 	case "diamond":
// 	{
// 		_sound="diamondcutting"; 
// 		["diamond","diamondc",1350,"Schleife Diamant"]
// 	};
// 	case "heroin":
// 	{
// 		_sound="drugcooking"; 
// 		["heroinu","heroinp",2100,"Verarbeite Schlafmohn"]
// 	};
// 	case "copper":
// 	{
// 		_sound="smelting"; 
// 		["copperore","copper_r",750,"Schmelze Kupfer"]
// 	};
// 	case "iron":
// 	{
// 		_sound="smelting"; 
// 		["ironore","iron_r",1120,"Schmelze Eisen"]
// 	};
// 	case "sand":
// 	{
// 		_sound="smelting";
// 		["sand","glass",650,"Verarbeite Sand"]
// 	};
// 	case "salt":
// 	{
// 		_sound="saltprocess"; 
// 		["salt","salt_r",450,"Verarbeite Salz"]
// 	};
// 	case "cocaine":
// 	{
// 		_sound="drugcooking"; 
// 		["cocaine","cocainep",1500,"Verarbeite Kokablätter"]
// 	};
// 	case "marijuana":
// 	{
// 		_sound="drugcooking"; 
// 		["cannabis","marijuana",500,"Verarbeite Hanf"]
// 	};
// 	case "cement":
// 	{
// 		_sound="cementmix"; 
// 		["rock","cement",350,"Brenne Zement"]
// 	};
// 	case "gold":
// 	{
// 		_sound="smelting"; 
// 		["gold","goldr",1350,"Schmelze Gold"]
// 	}; //##11
// 	case "silver":
// 	{
// 		_sound="smelting"; 
// 		["silver","silverr",1050,"Schmelze Silber"]
// 	}; //##12
// 	case "coal":
// 	{
// 		_sound="smelting"; 
// 		["coal","coalr",350,"Verarbeite Kohle"]
// 	}; //##10

// 	case "yeast":
// 	{
// 		_sound="processoil"; 
// 		["yeast","yeastr",350,"Verarbeite Hefe"]
// 	}; //##10

// 	case "malt":
// 	{
// 		_sound="processoil"; 
// 		["cereals","malt",350,"Verarbeite Getreide"]
// 	}; //##10

// 	case "flour":
// 	{
// 		_sound="processoil"; 
// 		["cereals","malt",350,"Verarbeite Getreide"]
// 	}; //##10

// 	case "hops":
// 	{
// 		_sound="processoil"; 
// 		["hops","hopsr",350,"Verarbeite Hofen"]
// 	}; //##10
// 	case "bier":
// 	{
// 		_sound="processoil"; 
// 		[["hopsr","malt","yeastr"],"bier",350,"Bier wird gebraut"]
// 	}; //##10
// 	default {[]};
// };

// //Error checking
// if(count _itemInfo == 0) exitWith {};

// //Setup vars.
// _oldItem = _itemInfo select 0;
// _newItem = _itemInfo select 1;
// _cost = _itemInfo select 2;
// _upp = _itemInfo select 3;
// _hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
// _itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
// _oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

// _cost = _cost * _oldVal;
// //Some more checks
// if(_oldVal == 0) exitWith {};

// //Setup our progress bar.
// disableSerialization;
// 5 cutRsc ["life_progress","PLAIN"];
// _ui = uiNameSpace getVariable "life_progress";
// _progress = _ui displayCtrl 38201;
// _pgText = _ui displayCtrl 38202;
// _pgText ctrlSetText format["%2 (1%1)...","%",_upp];
// _progress progressSetPosition 0.01;
// _cP = 0.01;

// life_is_processing = true;

// if(_hasLicense) then
// {
// 	//Trigger sounds here
// 	if(_sound != "") then { _vendor say3D _sound };

// 	while{true} do
// 	{
// 		sleep  0.3;
// 		_cP = _cP + 0.01;
// 		_progress progressSetPosition _cP;
// 		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
// 		if(_cP >= 1) exitWith {};
// 		if(player distance _vendor > 10) exitWith {};
// 	};
	
// 	if(player distance _vendor > 10) exitWith {hint "Du darfst dich beim herstellen nicht weiter als 10m entfernen."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
// 	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
// 	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
// 	5 cutText ["","PLAIN"];
// 	titleText[format["Du hast %1 %2 hergestellt.",_oldVal,_itemName],"PLAIN"];
// 	life_is_processing = false;
// }
// 	else
// {
// 	if(life_cash < _cost) exitWith {hint format["Du benötigt $%1, um etwas ohne Fähigkeit weiterzuverarbeiten!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
// 	//Trigger sounds here
// 	if(_sound != "") then { _vendor say3D _sound };
	
// 	while{true} do
// 	{
// 		sleep  0.9;
// 		_cP = _cP + 0.01;
// 		_progress progressSetPosition _cP;
// 		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
// 		if(_cP >= 1) exitWith {};
// 		if(player distance _vendor > 10) exitWith {};
// 	};
	
// 	if(player distance _vendor > 10) exitWith {hint "Du darfst dich beim herstellen nicht weiter als 10m entfernen."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
// 	if(life_cash < _cost) exitWith {hint format["Du benötigst $%1, um etwas ohne Fähigkeit weiterzuverarbeiten!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
// 	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
// 	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
// 	5 cutText ["","PLAIN"];
// 	titleText[format["Du hast %1 %2 hergestellt ($%3)",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
// 	life_cash = life_cash - _cost;
// 	life_is_processing = false;
// };	