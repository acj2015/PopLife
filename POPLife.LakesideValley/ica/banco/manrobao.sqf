/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if !(life_has_insurance) exitWith {
	hint "Debido al reciente robo del banco central, solo hemos podido salvar el 50% de tus ahorros, esto no hubiera pasado con un seguro :( ";
	life_ATMcash = life_ATMcash * 0.5;
	deposito = deposito + (life_ATMcash * 0.5);
	publicVariable "deposito";
};

if (life_has_insurance) exitWith {
	hint "Han robado el banco  y gracias a tu seguro no has perdido tu  dinero. Hubieras perdido el 50%. Para volver a disfrutar del seguro, tienes que contratarlo de nuevo";
	
	[] spawn {
		sleep 5;
		life_has_insurance = false;
	};
};
