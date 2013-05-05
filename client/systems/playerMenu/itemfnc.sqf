
//	@file Version: 1.1
//	@file Name: itemfnc.sqf
//	@file Original Author: TAW_Tonic
//  @file Author: [404] Costlyy, [404] Deadbeat, [GoT] JoSchaap
//	@file Created: 01/01/1970 00:00
//	@file Args: [int (0 = use | 1 = drop)]

#include "dialog\player_sys.sqf";
#define GET_DISPLAY (findDisplay playersys_DIALOG)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
if(isNil {dropActive}) then {dropActive = false};
disableSerialization;

private["_switch","_data","_vehicle_type","_pos","_bomb"];
_switch = _this select 0;
_data = GET_SELECTED_DATA(item_list);
switch(_switch) do 
{
	case 0: // Use item
	{
		closeDialog 0;
		switch(_data) do 
		{
			case "fuelFull": 
			{
				[] call refuelVehicle;
			};

			case "fuelEmpty": 
			{
				hint "You can refuel Fuel Can at gas station through action menu";
			};

			case "repairkits": 
			{
				[] call repairVehicle;
			};

			case "medkit": 
			{
				if((damage player) < 0.25) exitwith {

					if((damage player) < 0.01) then {
						hint "You do not require a medkit";
					} else {
						hint "You have healed minor injures";
					};
					player setDamage 0;
				};

				if((vehicle player) == player) then { player playmove "AinvPknlMstpSlayWrflDnon_medic"; };

				player setVariable["medkits",(player getVariable "medkits")-1,true];
				sleep 6.5;
				player setDamage 0;
				hint "You are now fully healed";
			};
			case "camonet": 
			{
				_playerPos = getPosATL player;
				player setVariable["camonet",(player getVariable "camonet")-1,true];
				_dir = getdir player;
				_deployedCamoNet = "Land_cargo_addon02_V2_F" createVehicle (position player); _deployedCamoNet setPos _playerPos;
				_deployedCamoNet setDir _dir;
				hint "You built an improvised roof";
			};            
            case "spawnBeacon": 
            {
            	[] call placeSpawnBeacon;
            };
		};
	};

	case 1: //Drop item
	{

		if(_data == "") exitWith {
        	player globalChat "YOU NEED TO SELECT AN ITEM TO DROP!";
        };
		// Check if mutex lock is active.
		if(mutexScriptInProgress) exitWith {
			player globalChat "YOU ARE ALREADY PERFORMING ANOTHER ACTION!";
		};
        
		if(vehicle player != player) exitwith {
        	player globalChat "YOU ARE CURRENTLY BUSY!";
        };
        
        mutexScriptInProgress = true;
        
		player switchMove "AinvPknlMstpSlayWrflDnon_medic"; // Begin the full medic animation...
		sleep 3;
		_pos = getPosATL player;
		//Drops the item and sets values & variables
		switch(_data) do 
		{
			case "fuelFull": {player globalChat "YOU CANNOT DROP THIS ITEM!";};
			case "fuelEmpty": {player globalChat "YOU CANNOT DROP THIS ITEM!";};
			case "repairkits": {player globalChat "YOU CANNOT DROP THIS ITEM!";};
			case "medkit": {player globalChat "YOU CANNOT DROP THIS ITEM!";};
            case "spawnBeacon": {
            player setVariable["spawnBeacon", (player getVariable "spawnBeacon")-1,true]; 
            _droppedBeacon = "Satelit" createVehicle (position player);
            _droppedBeacon setVariable["spawnsRemaining", 100, true];
            _droppedBeacon setVariable["faction","WORLD",true];
            _droppedBeacon setPos _pos;
            };
		};
        mutexScriptInProgress = false;
        player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation. 
        closeDialog 0; // To fix the listbox not updating properly.
	};
};