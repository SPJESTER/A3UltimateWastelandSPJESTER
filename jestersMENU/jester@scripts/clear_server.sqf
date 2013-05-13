while {true} do 
{
	{
		if ((count(crew _x) == 0) and ((damage _x > 0.9) or !(canMove _x))) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	} forEach vehicles;

	
	{
		deleteVehicle vehicle _x;
		deleteVehicle _x;
	} forEach allMissionObjects "B_AssaultPack_Base";
	
	{
		deleteVehicle vehicle _x;
		deleteVehicle _x;
	} forEach allMissionObjects "Land_Sack_F";
	sleep 6000;
	ExecVM "server\functions\vehicleSpawning.sqf";
	sleep 30;
};