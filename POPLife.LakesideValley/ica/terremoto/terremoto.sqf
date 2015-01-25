/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


while {true} do {
	
	if (isNil {terremoto}) exitWith {};
	if ((player distance epicentro) < 600) then {
				
		_Npow = ((player distance epicentro) - 610) * 0.0035;
		_pow = _Npow + (_Npow * -2);
		_Ntem = ((player distance epicentro) - 610) * 0.005;
		_tem = _Ntem + (_Ntem * -2);
		
		addCamShake [_pow, 12, 15];					// pow dur fre
		setCamShakeParams [0, _tem, _tem, _tem, true];		// 0 ver hor tilt true
		
		if ((player distance epicentro) < 380) then {
			player setDamage ((damage player) + 0.04);
		};
		if ((player distance epicentro) < 380) then {
			if (vehicle player != player) then {
				(vehicle player) setDamage ((damage vehicle player) + 0.04);
			};
		};
	};
sleep 5;
};	




