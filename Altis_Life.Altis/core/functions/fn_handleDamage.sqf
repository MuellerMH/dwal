/*
        File: fn_handleDamage.sqf
        Author: Bryan "Tonic" Boardwine
 
        Description:
        Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
_isTazer = if((currentWeapon _source == "hgun_P07_snds_F") || (currentWeapon _source == "arifle_SDAR_F")) then {true} else {false};
 
//Handle the tazer first (Top-Priority).
if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _isTazer) then {
        if(side _source == west && playerSide != west) then
        {
                private["_distance","_isVehicle","_isQuad"];
                _distance = if(_projectile == "B_556x45_dual") then {100} else {35};
                _isVehicle = if(vehicle player != player) then {true} else {false};
                _isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
 
                if(_unit distance _source < _distance) then
                {
                        _damage = false;
                        if(!life_istazed && !(_unit getVariable["restrained",false])) then
                        {
                                if(_isVehicle && _isQuad) then
                                {
                                        player action ["Eject",vehicle player];
                                        sleep 0.1;
                                        [_unit,_source] spawn life_fnc_tazed;
                                } else
                                {
                                        if(_isVehicle) then
                                        {
                                                _damage = false;
                                        } else
                                        {
                                                [_unit,_source] spawn life_fnc_tazed;
                                        };
                                };
                        };
                } else
                {
                        _damage = false;
                };             
        };
 
        //Temp fix for super tasers on cops.
        if(side Player == west) then {
                if(_projectile == "B_9x21_Ball") then {
                        _damage = false;
                };
        };
};
 
[] call life_fnc_hudUpdate;
_damage