waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["ultimate_wasteland", "Credits"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["serverinfo", "Server Info"];

player createDiaryRecord["changelog",
[
"GoT Wasteland",
"
<br/>
		*Revision:a*<br/>
		[Added] New main mission (Convoy) By Sanjo.<br/>
		[Added] MiniConvoy Sidemission (JoSchaap) Tnx Sanjo<br/>
		[Added] Posibility to move and airlift small bunkers<br/>
		[Added] More baseparts to be taken from all over the map<br/>
		[Added] Food,Water,Fuel sources and the refuel option<br/>
		[Fixed] Fixed misc font errors.<br/>
		[Fixed] one of the weap boxes could not be moved.<br/>
		[Fixed] Survival system now active again!<br/>
		[Fixed] Now posible to get food,water,fuel !<br/>
		[Fixed] Ifrit spawn and mission issue's<br/>
		[Fixed] Vehicle content window missing an image/icon<br/>
		[Fixed] Admin-Provinggrounds missing an image/icon<br>
		<br/>
		*Revision:b*<br/>
		[Added] More variaty of basebuilding parts (+new parts!)<br/>
		[Added] 20mm and 40mm flare rounds to Gunstore<br/>
		[Added] You can study and build improvised roofs!<br/>
		[Added] Cargo Containers with 30slots space for parts<br/>
		[Changed] Cargo Containers can only be Towed or airlifted!<br/>
		[Changed] Lamp-class for basebuilding due to placement bugs<br/>
		[Changed] Significantly increased the ammount of objects<br/>
		[Fixed] Font errors on some rare occasions<br/>
		[Fixed] Desync issues<br/>
		[Fixed] Bug that enabled players to take map-bound objects<br/>
		[Fixed] Typo's in stringtables<br/>
		[Fixed] Dropping food and water through playermenu<br/>
		[Removed] The metal bunker for basebuilding<br/>
		[Removed] Funtionality to drop your Jerrycan (not in arma3)<br/>
		<br/>
		*Revision:d (c was skipped intentionally)<br/>
		[Added] Different reward crate contents for the convoys<br/>
		[Added] New objects to the list of basebuilding parts<br/>
		[Added] Sanjo's mission select (prevents recurring missions)<br/>
		[Added] Mission intel and author info to the splash screen<br/>
		[Added] Gunstore radars are back!<br/>
		[Added] New side mission Hostile Helicopter<br/>
		[Added] New main mission Hostile Helicopter-Squad<br/>
		[Changed] Weapon and item prizes in the gunstore<br/>
		[Changed] death sequence when killed<br/>
		[Changed] baseparts that kept falling over<br/>
		[Changed] Logisitic checks on init (caused long waiting times)<br/>
		[Changed] Enabled groups in Blufor/Opfor <br/>
		[Fixed] Flare rounds in gunstore not possible to buy<br/>
		[Fixed] AI and Vehicles from convoy missions not despawning<br/>
		[Fixed] Slow respawn dialog on first spawn<br/>
		[Removed] Some more GoT2DayZ.nl references where removed<br/>
		<br/>
"
]
];

player createDiaryRecord["changelog",
[
"BushWookie",
"
<br/>
		CHANGES FOR V1.098<br/>
		[REMOVED] Clear server from scroll menu<br/>
		[ADDED] Clear server to server side scripts<br/>
		[ADDED] New Time until mission display<br/>
		[TWEAKED] AntiHack script<br/>
		[ADDED] Temp Fix for random vehicls not respawning<br/>
		[REMOVED] Proving Grounds Admin Menu<br/>
		[FIXED] Admin Menu<br/>
		[REMOVED] Usless files and uneeded files<br/>
		<br/>
		CHANGES FOR V1.097<br/>
		[TWEAKED] Car Spawning Some more<br/>
		[TWEAKED] Anti-Hack Global Announcment<br/>
		<br/>
		CHANGES FOR V1.096<br/>
		[TWEAKED] AntiHack script<br/>
		[TWEAKED] R3F Logistics<br/>
		[FIXED] Script Scan<br/>
		[FIXED] Buildings Liftable By Heli's<br/>
		[TWEAKED] Player Setup Location<br/>
		[ADDED] Color Corection<br/>
		[ADDED] Player Respawn Protection<br/>			
		<br/>
		CHANGES FOR V1.095<br/>
		[FIXED] Random Vehicle Respawn<br/>
		[TWEAKED] AntiHack script<br/>
		[FIXED] Admin menu<br/>
		[FIXED] Punish\Forgive<br/>
		[FIXED] Ulimted Missile Strikes for one puchase<br/>
		[TWEAKED] AntiHack script some more<br/>
		[FIXED] Admin Menu Again<br/>
		[FIXED] Proving Grounds aka Samatra's admin menu that 404Games stole<br/>
		[TWEAKED] Admin Player Menu<br/>
		[ADDED] bis_fnc_log<br/>
		[ADDED] Complete rewrite of the briefing.sqf<br/>
		[TWEAKED] AntiHack script a little more<br/>
		<br/>
		CHANGES FOR V1.094<br/>
		[TWEAKED] Recoil<br/>
		[TWEAKED] AntiHack script<br/>
		[ADDED] Hidden Missile Strike for $10000<br/>
		<br/>	
		CHANGES FOR V1.093<br/>
		[TWEAKED] Vehicle Cleanup Script<br/>
		[TWEAKED] Debug Monitor<br/>
		[TWEAKED] Spawn Load Out<br/>
		[FIXED] AntiHack script<br/>
		[FIXED] Night Vision and Primary Weapon<br/>
		<br/>			
"
]
];

player createDiaryRecord["changelog",
[
"SPJESTER",
"
<br/>
		CHANGES FOR V1.097<br/>
		[TWEAKED] Car Spawning<br/>
		[ADDED] More Random Vehicle Spawns<br/>
		[REMOVED] Color Correction<br/>
		[ADDED] Pipes to the spawn list<br/>	
		[ADDED] Carrier Containers to spawn list<br/>
		[ADDED] RSLO To Admin Panel<br/>
		<br/>
		CHANGES FOR V1.096<br/>
		[TWEAKED] R3F Logistics<br/>
		[ADDED] More Buildings to R3F Logistics<br/>
		[ADDED] Some Buildings Liftable By Heli's<br/>
		[FIXED] Buildings/Barriers not moving<br/>	
		<br/>
		CHANGES FOR V1.092<br/>
		[TWEAKED] ANTI-HACK SCRIPT<br/>
		[TWEAKED] SCRIPT RUN METHOD<br/>	
		[TWEAKED] ANTI-HACK SECURITY<br/>	
		[REMOVED] OLD BIS HACKER FIX<br/>
		<br/>
		CHANGES FOR V1.091<br/>
		[TWEAKED] NIGHT TIME TO SKIP BY 15MINS EVERY 1MIN<br/>
		[TWEAKED] DAY TIME TO SKIP BY 5MINS EVERY 1MIN<br/>	
		[TWEAKED] START TIME TO 5:45AM FOR FULL DAY<br/>
		<br/>
		CHANGES FOR V1.0899<br/>
		[ADDED] MORE TOWING SUPPORT<br/>
		[ADDED] MORE BARRIERS TO MOVE/SPAWN LIST<br/>		
		[ADDED] SMALL BARRACKS TO MOVE/SPAWN LIST<br/>
		[ADDED] DEFENCE TOWER TO MOVE/SPAWN LIST<br/>
		[NEWS] BASE BUILDING IMPLEMENTED<br/>
		[EDITED] UNARMED TRUCKS LOAD-IN CAPACITY<br/>
		[REMOVED] RANDOM WATER AND SACKS<br/>
		<br/>
		CHANGES FOR V1.0898<br/>
		[ADDED] FASTER NIGHT TIME by Tonic<br/>
		[TWEAKED] FASTER NIGHT TIME SETTINGS<br/>
		[FIXED] SMALL HOTFIX FOR VEHICLE RESPAWN<br/>
		<br/>
		CHANGES FOR V1.0897<br/>
		[FIXED] BACKPACKS IN GUNSTORE<br/>
		[TWEAKED] A FEW MORE SCRIPTS<br/>
		[TWEAKED] ANTI-HACK AGAIN<br/>
		[TWEAKED] RANDOM VEHICLE SPAWNER<br/>
		[CLEANED] UP SOME CODE<br/>
		[MODDED]MAX PLAYER SUPPORT 106 PLAYERS<br/>
		[HOPEFULLY]	FIXED WEAPON ADDONS DISAPPEAR<br/>
		[HALF-FIXED] ADMIN PANEL (MOSTLY WORKS)<br/>
		[SOURCE] UPDATED TO SOME NEW FIXES<br/>
		<br/>
		CHANGES FOR V1.0896<br/>
		[ADDED] BACKPACKS AND DIVER GOGGLES TO GUNSTORE<br/>
		[ADDED] HD PATCH SCRIPT (Fussion)<br/>
		[TWEAKED] WEAPON LOADOUT ITEMS<br/>
		[CONVERTED] OLDER SCRIPTS TO NEW CODE<br/>
		<br/>
		CHANGES FOR V1.0895<br/>
		[TWEAKED] FEW THINGS IN CODE<br/>
		[FIXED] HELI'S LIFT MORE/ CARS TOW MORE<br/>
		<br/>
		CHANGES FOR V1.0894<br/>
		[REMOVED] Food and Water System<br/>
		[REMOVED] Food and Water items for FPS<br/>
		<br/>
		CHANGES FOR V1.0892<br/>
		[ADDED] WEATHER AND TIME CHANGE TO ADMIN PANEL<br/>
		[FIXED] LOCAL MISSIONS NOT APPEARING<br/>
		[TWEAKED] ANTI-HACK CODE (TELLS ON THE HACKER)<br/>
		[BEGIN CONVERTING] MODS FOR THE NEW BUILD<br/>	
        <br/>
		CHANGES FOR V1.089<br/>
		[ADDED] BIS CLEAR/RECOMPILE FUNCTION<br/>
		[ADDED] IMPROVED ANTI-HACK SYSTEM<br/>	
		[MOVED] MOST SCRIPTS TO BEGINNING TO LOAD FASTER<br/>
		[FIXED] WEATHER/FOG TAKING A FEW TO START<br/>
		[TWEAKED] THE FOG TO BE A LITTLE LESS AGRESSIVE<br/>
		[TWEAKED] SOME ANTI-HACK SETTINGS<br/>
		[TWEAKED] DEFAULT VIEWDISTANCE<br/>
		[CHANGED] SOME OBSOLETE CODE PREPING FOR UPDATE<br/>	
		[CHANGED] LABELING, THIS IS NOW THE FULL RELEASE<br/>
		[CHANGED] START TIME TO 12AM<br/>
		<br/>
		CHANGES FOR V1.088<br/>
		[ADDED] GPS to BluFor and Opfor<br/>
		[ADDED] TAW VIEW DISTANCE MOD<br/>
		[FIXED] FOOD LEVELS<br/>		
		[FIXED] SCRIPT MENU IN WAY ALL THE TIME<br/>
		[FIXED] SCRIPT MENU ON TOP OF ALL<br/>
		[ATTEMPT-FIX] BIS HACKER MESSAGE<br/>		
		[CHANGED] WEAPON LAYOUTS<br/>
		[CHANGED] RESPAWN TIMER TO 10SEC<br/>		
		<br/>
		CHANGES FOR V1.087<br/>
		[FIXED] BOATS BEING BEACHED ON SHORELINE/ROCK<br/>
		[FIXED] SOME TEAMS SPAWNING AND BEING STUCK<br/>
		[EDITED] FOOD AND WATER LEVELS TO 200 LIKE MONEY<br/>
		[TWEAKED] START TIME TO 9AM FOR A NORMAL DAY<br/>
		[TWEAKED] OVERCAST TO BE LOWER.<br/>
		[ADDED] NV GOGGLES ON SPAWN INVENTORY FOR ALL<br/>
		[ADDED] BINOCULARS ON SPAWN FOR ALL<br/>
		<br/>
		CHANGES FOR V1.0869<br/>
		[ADDED] SDAR FOR ALL CLASSES ON SPAWN<br/>
		<br/>
		CHANGES FOR V1.0868<br/>
		[FIXED] ALL REPAIR POINTS NOW CAN ABORT<br/>
		[CLEANED] ALL REPAIR POINTS RE-ENTERED IN ORDER<br/>		
		[MOVED] SOME REPAIR POINTS AT RUNWAY<br/>				
		[REMOVED] BOAT REPAIR AREAS (HANDLING IS STUPID)<br/>		
		<br/>
		CHANGES FOR V1.0867<br/>
		[FIXED] A FEW VEHICLE SPAWNS<br/>
		[FIXED] RANGE ON REPAIR ZONES<br/>			
		[LOWERED] RANGE ON VEHICLE REPAIR<br/>			
		[FIXED] REPAIR ZONES NOT HAVING A HELI PAD<br/>			
		[MOVED] HELI PADS TO ENDS OF RUNWAY<br/>
		[REMOVED] ADMIN STUFF FROM SERVER FILE<br/>				
		<br/>
		CHANGES FOR V1.0866<br/>
		[ADDED] Dynamic Random Weather<br/>
		[ADDED] Auto Vehicle Respawner<br/>
		[ADDED] Generic Vehicle Service<br/>
		[ADDED] Generic Vehicle Service ZONES (On Map)<br/>
		[ADDED] A Few more Vehicles in Useful locations<br/>
		[FIXED] How many Medkits and Toolkits Spawn<br/>
		[FIXED] Vehicle Zone Repair and Zone size<br/>
		[FIXED] Renamed Things in Briefing Menu<br/>
		[EDITED] Teams Seperated While spawning On the Island<br/>
		[ROTATED] Most vehicles to face the right direction<br/>
		[UPDATED] SOURCE FILES TO GoT's 1.08d/ See Changelog<br/>
		[ADDED] Heli Pad Spawns for Choppers (Repair Points Also)<br/>
		[REVERTED] Weather Rotates Every Half Hour<br/>			
		<br/>
		CHANGES FOR V1.0862<br/>
		[REMOVED] Vehicle Speedup Hack (Caused problems)<br/>
		[ADDED] Gun StoreLayout Save/Load Support<br/>
		[ADDED] More Scope's and useful Items in Script<br/>		
		[EDITED] Renamed Script Menu to Script Menu<br/>
		[FIXED] Weather Rotates Hourly<br/>				
		<br/>
		[Added] More Vehicle Spawns.<br/>
		[Added] Weapon Loadout Save Menu.<br/>
		[Added] Custom Server Script Menu.<br/>
		(Remove Grass for better FPS, etc.)<br/>
		[Added] Ammo Boxes and Extras at bases, etc.<br/>
		[Fixed] A few personal bad Vehicle spawns<br/>
		[Changed] How a few things were worded<br/>
		[Redid] Completely Redid the Vehicles and Weapon locations.<br/>
		[Hopefully] Mostly Fixed the super slow load time.<br/>
		[Hopefully] Fixed a Hunter error message.<br/>
		[ADDED] 10-SECOND Vehicle Spawn Timer.<br/>
		[ADDED] 10-SECOND Vehicle Spawn Timer.<br/>
		[ADDED] 5-SECOND Inventory Spawn Timer.<br/>
		[FIXED] Scroll Menu Constantly on Main Screen<br/>
		[FIXED] Font Error in Simple Debug Script<br/>		
		[SOURCE] REBUILT FROM LATEST SOURCE CODE<br/>
		[REMOVED] Unused Units section from Script<br/>
		[REMOVED] Vest, Clothing, Helmets from Ammoboxes<br/>
		( ^^ FIXED HUNTER ERROR)<br/>
		[FIXED] NVGoggles as Item at GunStores<br/>
		[FIXED] Weather, and for it to be Sunny<br/>
		<br/>

"
]
];

player createDiaryRecord["changelog",
[
"BUG TRACKER",
"
<br/>
		CURRENT BUGLIST:<br/>
		[-]CARS EXPLODING ON FIRST SPAWN<br/>
		[*LET ME KNOW IF FOUND MORE* -SPJESTER]<br/>
		<br/>
"
]
];

player createDiaryRecord["ultimate_wasteland",
[
"Credits",
"
<br/>
	404 Team:<br/>
	Deadbeat<br/>
	Costlyy<br/>
	Pulse<br/>
	Domuk<br/><br/><br/>
	Others:<br/>
	Sanjo (GitHub)<br/>
	Tonic-_- (BIS-forums)<br/><br/>
	Server Mission Scripter:<br/>
	SPJESTER<br/>
	Bush Wookie<br/>
	<br/>
"
]
];

player createDiaryRecord["serverinfo",
[
"What is Ultimate Wasteland ?",
"
<br/>
	Ultimate Wasteland is a heavily modified version of GoT Wasteland<br/><br/>
	Originaly Based of 404 wasteland witch was based of Tonic's wasteland<br/>
	The GoT Team took 404Games version of wasteland and improved on it<br/>
	Then SPJESTER took GoT's version and made vast modifications and improvements<br/>
	Then Bush Wookie came along and helped out with scripts and antihacks<br/>
	Now SPJESTER and Bush Wookie are working togeather to bring you the best version of wasteland<br/>
	All credit goes to TAW Tonic aka Tonic-_- for the original mission style and design<br/>
	<br/>
"
]
];

player createDiaryRecord["serverinfo",
[
"Contact Admin",
"
<br/>
	If any problems, Contact a Administrator<br/>
	(You can view them in the server information)<br/>
	-Mission Bugs:SPJESTER (Email:mhowell34@gmail.com)

"
]
];

player createDiaryRecord["serverinfo",
[
"Comunity Forum",
"
<br/>
	Whats up guys the devs of the server have<br/>
	been working there asses off to keep the<br/>
	server bug free and now they have set up a<br/>
	comunity forum where you can go and share<br/>
	your experiance on the server and report bugs<br/>
	so go check it out at http://Obliviousgaming.com<br/>
"
]
];