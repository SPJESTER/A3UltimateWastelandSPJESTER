//	@file Version: 1.1
//	@file Name: boxSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_markerName","_marker","_hint","_safePos","_boxes", "_nerfBoxes", "_currBox", "_boxInstance"];

_counter = 0;

_nerfBoxes = ["Box_East_Support_F","Box_East_Wps_F","Box_East_WpsSpecial_F","Box_NATO_Support_F","Box_NATO_Wps_F","Box_NATO_WpsSpecial_F"];

for "_i" from 1 to 118 step 25 do
{
	_pos = getMarkerPos format ["Spawn_%1", _i];
    _currBox = _nerfBoxes select (random (count _nerfBoxes - 1));
    _safePos = [_pos, 25, 50, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
	_boxInstance = createVehicle [_currBox, _safePos,[], 30, "NONE"];

	switch (_currBox) do 
	{
		case ("Box_East_WpsSpecial_F"): {
			_boxInstance addMagazineCargo ["20Rnd_762x45_Mag", 5];
		};
		case ("Box_NATO_WpsSpecial_F"): {
			_boxInstance removeMagazines "20Rnd_762x45_Mag";
			_boxInstance addMagazineCargo ["30Rnd_65x39_caseless_mag", 10];
		};
	};

    _counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Ammo Caches Spawned",_counter];