/*
File: fn_wantedAdd.sqf
Author: Bryan "Tonic" Boardwine

Description:
Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,["Crime", 100]] call BIS_fnc_param;
if(_uid == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
case "187V": {_type = ["Fahrlaessige Toetung",6500]};
case "187": {_type = ["Totschlag",8500]};
case "901": {_type = ["JVA ausbruch",4500]};
case "261": {_type = ["Raub",5000]};
case "261A": {_type = ["versuchter Raub",3000]};
case "215": {_type = ["versuchter Autodiebstahl",2000]};
case "213": {_type = ["Verwenden illegaler Sprengstoff",10000]};
case "211": {_type = ["Diebstahl",1000]};
case "207": {_type = ["Entfuehrung",3500]};
case "207A": {_type = ["versuchte Entfuehrung",2000]};
case "487": {_type = ["Grand Theft",1500]};
case "488": {_type = ["Petty Theft",700]};
case "480": {_type = ["Hit and run",1300]};
case "481": {_type = ["Drogenherstellung",1000]};
case "482": {_type = ["Intent to distribute",5000]};
case "483": {_type = ["Drug Trafficking",9500]};
case "488": {_type = ["Klein-Diebstahl",5000]};
case "480": {_type = ["Fahrerflucht",13000]};
case "481": {_type = ["Drogenschmuggel",150000]};
case "482": {_type = ["Drogenhandel",120000]};
case "483": {_type = ["Fahren unter Drogeneinfluss",60000]};

case "1": {_type = ["Fahren/Fliegen o. Fuehrerschein",5000]};
case "2": {_type = ["Versuchter Diebstahl Fahrzeugs",5000]};
case "3": {_type = ["Diebstahl Zivilfahrzeugs",7000]};
case "4": {_type = ["Fahren ohne Licht",1000]};
case "5": {_type = ["Ueberhoehte Geschwindigkeit",1500]};
case "6": {_type = ["Fahren auf der falschen Seite",1200]};
case "7": {_type = ["Ver. Diebstahl Polizeifahrzeugs",10000]};
case "8": {_type = ["Diebstahl von Polizeifahrzeugen",30000]};
case "9": {_type = ["Landen in einer Flugverbotszone",25000]};
case "10": {_type = ["Fahren von illegalen Fahrzeugen",100000]};
case "11": {_type = ["Fahrerflucht",2000]};
case "12": {_type = ["Fahrerflucht vor Polizei",6000]};
case "13": {_type = ["Ueberfahren anderer Spieler",1200]};
case "14": {_type = ["Illegale Strassensperren",30000]};
case "15": {_type = ["Widerstand gegen die Staatsgewalt",15000]};
case "16": {_type = ["Nicht befolgen v. Anordnung",1000]};
case "17": {_type = ["Beamtenbeleidigung",5000]};
case "18": {_type = ["Belaestigung der Polizei",3200]};
case "19": {_type = ["Betreten der pol.Sperrzone",5000]};
case "20": {_type = ["Toeten eines Polizisten",75000]};
case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",10000]};
case "22": {_type = ["Zerstoerung von Polizeieigentum",20000]};
case "23": {_type = ["Drogendelikte",10000]};
case "24": {_type = ["Waffenbesitz ohne Lizenz",10000]};
case "25": {_type = ["Mit gez.Waffe durch Stadt",5000]};
case "26": {_type = ["Besitz einer verbotenen Waffe",10000]};
case "27": {_type = ["Waffengebrauch in Stadt",25000]};
case "28": {_type = ["Geiselnahme",50000]};
case "29": {_type = ["Ueberfall auf Personen/Fahrzeuge",10000]};
case "30": {_type = ["Bankraub",45000]};
case "31": {_type = ["Mord",45000]};
case "32": {_type = ["Aufstand",20000]};
case "33": {_type = ["Angriff durch Rebellen",30000]};
case "34": {_type = ["Angriff/Belagerung von Hauptstaedten",25000]};
case "35": {_type = ["Vers.Landung in einer Flugverbotszone",10000]};
case "36": {_type = ["Fliegen/Schweben unterhalb 500m-Stadt",10000]};
case "37": {_type = ["Ausbruch JVA",45000]};
case "38": {_type = ["Fliegen ohne Fluglizenz",15000]};
case "39": {_type = ["Dauerhaftes Hupen",3000]};

default {_type = [];};
};

///if(count _type == 0) exitWith {}; //Not our information being passed... <== yes and EXIT here ?!
//Is there a custom bounty being sent? Set that as the pricing. Unfortunately it wont be checked!!!! (Don't use drugs, TONIC!)
//if(_customBounty != -1) then {_type set[1,_customBounty];}; 

//no!!!!! allow custom types TONIC smoked sth!
if((count _type) == 0) then
{
_type = _customBounty; //Custom bounty
};

diag_log format["#WANTED ADD: %1 $%2", _type select 0, _type select 1];

//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
_data = life_wanted_list select _index;
_crimes = _data select 2;
_crimes set[count _crimes,(_type select 0)];
_val = _data select 3;
life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
else
{
life_wanted_list set[count life_wanted_list,[_name,_uid,[(_type select 0)],(_type select 1)]];
};