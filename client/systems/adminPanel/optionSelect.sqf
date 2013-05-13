//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define serverAdminMenu_option 50007
#define modMenu_option 50005
#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayMod","_displayServerAdmin","_displayDebug","_modSelect","_adminSelect","_serverAdminSelect","_debugSelect"];
_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {
	_panelType = _this select 0;
	
	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_displayMod = uiNamespace getVariable "ModMenu";
	_displayServerAdmin = uiNamespace getVariable "ServerAdminMenu";
	_displayDebug = uiNamespace getVariable "DebugMenu";
	
	_modSelect = _displayMod displayCtrl modMenu_option;
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;
	_serverAdminSelect = _displayServerAdmin displayCtrl serverAdminMenu_option;
	_debugSelect = _displayDebug displayCtrl debugMenu_option;
	
	switch (_panelType) do
	{
	    case 0: //Moderator panel
		{
			switch (lbCurSel _modSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Basic Vehicle Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			};
		};
		case 1: //Administrator panel
		{
			switch (lbCurSel _adminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
	                onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
	            case 5: //RSLO Menu
			    {   
	            	closeDialog 0;   
	                createDialog "RSLO_gui";
			    };
			};
		};
	    case 2: //Server Administrator panel
	    {
			switch (lbCurSel _serverAdminSelect) do
			{
			    case 0: //Player Menu
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\playerMenu.sqf";
				};
				case 1: //Full Vehicle Management
				{
	                closeDialog 0;
					execVM "client\systems\adminPanel\vehicleManagement.sqf";
				};
			    case 2: //Tags
			    {
					execVM "client\systems\adminPanel\playerTags.sqf";
			    };
			    case 3: //Teleport
			    {
	                closeDialog 0;    
	                hint "Click on map to teleport";
					if ((vehicle player isKindOf "air") && (isEngineOn vehicle player)) then
					{
						wookie_air_tp=
						{
							_pos = [_this select 0, _this select 1, _this select 2];
							_pos = [_this select 0, _this select 1, (getTerrainHeightASL _pos)+100];
		
							_aim = (vehicle player);
							if (true) then
							{
								_aim setPosASL _pos;
							};
							onMapSingleClick "";
							openMap [false, false];
						};
	
						openMap [true, false];
						onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call wookie_air_tp";
					}
					else
					{
						wookie_ground_tp=
						{
							_pos = [_this select 0, _this select 1, _this select 2];
							_pos = [_this select 0, _this select 1, (getTerrainHeightASL _pos)+0.5];
		
							_aim = (vehicle player);
							if (true) then
							{
								_aim setPosASL _pos;
							};
							onMapSingleClick "";
							openMap [false, false];
						};

						openMap [true, false];
						onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call wookie_ground_tp";
					};
			    };
	            case 4: //Money
			    {      
					player setVariable["cmoney", (player getVariable "cmoney")+1000,true];
			    };
	            case 5: //Debug Menu
			    {   
	            	closeDialog 0;   
	                execVM "client\systems\adminPanel\loadDebugMenu.sqf";
			    };
	            case 6: //RSLO Menu
			    {   
	            	closeDialog 0;   
	                createDialog "RSLO_gui";
			    };
				case 7: //God Mode
			    {   
	            	if (isNil "God_Mode_wookie") then
					{
						God_Mode_wookie = 0;
					};

					if (God_Mode_wookie == 0) then
					{
						God_Mode_wookie = 1;
						cutText [format["God Mode Enabled"], "PLAIN DOWN"];
						fnc_usec_damageHandler = {};
						fnc_usec_unconscious  = {};
						player removeAllEventHandlers "handleDamage";
						player addEventHandler ["handleDamage", {false}];
						player allowDamage false;
						sleep 2;
						cutText [format[""], "PLAIN DOWN"];
					}
					else
					{
						God_Mode_wookie = 0;
						cutText [format["God Mode Disabled"], "PLAIN DOWN"];//save after
						player addEventHandler ["handleDamage", {true}];
						player removeAllEventHandlers "handleDamage";
						player allowDamage true;
						sleep 2;
						cutText [format[""], "PLAIN DOWN"];
					};
			    };
			};
	    };
	    case 3: //Debug panel
	    {      
			switch (lbCurSel _debugSelect) do
			{
			    case 0: //Access Gun Store
				{
	                closeDialog 0;
					execVM "client\systems\gunStore\loadGunStore.sqf";
				};
				case 1: //Access General Store
				{
	                closeDialog 0;
					execVM "client\systems\generalStore\loadGenStore.sqf";
				};
			    case 2: //Access Respawn Dialog
			    {
	                closeDialog 0;
					true spawn client_respawnDialog;
			    };
	            case 3: //Server Fps
			    {      
					hint format["Server FPS: %1",serverFPS];
			    };
	            case 4: //Back
			    {
					closeDialog 0;
					execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
			    };
			};		
	    };
	};
} else {
  exit;  
};