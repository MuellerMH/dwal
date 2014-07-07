#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

// ************************************
//
//NOTE: Preis auf -1 setzen, um Standardpreis von vehiclesCentralized zu nehmen
//
// ************************************


switch (_shop) do
{
	//##33 ADAC
	case "civ_adac":
	{
		_return = 
		[
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",40000],
			["B_Truck_01_transport_F",240000]
		];
	}; 
	
	case "civ_adac_air":
	{
		_return = 
		[
			["B_Heli_Light_01_F",400000],
			["I_Heli_light_03_unarmed_F",2500000]
		];
	}; 
	
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",3000],
			["C_Hatchback_01_F",12000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",65000],
			["C_Kart_01_F",20000]
		];
	}; 
	
	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",3000],
			["C_Hatchback_01_F",12000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",65000],
			["C_Kart_01_F",20000]
		];
	}; 
	
	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",3000],
			["C_Hatchback_01_F",12000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",65000],
			["C_Kart_01_F",20000]
		];
	}; 
	
	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",3000],
			["C_Hatchback_01_F",12000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",65000],
			["C_Kart_01_F",20000]
		];
	}; 
	
	case "donator_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2000],
			["C_Offroad_01_F",20000],		
			["C_Hatchback_01_sport_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",40000],
			["O_MRAP_02_F",1000000],
			["B_Truck_01_covered_F",360000],
			["O_Truck_03_covered_F",400000],
			["B_Heli_Light_01_F",400000],
			["I_Heli_Transport_02_F",350000],
			["B_Heli_Transport_01_F",1500000],
			["I_Heli_light_03_unarmed_F",7200000],
			["O_Truck_03_device_F",35000000]
		];

		/*if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["B_Quadbike_01_F",2500]];
			_return set[count _return,["C_Offroad_01_F",30000]];
			_return set[count _return,["C_Hatchback_01_sport_F",40000]];
			_return set[count _return,["C_SUV_01_F",40000]];
			_return set[count _return,["C_Van_01_transport_F",50000]];
			_return set[count _return,["B_Truck_01_covered_F",750000]];
			_return set[count _return,["O_Truck_03_covered_F",850000]];
			_return set[count _return,["B_Heli_Light_01_F",760000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",2000000]];
			_return set[count _return,["I_Heli_Transport_02_F",5000000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["B_Quadbike_01_F",2500]];
			_return set[count _return,["C_Offroad_01_F",30000]];
			_return set[count _return,["C_Hatchback_01_sport_F",40000]];
			_return set[count _return,["C_SUV_01_F",40000]];
			_return set[count _return,["C_Van_01_transport_F",50000]];
			_return set[count _return,["B_Truck_01_covered_F",750000]];
			_return set[count _return,["O_Truck_03_covered_F",850000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",200000]];
			_return set[count _return,["B_Heli_Light_01_armed_F",5000000]];
		};*/
	};
	
	case "donator_2":
	{
		_return =
		[
			["B_Quadbike_01_F",2000],
			["C_Offroad_01_F",20000],
			["C_Hatchback_01_sport_F",30000],
			["C_SUV_01_F",40000],
			["C_Van_01_transport_F",40000],
			["O_MRAP_02_F",1000000],
			["B_Truck_01_covered_F",3600000],
			["O_Truck_03_covered_F",4000000],
			["B_Heli_Light_01_F",500000],
			["I_Heli_Transport_02_F",3500000],
			["B_Heli_Transport_01_F",15000000],
			["I_Heli_light_03_unarmed_F",7200000],
			["O_Truck_03_device_F",35000000]
			
		];

		/*if(__GETC__(life_donator) > 1) then
		{
			_return set[count _return,["B_Quadbike_01_F",2500]];
			_return set[count _return,["C_Offroad_01_F",30000]];
			_return set[count _return,["C_Hatchback_01_sport_F",40000]];
			_return set[count _return,["C_SUV_01_F",40000]];
			_return set[count _return,["C_Van_01_transport_F",50000]];
			_return set[count _return,["B_Truck_01_covered_F",750000]];
			_return set[count _return,["O_Truck_03_covered_F",850000]];
			_return set[count _return,["B_Heli_Light_01_F",760000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",200000]];
			_return set[count _return,["I_Heli_Transport_02_F",500000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["B_Quadbike_01_F",2500]];
			_return set[count _return,["C_Offroad_01_F",30000]];
			_return set[count _return,["C_Hatchback_01_sport_F",40000]];
			_return set[count _return,["C_SUV_01_F",40000]];
			_return set[count _return,["C_Van_01_transport_F",50000]];
			_return set[count _return,["B_Truck_01_covered_F",750000]];
			_return set[count _return,["O_Truck_03_covered_F",850000]];
			_return set[count _return,["B_Heli_Light_01_F",700000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",200000]];
			_return set[count _return,["B_Heli_Light_01_armed_F",5000000]];
		};*/
	};
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",60000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["O_G_Van_01_fuel_F",80000],
			["I_Truck_02_transport_F",130000],
			["I_Truck_02_covered_F",180000],
			["B_Truck_01_transport_F",450000],
			["B_Truck_01_covered_F",1500000],
			["B_Truck_01_box_F",5500000],
			["B_Truck_01_fuel_F",200000],
			["O_Truck_03_transport_F",500000],
			["O_Truck_03_covered_F",1700000],
			["O_Truck_03_medical_F",3000000],
			["B_Truck_01_ammo_F",2500000]
		];	
	};
	
	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["O_G_Van_01_fuel_F",80000],
			["I_Truck_02_transport_F",130000],
			["I_Truck_02_covered_F",180000],
			["B_Truck_01_transport_F",450000],
			["B_Truck_01_covered_F",1500000],
			["B_Truck_01_box_F",5500000],
			["B_Truck_01_fuel_F",200000],
			["O_Truck_03_transport_F",500000],
			["O_Truck_03_covered_F",1700000],
			["O_Truck_03_medical_F",3000000],
			["B_Truck_01_ammo_F",2500000]
		];	
	};
	
	case "reb_v_1":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_G_Offroad_01_F",50000],
				["O_MRAP_02_F",2000000],
				["B_Heli_Light_01_F",600000],
				["B_G_Offroad_01_armed_F",4000000],
				["Steerable_Parachute_F",4000000],
				["NonSteerable_Parachute_F",4000000]
			];
		
		
			/*_return set[count _return,
			["B_G_Offroad_01_armed_F",3000000]];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",8000000]];*/
		};
	};
	
	case "reb_v_2":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_G_Offroad_01_F",50000],
				["O_MRAP_02_F",2000000],
				["B_Heli_Light_01_F",600000],
				["B_G_Offroad_01_armed_F",4000000]
			];
		
		
			/*_return set[count _return,
			["B_G_Offroad_01_armed_F",3000000]];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",8000000]];*/
		};
	};
	

	
	case "reb_v_1_3":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_G_Offroad_01_F",50000],
				["O_MRAP_02_F",2000000],
				["B_Heli_Light_01_F",600000],
				["B_G_Offroad_01_armed_F",4000000]
			];
		
		
			/*_return set[count _return,
			["B_G_Offroad_01_armed_F",3000000]];
			_return set[count _return,
			["B_Heli_Transport_01_camo_F",8000000]];*/
		};
	};
	
	case "reb_v_3":
	{
		if(license_civ_rebel) then
		{
			_return =
			[
				["B_G_Offroad_01_F",50000],
				["O_MRAP_02_F",2000000],
				["B_Heli_Light_01_F",600000],
				["B_G_Offroad_01_armed_F",4000000]
			];
		};
	};
	case "reb_car":
	{
		if(license_civ_rebel) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",3000]];
		_return set[count _return,
		["B_G_Offroad_01_F",50000]];
		_return set[count _return,
		["O_MRAP_02_F",2000000]];
		}
	};
	
	case "reb_car2":
	{
		if(license_civ_rebel) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",3000]];
		_return set[count _return,
		["B_G_Offroad_01_F",50000]];
		_return set[count _return,
		["O_MRAP_02_F",2000000]];
		}
	};
	
	case "reb_air":
	{
		if(license_civ_rebel) then
		{
		_return set[count _return,
		["B_Heli_Light_01_F",600000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1800000]];
		//_return set[count _return,
		//["B_Heli_Transport_01_F",50000000]];
		}
	};
	
	case "cop_car_1":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "cop_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "cop_car_3":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "cop_car_4":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "cop_car_5":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};

	
	case "cop_car_6":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};

	
	case "cop_car_7":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};


	
	case "cop_car_8":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "cop_car_telos":
	{
		_return set[count _return,
		["C_Offroad_01_F",10000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",20000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
			_return set[count _return,
			["I_MRAP_03_F",60000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",500000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",550000]];
			_return set[count _return,
			["O_APC_Wheeled_02_rcws_F",1000000]];
		};
	};
	
	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};
	
	/*case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};*/
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",600000],
			["I_Heli_Transport_02_F",4000000],
			["O_Heli_Light_02_unarmed_F",6000000]
		];
	};
	
	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",600000],
			["I_Heli_Transport_02_F",4000000],
			["O_Heli_Light_02_unarmed_F",6000000]
		];
	};
	
	case "civ_air_3":
	{
		_return =
		[
			["B_Heli_Light_01_F",600000],
			["I_Heli_Transport_02_F",4000000],
			["O_Heli_Light_02_unarmed_F",6000000]
		];
	};
	
	case "cop_air_1":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
		
		
	};
	
	case "cop_air_2":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
		
		
	};
	
	case "cop_air_3":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_4":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_5":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_6":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_7":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_8":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_9":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "cop_air_10":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",70000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Heli_light_03_F",1000000]];
		};
		
	};
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",20000],
			["B_SDV_01_F",150000]
		];
	};

	
	case "civ_ship_11":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",20000],
			["B_SDV_01_F",150000]
		];
	};
	
	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",20000],
			["B_SDV_01_F",150000]
		];
	};
	
	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",20000],
			["B_SDV_01_F",150000]
		];
	};
	
	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",5000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",100000],
			["B_SDV_01_F",150000]
		];
	};


	
	case "cop_ship_2":
	{
		_return =
		[
			["B_Boat_Transport_01_F",5000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",100000],
			["B_SDV_01_F",150000]
		];
	};


	
	case "cop_ship_3":
	{
		_return =
		[
			["B_Boat_Transport_01_F",5000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",100000],
			["B_SDV_01_F",150000]
		];
	};
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",500000],
			["I_Heli_light_03_unarmed_F",7200000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
				["B_Quadbike_01_F",3000],
				["C_Offroad_01_F",30000]
		];
	};
	
	case "donator_all":
	{
		_return =
		[
			["C_Hatchback_01_sport_F",35000],
			["B_Truck_01_mover_F",180000],
			["B_Truck_01_medical_F",450000],
			["O_Truck_03_ammo_F",450000],
			["B_Truck_01_box_F",850000],
			["B_Heli_Light_01_F",500000],
			["I_Heli_Transport_02_F",2100000],
			["O_MRAP_02_hmg_F",5500000],
			["O_HMG_01_high_F",750000],
			["I_Heli_light_03_unarmed_F",7200000],
			["O_Truck_03_device_F",35000000]
		];
	};
		
	case "civ_equip":
	{
		_return =
		[
			["Land_CargoBox_V1_F",10000]
		];
	};
	

	// DeathWatch Shops 
	//________________________________________________

	// Car
	case "dwShop_car_1":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["C_Hatchback_01_F",3000],
				["C_Hatchback_01_sport_F",6000],
				["C_Offroad_01_F",10000],
				["C_SUV_01_F",15000],
				["O_Truck_03_repair_F",150000],
				["O_Truck_03_ammo_F",150000],
				["O_Truck_03_fuel_F",150000],
				["O_Truck_03_medical_F",150000],
				["I_MRAP_03_F",500000],
				["I_MRAP_03_hmg_F",1000000],
				["I_APC_Wheeled_03_cannon_F",5000000],
				["O_APC_Tracked_02_AA_F",10000000]
			];
		};		
	};
	
	case "dwShop_car_2":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["C_Hatchback_01_F",3000],
				["C_Hatchback_01_sport_F",6000],
				["C_Offroad_01_F",10000],
				["C_SUV_01_F",15000],
				["O_Truck_03_repair_F",150000],
				["O_Truck_03_ammo_F",150000],
				["O_Truck_03_fuel_F",150000],
				["O_Truck_03_medical_F",150000],
				["I_MRAP_03_F",500000],
				["I_MRAP_03_hmg_F",1000000],
				["I_APC_Wheeled_03_cannon_F",5000000],
				["O_APC_Tracked_02_AA_F",10000000]
			];
		};		
	};
	
	case "dwShop_car_3":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["C_Hatchback_01_F",3000],
				["C_Hatchback_01_sport_F",6000],
				["C_Offroad_01_F",10000],
				["C_SUV_01_F",15000],
				["O_Truck_03_repair_F",150000],
				["O_Truck_03_ammo_F",150000],
				["O_Truck_03_fuel_F",150000],
				["O_Truck_03_medical_F",150000],
				["I_MRAP_03_F",500000],
				["I_MRAP_03_hmg_F",1000000],
				["I_APC_Wheeled_03_cannon_F",5000000],
				["O_APC_Tracked_02_AA_F",10000000]
			];
		};		
	};
	
	case "dwShop_car_4":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["C_Hatchback_01_F",3000],
				["C_Hatchback_01_sport_F",6000],
				["C_Offroad_01_F",10000],
				["C_SUV_01_F",15000],
				["O_Truck_03_repair_F",150000],
				["O_Truck_03_ammo_F",150000],
				["O_Truck_03_fuel_F",150000],
				["O_Truck_03_medical_F",150000],
				["I_MRAP_03_F",500000],
				["I_MRAP_03_hmg_F",1000000],
				["I_APC_Wheeled_03_cannon_F",5000000],
				["O_APC_Tracked_02_AA_F",10000000]
			];
		};		
	};


	// Air
	case "dwShop_air_1":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",300000],
				["I_Heli_light_03_unarmed_F",1500000],
				["I_Heli_Transport_02_F",3000000],
				["B_Heli_Transport_01_camo_F",5000000]
			];
		};		
	};
	
	case "dwShop_air_2":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",300000],
				["I_Heli_light_03_unarmed_F",1500000],
				["I_Heli_Transport_02_F",3000000],
				["B_Heli_Transport_01_camo_F",5000000]
			];
		};		
	};
	
	case "dwShop_air_3":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",300000],
				["I_Heli_light_03_unarmed_F",1500000],
				["I_Heli_Transport_02_F",3000000],
				["B_Heli_Transport_01_camo_F",5000000]
			];
		};		
	};
	
	case "dwShop_air_4":
	{		
		if(__GETC__(life_dwlevel) > 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",300000],
				["I_Heli_light_03_unarmed_F",1500000],
				["I_Heli_Transport_02_F",3000000],
				["B_Heli_Transport_01_camo_F",5000000]
			];
		};		
	};
	
};

_return;
