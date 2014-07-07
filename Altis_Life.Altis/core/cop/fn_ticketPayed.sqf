/*
	Called when user payed the ticket
*/
private["_money"];

_money = [_this,0,"",["",0]] call BIS_fnc_param;

life_cash = life_cash + _money ;
hint format["Du hast $%1 bekommen!", _money]; sleep 2;

