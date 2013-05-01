if(!isDedicated) then {
	{
	if (isNil "12AM") then
		{
		setDate [2013, 5, 1, 12, 0];
		player globalChat "NOTICE: Time Changed to 12AM";
		[] execVM "server\functions\serverTimeSync.sqf";
		hint format ["Time is 12 AM"];
		cutText [format["Time is 12 AM"], "PLAIN DOWN"];
		};
	
		publicvariable "12AM";
	};
};

setDate [2013, 5, 1, 12, 0];	
player globalChat "NOTICE: Time Changed to 12AM";
[] execVM "server\functions\serverTimeSync.sqf";
hint format ["Time is 12 AM"];
cutText [format["Time is 12 AM"], "PLAIN DOWN"];