_currentFog = fog;
_currentOvercast = 0;
0 setOvercast _currentOvercast;
0 setFog _currentFog;
setViewDistance 2200;5 setOvercast 0;
3 setFog 0;

player globalChat "ADMIN NOTICE: Weather Changed to Sunny";
hint format ["Sunny Weather"];