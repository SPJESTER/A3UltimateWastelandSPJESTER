_currentFog = fog;
_currentOvercast = 1;
0 setOvercast _currentOvercast;
0 setFog _currentFog;
setViewDistance 2200;
1 setFog 0.5;
1 setOvercast 1;

player globalChat "ADMIN NOTICE: Weather Changed to Stormy";
hint format ["Stormy Weather"];