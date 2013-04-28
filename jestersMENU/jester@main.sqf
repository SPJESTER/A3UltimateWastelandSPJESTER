pathtoscrdir = "jestersMENU\jester@scripts\";
pathtoscrdir1 = "jestersMENU\jester@scripts\jester@cars\";
pathtoscrdir2 = "jestersMENU\jester@scripts\jester@air\";
pathtoscrdir6 = "jestersMENU\jester@scripts\jester@boats\";
pathtoscrdir4 = "jestersMENU\jester@scripts\jester@mscripts\";
pathtoscrdir8 = "jestersMENU\jester@scripts\jester@specweapons\";
pathtoscrdir9 = "jestersMENU\jester@scripts\jester@custom\";
pathtoscrdir99 = "jestersMENU\";
exstr = 'player execVM "'+pathtoscrdir+'%1"';
exstr1 = 'player execVM "'+pathtoscrdir1+'%1"';
exstr2 = 'player execVM "'+pathtoscrdir2+'%1"';
exstr3 = 'player execVM "'+pathtoscrdir3+'%1"';
exstr4 = 'player execVM "'+pathtoscrdir4+'%1"';
exstr5 = 'player execVM "'+pathtoscrdir5+'%1"';
exstr6 = 'player execVM "'+pathtoscrdir6+'%1"';
exstr7 = 'player execVM "'+pathtoscrdir7+'%1"';
exstr8 = 'player execVM "'+pathtoscrdir8+'%1"';
exstr9 = 'player execVM "'+pathtoscrdir9+'%1"';
exstr10 = 'player execVM "'+pathtoscrdir10+'%1"';
exstr99 = 'player execVM "'+pathtoscrdir99+'%1"';

main = 
[
	["",true],
	    ["----------------------------", [],  "#USER:main", -5, [["expression", ""]], "1", "1"],
		[">Spawn Items<", [],  "#USER:specialweaps", -7, [["expression", ""]], "1", "1"],
		[">Small Debug Menu", [],  "", -5, [["expression", format[exstr,"smalldebug.sqf"]]], "1", "1"],
		[">Vehicle Cleanup", [],  "", -5, [["expression", format[exstr,"veh_cleanup.sqf"]]], "1", "1"],
		[">Clean Dead Objects<", [],  "", -5, [["expression", format[exstr,"clear_server.sqf"]]], "1", "1"],
		["----------------------------", [],  "#USER:main", -5, [["expression", ""]], "1", "1"],
		[">Exit<", [], "", -3, [["expression", ""]], "1", "1"]
];

specialweaps = 
[
	["",true],
		[">Holo Sight", [],  "", -5, [["expression", format[exstr8,"HoloSightSingle.sqf"]]], "1", "1"],
		[">ARCO Sight", [],  "", -5, [["expression", format[exstr8,"ArcoSightSingle.sqf"]]], "1", "1"],
		[">ACO Sight", [],  "", -5, [["expression", format[exstr8,"AcoSightSingle.sqf"]]], "1", "1"],
		[">ACO-GRN Sight", [],  "", -5, [["expression", format[exstr8,"AcoGrnSightSingle.sqf"]]], "1", "1"],
		[">HAMR Sight", [],  "", -5, [["expression", format[exstr8,"HamrSightSingle.sqf"]]], "1", "1"],
		[">FirstAidKits", [],  "", -5, [["expression", format[exstr8,"FirstAid.sqf"]]], "1", "1"],
		[">Binoculars", [],  "", -5, [["expression", format[exstr8,"BinocularsItem.sqf"]]], "1", "1"],
		[">Night Vision", [],  "", -5, [["expression", format[exstr8,"NVGogglesItem.sqf"]]], "1", "1"],
		[">MedKits", [],  "", -5, [["expression", format[exstr8,"MedKit.sqf"]]], "1", "1"],
		[">ToolKits", [],  "", -5, [["expression", format[exstr8,"RepairKit.sqf"]]], "1", "1"],
		["", [],  "", -5, [["expression", format[exstr,"jester@nul.sqf"]]], "1", "1"],
		[">Exit<", [], "", -3, [["expression", ""]], "1", "1"]
];


showCommandingMenu "#USER:main";