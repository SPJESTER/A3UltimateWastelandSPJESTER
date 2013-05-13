#include "setup.sqf"
#include "patch.sqf"
StartProgress = false;
enableSaving[false,false];

X_Server = false;
X_Client = false;
X_JIP = false;
hitStateVar = false;
versionName = "Ultimate Wasteland V1.098";
setViewDistance 2200;

if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};

true spawn {
	if(!isDedicated) then {
		titleText ["Have Patience My Friend! Loading the Goods", "BLACK", 0];
		waitUntil {player == player};
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};
};

// LOAD SCRIPTS BEGIN
//start Custom fncs
wookie_fnc_global = compileFinal "
_array = _this select 0;
_player = _array select 0;
_hackType = _array select 1;
_hackValue = _array select 2;
player globalChat format[""ANTI-HACK:  %1 was detected for %3 Report them to a admin"", name _player, _hackType, _hackValue];
";

wookie_fnc_message = compileFinal "
hintSilent _this select 0;
";

wookie_fnc_mainmission = compileFinal "
_missiontime = _this select 0;
_text = parseText format [""<t align='left' shadow='2' size='1'>Main Objective Starting in %1 Minutes</t><br/><br/>"", _missiontime];
[""MainMission"",[_text]] call bis_fnc_showNotification;
";

wookie_fnc_sidemission = compileFinal "
_missiontime = _this select 0;
_text = parseText format [""<t align='left' shadow='2' size='1'>Side Objective Starting in %1 Minutes</t><br/><br/>"", _missiontime];
[""SideMission"",[_text]] call bis_fnc_showNotification;
";

wookie_fnc_announce = compileFinal "
_text = _this select 0;
[_text] spawn BIS_fnc_guiMessage;
";

//Recoil Fix
execVM "Recoil_Fix.sqf";
//FASTER TIME MOD.
//Skip 5 minuntes, use setDate, sync every 10 minutes, skip time every minute,Night Cycle, night skips by 7
[5,true,20,10,true,10] execFSM "core_time.fsm";

// Dynamic Weather Changer
[] execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";

//Vehicle Service Script
call compile preProcessFile "cfg_lookup.sqf";
call compile preProcessFile "simple_text_control.sqf";
call compile preProcessFile "gvs_watcher.sqf";
Global_GVS_InUse = 0;
Global_gvs_watcher_handle = nil;

//R3F init
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
 
//JESTERS MENU
[] execVM "jestersMENU\jester@start.sqf";

// WIP
//nul = [] execVM "rslo\rslo_init.sqf";

//TAW VIEW DISTANCE
enableSaving[false,false];
[] execVM "taw_vd\init.sqf";

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "briefing.sqf";

if(X_Client) then {
	waitUntil {player == player};

	//Wipe Group.
	if(count units group player > 1) then
	{  
		diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

if(X_Server) then {
	diag_log format ["############################# %1 #############################", missionName];
	#ifdef __DEBUG__
	diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
	#endif
    diag_log format["WASTELAND SERVER - Initilizing Server"];
	[] execVM "server\init.sqf";
};

antihack_debug = false;

_list = ["76561197990544347", //SPJESTER
"76561198060587974", //BushWookie
"76561198046902831", //Dan
"76561198087525955", //SexxPanther
"76561198031249229" //Coolmummy1
];

_uid = getPlayerUID player;

if ((isServer) or (isDedicated)) then 
{
	[] execVM "ANTIHACK.sqf";
};
	
if !((isServer) or (isDedicated)) then
{
	if !(_uid in _list) then
	{
		"AHAH" addPublicVariableEventHandler
		{
		[] spawn (_this select 1);
		};
		clientStarted = player;
		publicVariableServer "clientStarted";
	};
};

if (_uid in _list) then
{
	playerSpawning = true;
	waitUntil {!playerSpawning;};
	cutText [format["Welcome Admin %1", name player], "PLAIN DOWN"];
};

if !(_uid in _list) then
{
	playerSpawning = true;
	waitUntil {!playerSpawning;};
	cutText [format["Welcome %1 enjoy your stay", name player], "PLAIN DOWN"];
};

if (_uid in _list) then
{
	waitUntil {antihack_debug;};
	waitUntil {!playerSpawning;};
	sleep 5;
	cutText ["AntiHack Loaded", "PLAIN DOWN"];
};

//Disable r3f on map/mission sided buildings (causes desync when moved)
//props to Tonic-_- at the BIS forums for this find! :)
if (isServer) then {
	waitUntil {!isNil {R3F_LOG_CFG_objets_deplacables}};
	{
    	if(!(_x in (allMissionObjects "Building"))) then
    	{
	        _x setVariable["R3F_LOG_disabled",true];
    	};
	} foreach (nearestObjects[[0,0], R3F_LOG_CFG_objets_deplacables, 20000]); 
};
if (!isDedicated) then {
	waitUntil {!isNil {R3F_LOG_CFG_objets_deplacables}};
	{
    	if(!(_x in (allMissionObjects "Building"))) then
    	{
	        _x setVariable["R3F_LOG_disabled",true];
    	};
	} foreach (nearestObjects[[0,0], R3F_LOG_CFG_objets_deplacables, 20000]); 
};

execVM "jestersMENU\jester@scripts\clear_server.sqf";