if (isnil ("WookieESP")) then {WookieESP = 0;};
if (WookieESP==0) then {WookieESP=1;cutText [format["Esp On"], "PLAIN DOWN"];hint "Esp On";}else{WookieESP=0;cutText [format["Esp Off"], "PLAIN DOWN"];hint "Esp Off";};

if (WookieESP==1) then {
oneachframe
{
	_nigs = nearestobjects [player,["CAManBase"],1400];
	{
		_pos = getPosATL _x;
		if((side _x != side player) && (getPlayerUID _x != "") && ((player distance _x) < 1400)) then 
		{
			drawIcon3D ["", [1,0,0,0.7], [ _pos select 0,  _pos select 1,  _pos select 2], 0.1, 0.1, 45, (format ["%2 : %1m",round(player distance _x), name _x]), 1, 0.03, "default"]
		}
		else
		{
			if((getPlayerUID _x != "") && ((player distance _x) < 1000)) then 
			{
				drawIcon3D ["", [0,1,0.5,0.4], [ _pos select 0,  _pos select 1,  _pos select 2], 0.1, 0.1, 45, (format ["%2 : %1m",round(player distance _x), name _x]), 1, 0.03, "default"]
			};
		};
	} foreach playableUnits;
	_noobs = nearestobjects [player,["CAManBase"],100];
	{
		_pos = getPosATL player;
		if(((alive _x)) && ((player distance _x) < 100)) then 
		{
			if((side _x != side player) && ((player distance _x) < 100)) then 
			{
				if(player distance _x < 10 && _x iskindof "CAManBase" && side _x != civilian) then 
				{
					drawLine3D [[ _pos select 0,  _pos select 1,  _pos select 2], _x, [1,0,0,(abs((((player distance _x)) - 100)/100))]]
				};
			} 
			else 
			{
				drawLine3D [[ _pos select 0,  _pos select 1,  _pos select 2], _x, [0,1,0,(abs((((player distance _x)) - 100)/100))]]
			};
		};
	} foreach playableUnits;
	};
}
else
{
oneachframe {nil};
};

sleep 2;

if !("ItemMap" in items player) then {player addweapon "ItemMap";};
Wookie_Friends = [];
Wookie_Enemys = [];

if (isnil "Wookie_Map_Markers") then {Wookie_Map_Markers = 0;}; 
if (Wookie_Map_Markers == 0) then {Wookie_Map_Markers = 1; hint "Player Markers ON";} else {Wookie_Map_Markers = 0; hint "Player Markers OFF";};

while {Wookie_Map_Markers == 1} do
{
	{
		//[_x] join grpNull;
		if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
		{
			if (count (crew vehicle _x) > 0) then 
			{
				{
					if (!(_x in Wookie_Friends) and (alive _x) and (getPlayerUID _x != "")) then 
					{
						private ["_pos", "_mkr", "_vhc"];
						_vhc = vehicle _x;
						_pos = getPos _x;
						_mkr = createMarkerLocal [format ["CRW%1%2", _pos select 0, _pos select 1], [_pos select 0, _pos select 1, 0]]; 
						_vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
						_mkr setMarkerTextLocal format[' %1 --- %2 --- %3m',name _x,_vehname,round(_x distance player)];
						_mkr setMarkerTypeLocal "mil_dot"; 
						if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorBlue";}else{_mkr setMarkerColorLocal "ColorRed";};
						_mkr setMarkerSizeLocal [1,1];

						Wookie_Friends set [count Wookie_Friends, _x];
						[_x, _mkr,_vhc] spawn 
						{
							private ["_u", "_m","_pc"]; 
							_u = _this select 0; 
							_m = _this select 1; 
							while {(Wookie_Map_Markers == 1) and (alive _u) and (vehicle _u != _u) and (getPlayerUID _u != "")} do 
							{
								_pc = ((crew vehicle _u) find _u); 
								_m setMarkerPosLocal ([(getPos _u select 0) + 20, (getPos _u select 1) - (25 + _pc*20), 0]); 
								sleep 0.01; 
							}; 
							deleteMarkerLocal _m;	
							if (_u in Wookie_Friends) then 
							{ 
								Wookie_Friends set [(Wookie_Friends find _u), -1]; 
								Wookie_Friends = Wookie_Friends - [-1]; 			
							}; 					
							true;
						};
					};
				} forEach crew vehicle _x;
			}; 
		}
		else	
		{
			if (!(_x in Wookie_Enemys) and (vehicle _x == _x) and (getPlayerUID _x != "")) then 			 
			{
				private ["_pos", "_mkr"]; 
				_pos = getPos _x;
				
				_mkr = createMarkerLocal [format ["PLR%1%2", _pos select 0, _pos select 1], [_pos select 0, _pos select 1, 0]]; 
				_mkr setMarkerTypeLocal "mil_dot";  
				_mkr setMarkerSizeLocal [1,1];
				if ((side _x == side player) and (side _x != resistance)) then {_mkr setMarkerColorLocal "ColorWhite";}else{_mkr setMarkerColorLocal "ColorRedAlpha";};
				_mkr setMarkerTextLocal format ["%1 --- %2", name _x,round(_x distance player)];
				if (_x == player) then 
				{	
					_mkr setMarkerColorLocal "ColorGreen";
				};
				Wookie_Enemys set [count Wookie_Enemys, _x];
				[_x, _mkr] spawn 
				{ 
					private ["_u", "_m"]; 
					_u = _this select 0; 
					_m = _this select 1; 
					while {(Wookie_Map_Markers == 1) and (alive _u) and (vehicle _u == _u) and (getPlayerUID _u != "") } do 
					{ 
						_m setMarkerPosLocal ([getPos _u select 0, getPos _u select 1, 0]); 
						sleep 0.01; 
					}; 
					deleteMarkerLocal _m;	
					if (_u in Wookie_Enemys) then 
					{ 
						Wookie_Enemys set [(Wookie_Enemys find _u), -1]; 
						Wookie_Enemys = Wookie_Enemys - [-1]; 			
						
					}; 					
					true;
				}; 
			};

		};
	} forEach playableUnits;
sleep 0.3;
};
{_mkr = str _x; deleteMarkerLocal _mkr;} forEach playableUnits;
{deleteMarkerLocal _x} forEach playableUnits;
{deleteMarkerLocal _x} forEach _mkr;
{deleteMarkerLocal _x} forEach Wookie_Friends;
{deleteMarkerLocal _x} forEach Wookie_Enemys;