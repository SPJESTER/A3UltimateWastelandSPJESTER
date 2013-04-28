if (isNil "debug_simple") then {debug_simple = true;} else {debug_simple = !debug_simple;};

while {debug_simple} do 
{
	hintSilent parseText format ["
	
	<t size='1.2'font='puristaMedium'align='left'>Player Online:</t><t size='1.2' font='puristaMedium'align='right'>%2</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>Player in 500m:</t><t size='1.2' font='puristaMedium'align='right'>%4</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>FPS:</t><t size='1.2' font='puristaMedium'align='right'>%1</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>Viewdistance:</t><t size='1.2' font='puristaMedium'align='right'>%7</t><br/>
	<br/>
	<t size='1.2'font='puristaMedium'align='left'>Vehicles:</t><t size='1.2' font='puristaMedium'align='right'>%3(%8)</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>Air:</t><t size='1.2' font='puristaMedium'align='right'>%6</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>Tank:</t><t size='1.2' font='puristaMedium'align='right'>%5</t><br/>
	<t size='1.2'font='puristaMedium'align='left'>Car:</t><t size='1.2' font='puristaMedium'align='right'>%9</t>
	",
	round diag_fps,
	(count playableUnits),
	(count([6800, 9200, 0] nearEntities [["StaticWeapon","Car","Motorcycle","Tank","Air","Ship"],25000])),
	(({isPlayer _x} count (getPos vehicle player nearEntities [["AllVehicles"], 500]))-1),
	(count([6800, 9200, 0] nearEntities [["Tank"],25000])),
	(count([6800, 9200, 0] nearEntities [["Air"],25000])),
	viewdistance,
	count vehicles,
	(count([6800, 9200, 0] nearEntities [["Car"],25000]))
	];
sleep 1;
};

if (!debug_simple) then {hintSilent parseText format ["<t size='1'font='puristaMedium'align='center'>DEBUG OFF</t>"];};