_cleanupstar = format ["if (isServer) then
{
	call compile ('[nil, nil, ""per"", rSP'+'AWN, [], 
	{
			cleanup_looop_BushWookie = true;
			while {cleanup_looop_BushWookie} do
			{
				{
					if ((count(crew _x) == 0) and ((damage _x > 0.5) or !(canMove _x))) then 
					{
						deleteVehicle vehicle _x;
						deleteVehicle _x;
					};
				} forEach vehicles;
				
				
				{if !(_x isKindOf ""Man"") then {deleteVehicle _x};} forEach allDEAD;
				{deleteVehicle _x} forEach (allMissionObjects ""wreck"")+(allMissionObjects ""crater"")+(allMissionObjects ""craterlong"");
				
			sleep 30;
			};
	}] call RE;');
};"];


if (isNil "cleanup_star") then {cleanup_star = 0;};
if (cleanup_star == 0) then 
{
	cleanup_star = 1;
	hint "Cleanup ON";

}
else
{
	cleanup_star = 0;
	hint "Cleanup OFF";
	
	_stop = format 
	["
	
		if (isServer) then {BIS_MPF_ServerPersistentCallsArray = [[nil,nil,""per"",""execVM"",""ca\Modules\Functions\init.sqf""]];};

		cleanup_looop_BushWookie = false; 
		cleanup_looop_BushWookie = nil; 

	"];
};