
_str = parseText format ["<br/><t size='1.5'>Suministros:</t> <br/><br/> 
<t color='#01DF01'>Alimento %1/1000</t> <br/>
Precio: %5€/u <br/><br/>
<t color='#FF0000'>Medicinas %2/1000</t> <br/>
Precio: %6€/u<br/><br/>
<t color='#2E9AFE'>Agua %3/1000</t> <br/>
Precio: %7€/u<br/><br/>
<t color='#FFFF00'>Combustible %4/1000</t><br/>
Precio: %8€/u<br/>",aliJac,medJac,aguJac,comJac,(round ((1700 - aliJac) / 2)),(round ((1700 - medJac) / 2)),(round ((1700 - aguJac) / 2)),(round ((1700 - comJac) / 2))];
hint _str;