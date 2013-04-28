waitUntil {!isNull player && isPlayer player};

player createDiarySubject ["404games", "404 Info"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["serverinfo", "Server Info"];

player createDiaryRecord["changelog",
[
"1.01(404)",
"
<br/>
		[Fixed] - Gun Stores<br/>
		[Fixed] - Missions<br/>
		[Fixed] - General UI<br/>
		[Fixed] - Lots of other fixes<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.02(404)",
"
<br/>
		[Fixed] - Respawning Vehicles<br/>
		[Fixed] - Deserted Vehicles (20Mins)<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.03(404)",
"
<br/>
		[Added] - Light Armed Vehicle Mission (All armed cars).<br/>
		[Removed] - All armed cars from initial spawn for balance.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.05(404)",
"
<br/>
		[Added] Uniforms,Hats and Vests to the gunstore.<br/>
		[Added] Players now spawn with a backpack.<br/>
		[Fixed] Not able to get weapons out of vehicle.<br/>
		[Fixed] R3F Loading into vehicles.<br/>
		[Fixed] Gunstore locations so they can't be ran down by vehicles.<br/>
		[Fixed] Health Icon.<br/>
		[Fixed] Static helicopter spawning and no more explosions.<br/>
		[Fixed] Weapon crates can now be loaded into vehicles.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.06(404)",
"
<br/>
		[Fixed] Fix to make Ammo boxes moveable.(thanks to meat147).<br/>
		[Fixed] missing disabled color for money input error.(thanks to Sanjo).<br/>
		[Fixed] NV Goggles in cars and boxes.(thanks to Sanjo).<br/>
		
"
]
];

player createDiaryRecord["changelog",
[
"1.07(GoT)",
"
<br/>
		[Fixed] Fixed the Sound Counter error on first spawn.<br/>
		[Fixed] Re-Added the LightArmed-Vehicle mission.<br/>
		[Fixed] Fixed the description issue for the LightArmed-Vehicle mission.<br/>
		[Removed] Scaffolding and other useless objectspawns to improve ability to build bases.<br/>
		[Changed] Starting money to 200.<br/>
		[Changed] Added our own strings and some other changes.<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.08d(GoT)",
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
"1.086(SPJESTER)",
"
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
		<br/>
		CHANGES FOR V1.0862<br/>
		[REMOVED] Vehicle Speedup Hack (Caused problems)<br/>
		[ADDED] Gun Store Layout Save/Load Support<br/>
		[ADDED] More Scope's and useful Items in Script<br/>		
		[EDITED] Renamed Script Menu to Script Menu<br/>
		[FIXED] Weather Rotates Hourly<br/>				
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
		CHANGES FOR V1.0867<br/>
		[FIXED] A FEW VEHICLE SPAWNS<br/>
		[FIXED] RANGE ON REPAIR ZONES<br/>			
		[LOWERED] RANGE ON VEHICLE REPAIR<br/>			
		[FIXED] REPAIR ZONES NOT HAVING A HELI PAD<br/>			
		[MOVED] HELI PADS TO ENDS OF RUNWAY<br/>
		[REMOVED] ADMIN STUFF FROM SERVER FILE<br/>				
		<br/>
		CHANGES FOR V1.0868<br/>
		[FIXED] ALL REPAIR POINTS NOW CAN ABORT<br/>
		[CLEANED] ALL REPAIR POINTS RE-ENTERED IN ORDER<br/>		
		[MOVED] SOME REPAIR POINTS AT RUNWAY<br/>				
		[REMOVED] BOAT REPAIR AREAS (HANDLING IS STUPID)<br/>		
		<br/>
		CHANGES FOR VV1.089<br/>
		[ADDED] SDAR FOR ALL CLASSES ON SPAWN<br/>
		<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.087(SPJESTER)",
"
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
"
]
];

player createDiaryRecord["changelog",
[
"1.088(SPJESTER)",
"
<br/>
		CHANGES FOR V1.089<br/>
		[ADDED] GPS to BluFor and Opfor<br/>
		[ADDED] TAW VIEW DISTANCE MOD<br/>
		[FIXED] FOOD LEVELS<br/>		
		[FIXED] SCRIPT MENU IN WAY ALL THE TIME<br/>
		[FIXED] SCRIPT MENU ON TOP OF ALL<br/>
		[ATTEMPT-FIX] BIS HACKER MESSAGE<br/>		
		[CHANGED] WEAPON LAYOUTS<br/>
		[CHANGED] RESPAWN TIMER TO 10SEC<br/>		
		<br/>
"
]
];

player createDiaryRecord["changelog",
[
"1.089(SPJESTER)",
"
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
		"
]
];

player createDiaryRecord["404games",
[
"Credits",
"
<br/>
	404 Team:<br/>
	Deadbeat<br/>
	Costlyy<br/>
	Pulse<br/>
	Domuk<br/><br/>
	
	Others:<br/>
	*Sanjo (GitHub)<br/>
	<br/>*Convoy MainMission<br/>
	*Tonic-_- (BIS-forums)<br/>
	*helped disabling r3f on mapbound items<br/><br/>
	
	Server Mission Scripter:<br/>
	SPJESTER<br/>
	<br/>
"
]
];

player createDiaryRecord["serverinfo",
[
"Who what where?",
"
<br/>
	What is the GoT2DayZ script and why are you hosting Arma3?<br/><br/>
	GoT2DayZ was initially founded as a player-base for the dutch Tweakers.NET Community<br/>
	However as time passed on we also started playing wasteland on arma2.<br/>
	Now with arma3 also having wasteland, we run 3 publics and 1 private server.<br/>
	<br/><br/>
	* DayZ Chernarus (Private/Passworded) with safezone<br/>
	* DayZ Celle (Whitelisted)<br/>
	* ArmA2 Wasteland on Utes (Customized by us)<br/>
	* ArmA3 Alpha Wasteland on Stratis (Costomized by us)<br/>
	<br/>
	I cant urge enough that all credits for this mission go to the original makers at 404Games!<br/>
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
"Credits",
"
<br/>
	Hosting and mod edits:<br/><br/>
	-JoSchaap<br/>
	-Anyone who files issues or pull requests on the GiT's<br/>
	-SPJESTER / Server Editing, Vehicle Spawns and Crates<br/>

"
]
];
