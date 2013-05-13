if (isNil "spawn_protection_wookie") then
{
	spawn_protection_wookie = 0;
};

if (spawn_protection_wookie == 0) then
{
	spawn_protection_wookie = 1;
	cutText [format["Spawn Protection Enabled"], "PLAIN DOWN"];
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
	spawn_protection_wookie = 0;
	cutText [format["Spawn Protection Disabled"], "PLAIN DOWN"];//save after
	player addEventHandler ["handleDamage", {true}];
	player removeAllEventHandlers "handleDamage";
	player allowDamage true;
	sleep 2;
	cutText [format[""], "PLAIN DOWN"];
};