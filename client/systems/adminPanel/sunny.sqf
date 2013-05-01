if(!isDedicated) then {
	{
	if (isNil "sunny") then
		{
			_currentFog = fog;
			_currentOvercast = 0;
			0 setOvercast _currentOvercast;
			0 setFog _currentFog;
			setViewDistance 2200;5 setOvercast 0;
			3 setFog 0;
			player globalChat "NOTICE: Weather Changed to Sunny";
			hint format ["Sunny Weather"];
			publicvariable "sunny";
		};
	
		publicvariable "sunny";
	};
};

//////////////////////////////////////////////////
// CLIENT WEATHER SETTINGS
//////////////////////////////////////////////////
	sleep 1;
	_currentFog = fog;
	_currentOvercast = 0;
	0 setOvercast _currentOvercast;
	0 setFog _currentFog;
	setViewDistance 2200;
	5 setOvercast 0;
	3 setFog 0;
	player globalChat "NOTICE: Weather Changed to Sunny";
	hint format ["Sunny Weather"];
	