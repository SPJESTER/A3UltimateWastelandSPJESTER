if(!isDedicated) then {
	{
	if (isNil "stormy") then
		{
			_currentFog = fog;
			_currentOvercast = 1;
			0 setOvercast _currentOvercast;
			0 setFog _currentFog;
			setViewDistance 2200;
			1 setFog 0.5;
			1 setOvercast 1;
			player globalChat "NOTICE: Weather Changed to Stormy";
			hint format ["Stormy Weather"];
			publicvariable "stormy";
			};
	
		publicvariable "stormy";
	};
};

//////////////////////////////////////////////////
// CLIENT WEATHER SETTINGS
//////////////////////////////////////////////////
	sleep 1;
	_currentFog = fog;
	_currentOvercast = 1;
	0 setOvercast _currentOvercast;
	0 setFog _currentFog;
	setViewDistance 2200;
	1 setFog 0.5;
	1 setOvercast 1;
	player globalChat "NOTICE: Weather Changed to Stormy";
	hint format ["Stormy Weather"];