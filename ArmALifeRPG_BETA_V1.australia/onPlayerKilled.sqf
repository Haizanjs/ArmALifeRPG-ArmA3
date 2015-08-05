cutText ["You Have Died!","BLACK OUT"];

waitUntil{backpack player == "tf_anprc155"};
removeBackpack player;
player addUniform "jamie_armaliferpg";

player setPos getMarkerPos "DMV_3_2";
[] call AM_Interaction_Player;
[] execVM "client\hud\init.sqf";
AM_Hunger = 100;
AM_Thirst = 100;

cutText ["You have respawned","PLAIN",2];
player setVariable["AM_Cuffed",false,true];