if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
{
	_toremote = format
	["
		[] spawn {
		_currentFog = fog;
		_currentOvercast = 0;
		0 setOvercast _currentOvercast;
		0 setFog _currentFog;
		};
	"];
	[_toremote] execVM "Scripts\exec.sqf";
}
else
{
	_toremote3 = format["setViewDistance 2200;5 setOvercast 0;"];
	[_toremote3] execVM "Scripts\exec.sqf";
	
	sleep 6;
	
	_toremote = format["3 setFog 0;"];
	[_toremote] execVM "Scripts\exec.sqf";
};

hint format ["Weather Cleared"];
cutText [format["Weather Cleared"], "PLAIN DOWN"];