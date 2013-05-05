// =======================================================
// EXPLOIT HACKER FIX ATTEMPT
"BIS_fnc_MP_packet" addPublicVariableEventHandler {};
	BIS_fnc_MP = {};
"bis_fnc_param"  addPublicVariableEventHandler {};
	bis_fnc_param = {};
sleep 0.123;
player groupChat "Clearing BIS_fnc Command";
waituntil {!isnil "bis_fnc_init"};
player groupChat "BIS_fnc Clear Complete";


// START MISSION
//	@file Version: 1.1
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [GoT] JoSchaap
//	@file Created: 20/11/2012 05:13
//	@file Description: The main init.
//	@file Args:
#include "setup.sqf"
#include "patch.sqf"
StartProgress = false;
enableSaving[false,false];

X_Server = false;
X_Client = false;
X_JIP = false;
hitStateVar = false;
versionName = "Ultimate Wasteland V1.091";

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

//FASTER TIME MOD.
//Skip 5 minuntes, use setDate, sync every 10 minutes, skip time every minute,Night Cycle, night skips by 7
[5,true,15,10,true,10] execFSM "core_time.fsm";

// Dynamic Weather Changer
[] execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";
 
//JESTERS MENU
[] execVM "jestersMENU\jester@start.sqf";

// WIP
//nul = [] execVM "rslo\rslo_init.sqf";

//TAW VIEW DISTANCE
enableSaving[false,false];
[] execVM "taw_vd\init.sqf";

//Vehicle Service Script
call compile preProcessFile "cfg_lookup.sqf";
call compile preProcessFile "simple_text_control.sqf";
call compile preProcessFile "gvs_watcher.sqf";
Global_GVS_InUse = 0;
Global_gvs_watcher_handle = nil;


//ANTIHACK 0.6.3
if (isServer) then {
    [] execVM "ANTIHACK.sqf";
} else {
    "AHAH" addPublicVariableEventHandler
{[] spawn (_this select 1);
};
    clientStarted = player;
    publicVariableServer "clientStarted";
};

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

//init 3rd Party Scripts
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";

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


//Proving Grounds
[] execVM "addons\proving_Ground\init.sqf";

//TWEAKS
setTerrainGrid 25;
setviewdistance 2200;
