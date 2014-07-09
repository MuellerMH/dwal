/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["goldr", 5400, 2100, 7600, 5, 3, 
		[ 
			["diamondc",1], //If you sell 1x goldr, the market system will "buy" 1x diamondc => diamondc price will increase
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1],
			["bier",1] 
		]
	],
	
	["oilp", 3050, 1500, 4520, 3, 1, 
		[ 
			["diamondc",1], 
			["goldr",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["iron_r", 2510, 1220, 3500, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["goldr",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["diamondc", 7500, 5200, 10500, 5, 2, 
		[ 
			["goldr",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["copper_r", 1500, 520, 2100, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["goldr",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["salt_r", 4200, 2500, 6800, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["goldr",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["glass", 2400, 1200, 3650, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["coalr",1],
			["goldr",1] ,
			["bier",1] 
		] 
	],
	
	["cement", 1300, 500, 1750, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["goldr",1],
			["silverr",1],
			["coalr",1],
			["glass",1],
			["bier",1] 
		] 
	],
	
	["silverr", 5520, 3200, 6500, 4, 2, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["goldr",1],
			["coalr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	["coalr", 850, 300, 2500, 1, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["silverr",1],
			["goldr",1],
			["glass",1] ,
			["bier",1] 
		] 
	],
	
	///////////////////////////////////
	
	["turtle", 12000, 1550, 18000, 20, 18,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["froglsd",1]					
		] 
	],
	
	["marijuana", 5800, 2550, 7100, 7, 5,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1],
			["froglsd",1]					
		] 
	],
	
	["cocainep", 8550, 2100, 12300, 11, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1],
			["froglsd",1]					
		] 
	],
	
	["heroinp", 6800, 1750, 10200, 11, 8,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1],
			["froglsd",1]					
		] 
	],
	
	["froglsd", 5200, 900, 7150, 7, 5,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["turtle",1]					
		] 
	],
	
	["bier", 12800, 8600, 21560, 7, 5,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1],
			["turtle",1]					
		] 
	]

];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};