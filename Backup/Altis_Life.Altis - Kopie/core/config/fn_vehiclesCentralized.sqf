/*

	Centralized vehicle configuration because TONIC always wants to clutter everything in 100000000 files -.-
	Colors are configured elsewhere

*/

private["_calcgarageprice"];

diag_log "Loading centralized vehicle configuration ...";

//Schema: CLASSNAME, TRUNK-WEIGHT, DEFAULT-BUYPRICE, SELLPRICE, GARAGE-UNPARK-PRICE (-1 = 5% of buy price), ISILLEGAL, ILLEGALVALUE
life_vehicle_config_new = [

	["B_Quadbike_01_F", 50, 3000, 1000, 500, false, 0],
	["B_Truck_01_medical_F", 750, 450000, 30000, 500, false, 0],	
	["O_Truck_03_ammo_F", 450, 450000, 20000, 500, false, 0],	
	["B_Truck_01_box_F", 900, 850000, 300000, 500, false, 0],	
	["O_MRAP_02_hmg_F", 100, 5500000, 200000, 75000, true, 1000000],	
	["O_HMG_01_high_F", 2, 750000, 50000, 500, true, 100000],	
	["B_Truck_01_mover_F", 200, 180000, 1000, 500, false, 0],	
	["C_Kart_01_F", 20, 20000, 1000, 500, false, 0],	
	["C_Hatchback_01_F", 75, 10000, 3000, 2500, false, 0],
	["C_Hatchback_01_sport_F", 75, 30000, 7500, 3000, false, 0],	
	["C_Offroad_01_F", 150, 20000, 10000, 5000, false, 0],
	["B_G_Offroad_01_F", 150, 50000, 15000, 5000, false, 0],
	["B_G_Offroad_01_armed_F", 100, 4000000, 1000000, 1000000, true, 500000],	
	["C_SUV_01_F", 100, 50000, 15000, 8000, false, 0],	
	["C_Van_01_transport_F", 200, 70000, 10000, 9000, false, 0],
	["C_Van_01_box_F", 250, 100000, 10000, 10000, false, 0],
	["O_G_Van_01_fuel_F", 280, 80000, 10000, 10000, false, 0],
	["I_Truck_02_transport_F", 300, 130000, 30000, 11000, false, 0],
	["B_Truck_01_fuel_F", 400, 230000, 30000, 11000, false, 0],
	["I_Truck_02_covered_F", 350, 170000, 40000, 12000, false, 0],
	["B_Truck_01_transport_F", 400, 340000, 50000, 14000, false, 0],
	["B_Truck_01_covered_F", 600, 670000, 100000, 15000, false, 0],
	["B_Truck_01_ammo_F", 420, 250000, 100000, 15000, false, 0],
	["O_Truck_03_transport_F", 400, 400000, 50000, 14000, false, 0],
	["O_Truck_03_fuel_F", 600, 600000, 100000, 15000, false, 0],
	["O_Truck_03_repair_F", 600, 600000, 100000, 15000, false, 0],
	["O_Truck_03_covered_F", 600, 600000, 100000, 15000, false, 0],
	["O_Truck_03_medical_F", 700, 300000, 100000, 15000, false, 0],	
	["I_MRAP_03_F", 100, 1000000, 100000, 25000, true, 20000],	
	["I_MRAP_03_hmg_F", 100, 550000, 100000, 25000, true, 20000],	
	["B_MRAP_01_F", 100, 50000, 10000, 10000, false, 0], //Hunter
	["O_MRAP_02_F", 150, 2000000, 100000, 25000, true, 200000],
	["B_MRAP_01_hmg_F", 100, 500000, 100000, 50000, true, 50000], //Bewaffneter Hunter
	["B_Heli_Light_01_F", 50, 600000, 100000, 10000, false, 0],	
	["Land_CargoBox_V1_F", 125, 10000, 8000, 500, false, 0],	
	["O_Heli_Light_02_unarmed_F", 150, 1250000, 200000, 25000, false, 0],
	["O_Heli_Light_02_F", 150, 15000000, 2000000, 1000000, true, 2000000],
	["B_Heli_Light_01_armed_F", 150, 4000000, 20000, 100000, true, 2000000],	
	["I_Heli_Transport_02_F", 275, 4000000, 300000, 60000, false, 0],	
	["B_Heli_Transport_01_F", 125, 7500000, 2000000, 40000, false, 0],	
	["B_Heli_Transport_01_camo_F", 125, 7500000, 2000000, 40000, false, 0],	
	["I_Heli_light_03_unarmed_F", 250, 7200000, 4200000, 15000, false, 0],
	["I_Heli_light_03_F", 250, 1000000, 400000, 20000, false, 0],	
	["C_Rubberboat", 50, 5000, 2000, 2000, false, 0],
	["C_Boat_Civil_01_F", 100, 20000, 2000, 5000, false, 0],
	["C_Boat_Civil_01_police_F", 100, 20000, 5000, 5000, false, 0],
	["B_Boat_Armed_01_minigun_F", 150, 100000, 15000, 10000, false, 0],	
	["B_SDV_01_F", 100, 150000, 10000, 15000, false, 0],
	["O_Truck_03_device_F", 3000, 35000000, 25000000, 15000, false, 0],
	["O_APC_Wheeled_02_rcws_F", 50, 1500000, 500000, 15000, false, 0],
	["I_Heli_light_03_unarmed_F",50, 1500000, 500000, 15000, false, 0],
	["I_APC_Wheeled_03_cannon_F",50, 5000000, 500000, 15000, false, 0],
	["O_APC_Tracked_02_AA_F",50, 1000000, 500000, 15000, false, 0]

];




////////////////Logic

{
	//Generate garage prices
	if((_x select 4) < 0) then
	{
		_calcgarageprice = _x select 2;
		_calcgarageprice = _calcgarageprice * 0.05;
        
        if(_calcgarageprice > 2000000) then
        {
          	_calcgarageprice = 2000000;  
        };
        
		_calcgarageprice = round _calcgarageprice;
		
		_x set [4, _calcgarageprice];
		
		diag_log format["Garage price for %1 calculated to %2", _x select 0, _x select 4];
	};
	
	//Add to garage array
	life_garage_prices set [count life_garage_prices, [ _x select 0, _x select 4 ]];
	
	//Add to sell array
	life_garage_sell set [count life_garage_sell, [ _x select 0, _x select 3 ]];
}
foreach life_vehicle_config_new;

