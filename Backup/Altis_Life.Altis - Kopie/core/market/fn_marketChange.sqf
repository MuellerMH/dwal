/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

[_rand = [0,120] call life_fnc_randomRound; //0-200

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 32): //8% Kupfer/Silber erhöht sich
	{
		[[0,"Werbung: Marcel, Jagaslov, Wintermond und Onko präsentieren das neue Kohlekraftwerk. Was noch fehlt? Kohle!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 36): //6% Drogenpreis erhöhen
	{
		[[0,"News: Ein Drogenfeld ist bei einer Schiesserei verbrannt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 39): //6% Drogenpreis erhöhen
	{
		[[0,"News: In China ist ein Sack Reis umgefallen. Auch wenn es sonst keinen Interessiert, ist dieses Mal der Sack auf den Kopf eines der einflussreichste Drogenbarone gefallen und tötete ihn."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 42): //6% Drogenpreis erhöhen
	{
		[[0,"News: Eine Kapsel mit Zeitreisenden Hippies wurde gefunden. Diese überschwemmen den Markt mit Drogen."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event drugp";
	};

	case (_rand <= 42): //6% Drogenpreis erhöhen
	{
		[[0,"News: Eine Kapsel mit Zeitreisenden Hippies wurde gefunden. Diese überschwemmen den Markt mit Drogen."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 44): //8% Ölpreis erhöhen
	{
		[[0,"News: Arabien hat Probleme Öl zu fördern!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 46): //8% Ölpreis erhöhen
	{
		[[0,"News: Ein jugendlicher hat versehentlich ein Ölfeld angezündet."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 48): //8% Ölpreis erhöhen
	{
		[[0,"News: Einige Greenpeaceaktivisten stoppten einen Zug. Auf diesem Zug waren viele Tonnen Heizöl."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 54): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Baumärkte bemengeln die zulieferung von Baumaterialien!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 58): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Eine Live-Area-Roleplay Gruppe hat einen Großauftrag an Eisenschwerter bestellt."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 60): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Ein riesiges Containerschiff mit einer Fuhre Eisen, schlug auf einer Sandbank vor Altis leck und versank. Der Kapitän ging als erstes von Board der Rest der Crew ist bis heute nicht gefunden."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 62): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Die Mafia hat ihre wöchentliche Zementbestellung abgegeben."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 64): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"Eilmeldung: Heute wurden einige hundert Tonnen Zement auf dem Meeresgrund gefunden. Wissenschaftler stehen vor einem Rätsel!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 66): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[0,"News: Ein junger geistig verwirrter Mann löste eine Explosion am Kavalla Marktplatz aus und zerstörte alle Fenster. Der Jugendliche erklärte uns, er habe nur den Bass hoch gedreht!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 68): //4% Goldpreis sinkt
	{
		[[0,"News: Gold ist nicht mehr so rein wie früher!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 70): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Elektronikindustrie benötigt Material für High-End Geräte!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 74): //6% Goldpreis erhöht sich
	{
		[[0,"News: Ein Goldladen wurde ausgeraubt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 76): //6% Goldpreis erhöht sich
	{
		[[0,"News: 123 Gold hat hohe Summen für den Verkauf von Altgold angeboten."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 78): //6% Goldpreis erhöht sich
	{
		[[0,"News: Einige Schwarzhändler vertickten Falschgold."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 80): //6% Drogenpreis niedriger
	{
		[[0,"News: Farmerindustrie produziert eine synthetische Droge!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 90): //10% Schildkröten höher
	{
		[[0,"News: Tierschützer errichten Schildkrötenreservat!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 95): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Elektronikindustrie benötigt Material für High-End Geräte!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 96): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Eine Großbestellung der Kirche für silberne Armbändchen ist bein örtlichen Silberhändler eingegangen."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 96): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Der Markt boomt, denn angemalte silberne Hellokittyanhänger stehen nun zum Verkauf."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 102): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Der Koch des besten Restaurants auf Altis hat die Suppe gehörig versalzen und benötigt zum zubereiten einer neuen Suppe mehr Salz."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 105): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Frau Wintermond ist zu scharf und benötigt mehr Salz."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 110): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Die DNG hat zu viele Überfälle auf arme Diamanthändler verübt."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 110): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Die Hochzeitsrate in der Bevölkerung ist gestiegen."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 115): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Einige Schausteller sind nach Altis gekommen und möchten das Spiel „ Der heiße Draht anbieten“, hierfür benötigen sie viel Kupfer."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 120): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Die NC hat das Kupfer aus den Oberleitungen der Bahn geklaut. Die Bahn sucht dringend neues Kupfer!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 125): //8% Kupfer/Silber erhöht sich
	{
		[[0,"News: Die HSC hat drei Ladungen Kohle gestohlen. Sie kündigten an sie möchten daran solang reiben, bis es Diamanten sind. Wir sind gespannt."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";