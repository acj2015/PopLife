/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

sleep 5;

ruta = (group camello) addWaypoint [(getMarkerPos "camello1"), 0];
ruta setWaypointType "MOVE";
ruta setWaypointBehaviour "CARELESS";
ruta setWaypointSpeed "FULL";
waitUntil {(camello distance (getMarkerPos "camello1")) < 30};
sleep (60 * 15);

ruta = (group camello) addWaypoint [(getMarkerPos "camello2"), 0];
ruta setWaypointType "MOVE";
ruta setWaypointBehaviour "CARELESS";
ruta setWaypointSpeed "FULL";
waitUntil {(camello distance (getMarkerPos "camello2")) < 30};
sleep (60 * 15);

ruta = (group camello) addWaypoint [(getMarkerPos "camello3"), 0];
ruta setWaypointType "MOVE";
ruta setWaypointBehaviour "CARELESS";
ruta setWaypointSpeed "FULL";
waitUntil {(camello distance (getMarkerPos "camello3")) < 30};
sleep (60 * 15);


ruta = (group camello) addWaypoint [(getMarkerPos "camello2"), 0];
ruta setWaypointType "MOVE";
ruta setWaypointBehaviour "CARELESS";
ruta setWaypointSpeed "FULL";
waitUntil {(camello distance (getMarkerPos "camello2")) < 30};
sleep (60 * 15);

execVM "ica\camello\caminoCamello.sqf";

	