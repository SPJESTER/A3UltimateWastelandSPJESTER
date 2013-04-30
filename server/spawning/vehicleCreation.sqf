
//	@file Version: 1.0
//	@file Name: vehicleCreation.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_marker","_cartype","_car","_num","_tipped","_carpos","_type","_townpos"];
_type = _this select 1;
_pos = _this select 0;

//Create Civilian Vehicle
if (_type == 0) then {
	//Car Initilization, Pick Car Type.
	    _cartype = civilianVehicles select (random (count civilianVehicles - 1));
	    _car = createVehicle [_cartype,_pos,[], 20,"None"];
		_commands  ="nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'";
		[[netID _car, _commands], "FNC_setVehicleInit", true, true] spawn BIS_fnc_MP;

//	_car setVehicleInit "nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'";
//	processInitCommands;
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;
	
	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
	_car setVelocity [0,0,0.1];
};

//Create Military Vehicle
if (_type == 1) then {
	//Car Initilization, Pick Car Type.
    _cartype = militaryVehicles select (random (count militaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
	_commands  ="nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'";
	[[netID _car, _commands], "FNC_setVehicleInit", true, true] spawn BIS_fnc_MP;	
	//_car setVehicleInit "nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'";
	//processInitCommands;
	//["nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'","BIS_fnc_execVM",_car,true] spawn BIS_fnc_MP;
    
    
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set authenticity
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
	_car setVelocity [0,0,0.1];
};

//Create Armed Military Vehicle
if (_type == 2) then {
	//Car Initilization, Pick Car Type.
    _cartype = armedMilitaryVehicles select (random (count armedMilitaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
	_commands  ="nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'";
	[[netID _car, _commands], "FNC_setVehicleInit", true, true] spawn BIS_fnc_MP;	
//	["nul=[this, 60, 600, 0, false] execVM 'server\functions\vehicle.sqf'","BIS_fnc_execVM",_car,true] spawn BIS_fnc_MP;

	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
    _car setVehicleAmmo (random 0.90);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
	_car setVelocity [0,0,0.1];
};
