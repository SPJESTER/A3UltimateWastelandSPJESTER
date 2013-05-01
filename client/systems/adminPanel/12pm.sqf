if(!isDedicated) then {
	{
	if (isNil "12PM") then
		{
		setDate [2013, 5, 1, 0, 0];
		player globalChat "NOTICE: Time Changed to 12PM";
		[] execVM "server\functions\serverTimeSync.sqf";
		hint format ["Time is 12 PM"];
		cutText [format["Time is 12 PM"], "PLAIN DOWN"];
		};
	
		publicvariable "12PM";
	};
};

setDate [2013, 5, 1, 0, 0];	
player globalChat "NOTICE: Time Changed to 12PM";
[] execVM "server\functions\serverTimeSync.sqf";
hint format ["Time is 12 PM"];
cutText [format["Time is 12 PM"], "PLAIN DOWN"];