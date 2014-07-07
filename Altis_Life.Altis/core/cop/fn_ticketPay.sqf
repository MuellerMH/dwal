//File from Tonic edited by Backer


if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_cash < life_ticket_val) exitWith
{
	if(life_atmcash < life_ticket_val) exitWith 
	{
		hint "Du hast nicht genug Geld auf deinem Konto, um das Ticket zu bezahlen.";

		[[1,format["%1 du hast nicht genug Geld.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast $%1 bezahlt",[life_ticket_val] call life_fnc_numberText];
	life_atmcash = life_atmcash - life_ticket_val;
	life_ticket_paid = true;

	[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
	[[0,format["%1 bezahlte $%2",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

	closeDialog 0;
	[[1,format["%1 bezahlte das Ticket.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
	[[[life_ticket_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;
};

life_cash = life_cash - life_ticket_val;
life_ticket_paid = true;

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format["%1 bezahlte $%2",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

closeDialog 0;
[[1,format["%1 hat das Ticket bezahlt.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[[life_ticket_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;
