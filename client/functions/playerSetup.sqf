//	@file Version: 1.0
//	@file Name: playerSetup.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this;
//Player initialization
_player setskill 0;
{_player disableAI _x} foreach ["move","anim","target","autotarget"];
_player setVariable ["BIS_noCoreConversations", true];

enableSentences false;
removeAllWeapons _player;
removeBackpack _player;

//Default case means something fucked up.
removeAllWeapons _player;
_player addBackpack "B_AssaultPack_Base";
_player addMagazine "16Rnd_9x21_Mag";
_player addMagazine "16Rnd_9x21_Mag";
_player addWeapon "hgun_P07_F";
_player selectWeapon "hgun_P07_F";	

if(str(playerSide) in ["WEST"]) then
{
	removeAllWeapons _player;
    _player addBackpack "B_AssaultPack_Base";
	_player addWeapon "hgun_P07_F";
	_player addMagazine "16Rnd_9x21_Mag";
	_player addMagazine "16Rnd_9x21_Mag";
	_wep = "arifle_MXC_ACO_point_F";
	_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
	_mag = _mags select 0;
	_player addMagazine _mag;
	_player addMagazine _mag;
	_player addWeapon _wep;
	_player selectWeapon _wep;
	reload _player;
	_player addItem "NVGoggles";
	_player assignItem "NVGoggles";
	_player addItem "ItemGPS";
	_player addItem "acc_flashlight";
	_player addWeapon "Binocular";	
	reload _player;
	_player SetUnitPos "Up";
	_player action ["WEAPONINHAND",_player];
};

if(str(playerSide) in ["EAST"]) then
{
	removeAllWeapons _player;
	_player addBackpack "B_AssaultPack_Base";
	_player addWeapon "hgun_Rook40_F";
	_player addMagazine "16Rnd_9x21_Mag";
	_player addMagazine "16Rnd_9x21_Mag";
	reload _player;
	_wep = "arifle_Khaybar_ACO_point_F";
	_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
	_mag = _mags select 0;
	_player addMagazine _mag;
	_player addMagazine _mag;
	_player addWeapon _wep;
	_player selectWeapon _wep;
	reload _player;
	_player addItem "NVGoggles";
	_player assignItem "NVGoggles";
	_player addItem "ItemGPS";
	_player addItem "acc_flashlight";
	_player addWeapon "Binocular";	
	reload _player;
	_player SetUnitPos "Up";
	_player action ["WEAPONINHAND",_player];
};

if(str(playerSide) in ["GUER"]) then
{
	removeAllWeapons _player;
	removeUniform _player;
	_uniform = ["U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Commoner1_3","U_C_Commoner1_2"] call BIS_fnc_selectRandom;
	_player addUniform _uniform;
    _player addBackpack "B_AssaultPack_Base";
	_player addWeapon "hgun_P07_F";
	_player addMagazine "16Rnd_9x21_Mag";
	_player addMagazine "16Rnd_9x21_Mag";
	reload _player;
	_wep = "arifle_TRG20_ACO_F";
	_mags = getArray (configfile >> 'cfgWeapons' >> _wep >> 'magazines');
	_mag = _mags select 0;
	_player addMagazine _mag;
	_player addMagazine _mag;
	_player addWeapon _wep;
	_player selectWeapon _wep;
	reload _player;
	_player addItem "NVGoggles";
	_player assignItem "NVGoggles";
	_player addItem "ItemGPS";
	_player addItem "acc_flashlight";
	_player addWeapon "Binocular";
	reload _player;
	_player SetUnitPos "Up";
	_player action ["WEAPONINHAND",_player];
};

_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";

_player setVariable["cmoney",200,true];
_player setVariable["medkits",0,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",0,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];

[] execVM "client\functions\playerActions.sqf";

//_player groupChat format["Server Initialization Complete"];
_player groupChat format["Server Initialization Complete / If you like the server, and would like to help keep it up	, Visit http://Obliviousgaming.com"];
playerSetupComplete = true;
