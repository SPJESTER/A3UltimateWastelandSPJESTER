scrpath = "jestersMENU\jester@scripts\";
scrpath1 = "jestersMENU\jester@scripts\jester@cars\";
scrpath2 = "jestersMENU\jester@scripts\jester@air\";
scrpath6 = "jestersMENU\jester@scripts\jester@boats\";
scrpath4 = "jestersMENU\jester@scripts\jester@mscripts\";
scrpath8 = "jestersMENU\jester@scripts\jester@specweapons\";
scrpath9 = "jestersMENU\jester@scripts\jester@custom\";
scrpath99 = "jestersMENU\";
exscr = 'player execVM "'+scrpath+'%1"';
exscr1 = 'player execVM "'+scrpath1+'%1"';
exscr2 = 'player execVM "'+scrpath2+'%1"';
exscr3 = 'player execVM "'+scrpath3+'%1"';
exscr4 = 'player execVM "'+scrpath4+'%1"';
exscr5 = 'player execVM "'+scrpath5+'%1"';
exscr6 = 'player execVM "'+scrpath6+'%1"';
exscr7 = 'player execVM "'+scrpath7+'%1"';
exscr8 = 'player execVM "'+scrpath8+'%1"';
exscr9 = 'player execVM "'+scrpath9+'%1"';
exscr10 = 'player execVM "'+scrpath10+'%1"';
exscr99 = 'player execVM "'+scrpath99+'%1"';

main = 
[
	["",true],
	    ["----------------------------", [],  "#USER:main", -5, [["expression", ""]], "1", "1"],
		[">Spawn Items<", [],  "#USER:specialweaps", -7, [["expression", ""]], "1", "1"],
		[">Small Debug Menu", [],  "", -5, [["expression", format[exscr,"smalldebug.sqf"]]], "1", "1"],
		["----------------------------", [],  "#USER:main", -5, [["expression", ""]], "1", "1"],
		[">Exit<", [], "", -3, [["expression", ""]], "1", "1"]
];

specialweaps = 
[
	["",true],
		[">Holo Sight", [],  "", -5, [["expression", format[exscr8,"HoloSightSingle.sqf"]]], "1", "1"],
		[">ARCO Sight", [],  "", -5, [["expression", format[exscr8,"ArcoSightSingle.sqf"]]], "1", "1"],
		[">ACO Sight", [],  "", -5, [["expression", format[exscr8,"AcoSightSingle.sqf"]]], "1", "1"],
		[">ACO-GRN Sight", [],  "", -5, [["expression", format[exscr8,"AcoGrnSightSingle.sqf"]]], "1", "1"],
		[">HAMR Sight", [],  "", -5, [["expression", format[exscr8,"HamrSightSingle.sqf"]]], "1", "1"],
		[">FirstAidKits", [],  "", -5, [["expression", format[exscr8,"FirstAid.sqf"]]], "1", "1"],
		[">Binoculars", [],  "", -5, [["expression", format[exscr8,"BinocularsItem.sqf"]]], "1", "1"],
		[">Night Vision", [],  "", -5, [["expression", format[exscr8,"NVGogglesItem.sqf"]]], "1", "1"],
		[">MedKits", [],  "", -5, [["expression", format[exscr8,"MedKit.sqf"]]], "1", "1"],
		[">ToolKits", [],  "", -5, [["expression", format[exscr8,"RepairKit.sqf"]]], "1", "1"],
		["", [],  "", -5, [["expression", format[exscr,"jester@nul.sqf"]]], "1", "1"],
		[">Exit<", [], "", -3, [["expression", ""]], "1", "1"]
];


showCommandingMenu "#USER:main";