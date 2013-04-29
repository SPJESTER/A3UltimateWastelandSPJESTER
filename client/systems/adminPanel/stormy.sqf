if (!(isNil "Dayz_GUI_R") or !(isNil "dayz_originalPlayer")) then 
{
	_toremote = format
	["
		[] spawn {
		_currentFog = fog;
		_currentOvercast = 1;
		0 setOvercast _currentOvercast;
		0 setFog _currentFog;
		};
	"];
	[_toremote] execVM "Scripts\exec.sqf";
	
}else{

	_toremote = format["1 setFog 0.8;"];
	[_toremote] execVM "Scripts\exec.sqf";
	
	sleep 3;

	_toremote = format["setViewDistance 2200;"];
	[_toremote] execVM "Scripts\exec.sqf";
	
	sleep 1;
	
	_toremote = format["1 setOvercast 1;"];
	[_toremote] execVM "Scripts\exec.sqf";
};


hint format ["Stormy Weather"];
cutText [format["Stormy Weather"], "PLAIN DOWN"];