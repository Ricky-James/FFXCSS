state("FFX")
{
    short roomNumber: "FFX.exe", 0xD2CA90;
    short storyline: "FFX.exe", 0xD2D67C;
    short spawnPoint: "FFX.exe", 0xD2CA9C;    
    
    short intro: "FFX.exe", 0x922D64;

    short input: "FFX.exe", 0x8CB170;
    float xCoords: "FFX.exe", 0xF25D80;
    float yCoords: "FFX.exe", 0xF25D78;
    byte camera: "FFX.exe", 0xD3818C;

    byte fade: "FFX.exe", 0xF3080C;
    byte menu: "FFX.exe", 0xF407E4;
    int HP_Enemy_A: "FFX.exe", 0xD34460, 0x5D0;

    int battleState: "FFX.exe", 0xD2C9F0;
    sbyte gameState: "FFX.exe", 0xD381AC; // -1 Loading screen, 0 = open world, 1 = cutscene, 2 = battle

    byte movementLock: "FFX.exe", 0xF25B63;
    byte musicID: "FFX.exe", 0xF2FF1C;
    float cameraRot: "FFX.exe", 0x8A858C;
    byte cutsceneAlt: "FFX.exe", 0xD27C88;

    byte airshipDestinations: "FFX.exe", 0xD2D710;
    short auronOverdrives: "FFX.exe", 0xD307FC;
    byte7 partyMembers: "FFX.exe", 0xD307E8;

    byte guado_count: "FFX.exe", 0x00F2FF14, 0x120;
}


startup
{

    // START OF ZANARKAND

	// Putting a tooltip so you can see if the file is loading
	settings.Add("check", true, "Code compiled!");
	
    // Arrays are { room_0, story_0, room_1, story_1, spawn_1 }
	vars.arrayRS = new short[,]{	{ 348, 0, 23, 0, 0},            //Skip Intro
                                    // START OF ZANARKAND
                                    { 132, 0, 368, 3, 0 },          // Zanarkand - Beginning
                                    { 376, 4, 376, 5, 0 },          // Zanarkand - Tidus looks at Jecht sign
                                    { 371, 5, 370, 7, 0 },          // Tidus navigates through the crowd and Blitzball FMV
                                    { 366, 8, 389, 12, 0 },         // Zanarkand - Tidus sees the fayth and follows Auron
                                    { 389, 14, 389, 15, 0 },        // Sinspawn Ammes?
                                    { 367, 16, 367, 18, 0 },        // Zanarkand - Tidus sees Jecht sign again
                                    { 385, 20, 48, 30, 0 },         // Zanarkand - A dream of being alone
                                    // END OF ZANARKAND
                                    // START OF BAAJ TEMPLE
                                    { 48, 30, 48, 42, 0 },          // Tidus wakes up
                                    { 50, 48, 50, 50, 0 },          // Tidus in a collapsed corridor
                                    { 63, 50, 63, 52, 0 },          // Tidus needs fire
                                    { 165, 55, 63, 55, 0 },         // Tidus has a dream about Auron
                                    { 71, 60, 71, 66, 0 },          // Tidus wakes up
                                    { 64, 70, 64, 74, 0 },          // They enter the submerged ruins
                                    // END OF BAAJ TEMPLE
                                    // START OF BESAID
                                    { 67, 124, 69, 130, 0 },        // Wakka explains his life story
                                    { 84, 134, 84, 136, 0 },        // Tidus enters the temple
                                    { 191, 152, 145, 154, 0 },      // Tidus dreams about a flashback
                                    { 42, 170, 42, 172, 0 },        // The gang leave the cloister of trials
                                    { 68, 184, 60, 200, 0 },        // Tidus sleeping, FMV and chat with Wakka
                                    { 17, 200, 69, 210, 515},       // Yuna says goodbye to Besaid
                                    { 67, 210, 67, 214, 0 },        // Yuna says goodbye to Besaid again
                                    // END OF BESAID
                                    // START OF SS LIKI
                                    { 301, 220, 301, 228, 256 },    // Tidus goofing around
                                    // END OF SS LIKI
                                    // START OF KILIKA
                                    { 43, 292, 43, 294, 0 },        // Undocking in Kilika
                                    { 152, 300, 152, 302, 0 },      // Tidus wakes up
                                    { 18, 308, 18, 312, 0 },        // Camera pan in Kilika Woods
                                    { 65, 315, 65, 322, 0 },        // Race up the stairs
                                    { 78, 328, 78, 330, 1 },        // Arrival at temple
                                    { 96, 330, 96, 335, 0 },        // Camera pan in Kilika Temple
                                    // END OF KILIKA
                                    // START OF SS WINNO
                                    { 94, 370, 167, 372, 0 },       // Opening scenes
                                    // END OF WINNO
                                    // START OF LUCA
                                    { 121, 508, 88, 514, 0 },       // Aurochs win the game
                                    // END OF LUCA
                                    // START OF MI'IHEN
                                    { 95, 730, 95, 750, 0 },         // Tidus runs up the stairs
                                    { 58, 750, 58, 734, 0 },         // Reset it back to avoid a sequence break!
                                    { 112, 755, 171, 760, 0 },       // Tidus chats with Yuna
                                    // END OF MI'IHEN
                                    // START OF MUSHROOM ROCK ROAD
                                    { 79, 787, 79, 825, 0 },        // Tidus distrusts Seymour
                                    { 247, 899, 131, 845, 3 },      // Tuna Summon
                                    { 218, 902, 131, 928, 3 },      // Chasing after Sin
                                    // END OF MRR
                                    // START OF DJOSE HIGHROAD
                                    { 93, 960, 93, 962, 0 },        // Leave MRR -> Djose
									{ 76, 962, 76, 990, 0 },        // Djose -> Trials
									{ 214, 990, 214, 995, 0 },      // Trials -> Chamber
									{ 161, 1010, 161, 1032, 0 },    // Wake Yuna -> Moonflow
									{ 105, 1032, 105, 1045, 0 },    // Moonflow/Shoopuff
									{ 291, 1045, 99, 1060, 0 },     // Pre-Extractor
									{ 291, 1060, 236, 1070, 0 },    // Post-Extractor
									{ 189, 1070, 189, 1085, 0},     // Remove Rikku's appearance
									//{ 141, 1104, 163, 1126, 1 },    // Seymour's Room to Farplane
									//{ 163, 1126, 163, 1190, 0 },    // Skip Farplane
                                    { 213, 1156, 213, 1300, 0 },     // Farplane Cutscenes
                                    { 257, 1300, 135, 1300, 2 },    // Skip Guadosalam Exit
									{ 264, 1315, 263, 1418, 0 }     // Inn Sleep
									};
    // Not skipped:
    // Ixion fayth room, B&Y, Rikku/Lightning

    // Arrays are {HP, story_0, room_1, story_1, spawn_1}
    vars.bossRS = new int[,]{       {12000, 1420, 221, 1480, 2}, // Spherimorph
                                    {16000, 1485, 192, 1504, 1}, // Crawler
                                    {1200, 1570, 54, 1600, 0},   // Wendigo (Guard)
                                    {12000, 1704, 129, 1715, 0}, // Bikanel Zu
                                    {70000, 2555, 285, 2585, 2}  // Flux */
                                    };
    vars.boss_fight = -1;
}

update
{
    //// For testing spawn points:
    //game.WriteValue(modules.First().BaseAddress+0xF3080C, 0); // Force Load
    //game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 7); // Spawn Point
    //game.WriteValue(modules.First().BaseAddress+0xD2CA90, 191); // Area
    //game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1612);

    // End any battle by holding start + select
    if (current.input == 2304 && current.battleState == 10)
    {
        game.WriteValue(modules.First().BaseAddress+0xD2C9F0, 778);
    } 

    // Soft reset by holding L1 R1 L2 R2 + Start
    if(current.input == 2063 && current.battleState != 10)
    {
        print("Soft reset");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 23);
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1);
    }

    if (current.roomNumber == 348)
    {
        print("Skip Intro");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 23);
    }

    // TO DO Speak to kids -- Leave this in so we can name Tidus?

    if (current.roomNumber == 368 && current.storyline == 3 && current.menu == 1)
    {
        // Fangirls or kids skip. (whichever is 2nd)
        game.WriteValue(modules.First().BaseAddress+0xD2CE7C, 3); 
    }

    if (current.roomNumber == 368 && current.storyline == 3 && current.intro == 4096)
    {
        print("Zanarkand - Speak to kids");
        game.WriteValue(modules.First().BaseAddress+0x922D64, 188416);
    }
     if (current.roomNumber == 368 && current.storyline == 4)
    {
        print("Zanarkand - Tidus leaves fans");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 376); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 5); //Cutscene ID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }
    
    // TO DO Tidus speaks to Auron
    // TO DO Post Sinscales battle
    // TO DO Pre Tanker battle
    // TO DO Post Tanker battle?
    // TO DO Sin absorbs Tidus FMV
    // TO DO Tidus wakes up inside Sin
    // TO DO Tidus thoughts before Baaj Temple
    // TO DO - Tidus spawns standing and not swimming
    // TO DO Tidus falls down
    // TO DO Tidus fights some sahagins
    // TO DO Geogaesno arrives
    // TO DO Escape from Geogaesno
    // TO DO Tidus makes fire
    // TO DO Fire goes out and Klikk arrives
    // TO DO Rikku arrives during Klikk fight
    // TO DO Rikku punches Tidus
    // TO DO Sphere grid tutorial?
    // TO DO Rikku explains mission
    // TO DO Tidus bashes the console
    // TO DO Tidus bashes the machine and Tros arrives
    // TO DO They leave the submerged ruins
    // TO DO Lights come on in the submerged ruins
    // TO DO Airship is shown
    // TO DO Baaj Temple - Tidus gets back onto boat
    // TO DO Rikku suggests going to Luca
    // TO DO Tidus contemplates time travel + Sin
    // TO DO Tidus meets Wakka
    // TO DO Tidus asks Wakka about Zanarkand
    // TO DO Wakka says Hey it's this way
    // TO DO Wakka pushes Tidus
    // TO DO Wakka asks Tidus to join his team
    // TO DO Tidus arrives at Besaid Village
    // TO DO Priest enters Wakka's tent
    // TO DO Tidus goes back to the temple
    // TO DO Wakka catches up with Tidus in trials
    // TO DO Tidus meets Lulu and Kimarhi + FMV
    // TO DO Valefor summon
    // TO DO Tidus monologue after naming
    // TO DO Tidus speaks to Yuna
    // TO DO Kimahri FMV
    // TO DO Post-Kimahri battle
    // TO DO SS Liki departs
	
	// Roosta's additions, beginning post-Gui
	// Add Rikku to the party
	byte temp;
	if(current.roomNumber == 109 && old.roomNumber == 189)
	{
		temp = 6;
		game.WriteValue(modules.First().BaseAddress+0xD2D67C+0x3170, temp);
		temp = 0;
		game.WriteValue(modules.First().BaseAddress+0xD2D67C-0xB1B, temp);
		temp = 11;
		game.WriteValue(modules.First().BaseAddress+0xD2D67C+0x3170+0x1C14, temp);
	}
	
	// Loop for going over skip array
	short sVal;
	for(int i = 0; i < vars.arrayRS.GetLength(0); i++)
	{
		if(current.roomNumber == vars.arrayRS[i, 0] && current.storyline == vars.arrayRS[i, 1])
		{
			sVal = vars.arrayRS[i, 2];
			game.WriteValue(modules.First().BaseAddress+0xD2CA90, sVal);

			sVal = vars.arrayRS[i, 3];
			game.WriteValue(modules.First().BaseAddress+0xD2D67C, sVal);

            sVal = vars.arrayRS[i, 4];
			game.WriteValue(modules.First().BaseAddress+0xD2CA9C, sVal);

			print("Skipping from arrayRS!");
		}
	}

    // Loop for going over boss array
    //{12000, 1420, 221, 1470, 2}
    int iVal;
    for(int i = 0; i < vars.bossRS.GetLength(0); i++)
	{
        // Set boss_fight to be true if you enter a boss fight
		if(current.HP_Enemy_A == vars.bossRS[i,0] && current.storyline == vars.bossRS[i,1])
		{
			vars.boss_fight = i;
		}

        if(vars.boss_fight == i && current.menu == 0 && old.menu == 1)
        {
            iVal = vars.bossRS[i, 2];
            game.WriteValue(modules.First().BaseAddress+0xD2CA90, iVal); // Set the zone
            
            iVal = vars.bossRS[i, 3];
            game.WriteValue(modules.First().BaseAddress+0xD2D67C, iVal); // Set the story
            
            iVal = vars.bossRS[i, 4];
            game.WriteValue(modules.First().BaseAddress+0xD2CA9C, iVal); // Set the spawn
            
            game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); // Force a fade
            
            vars.boss_fight = -1;
        }
	}

    // Guadosalam
    if(current.roomNumber == 141 & current.guado_count == 0)
    {
        var deepPtr = new DeepPointer("FFX.exe", 0x00F2FF14, 0x120);
        IntPtr ptr;
        if(!deepPtr.DerefOffsets(game, out ptr))
            throw new Exception("Couldn't read the pointer path.");
        game.WriteValue(ptr, 4);
    }
    if(current.guado_count == 5 && old.guado_count == 4)
    {
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 163); // Set the zone
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1156); // Set the story
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); // Set the spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); // Force a fade
    }
    if(current.storyline == 1310 && old.storyline == 1300)
    {
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 256); // Set the zone
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1310); // Set the story
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); // Force a fade
    }

    // HIGHBRIDGE
    if (current.roomNumber == 208 && current.storyline == 2220)
    {
        print("Enter Highbridge");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 208);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2275);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2);
    }

    if (current.roomNumber == 183 && current.storyline == 2290)
    {
        // 0:35
        print("Natus Death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 183);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2300);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0);
    }
    
    if (current.roomNumber == 206 && current.storyline == 2300)
    {
        print("Lake skip");
        current.cutsceneFlag = 1;
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 177);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2385);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1);
    }

    // CALM LANDS

    if (current.roomNumber == 223 && current.storyline == 2385)
    {
        print("Calm lands intro");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2400);

        //Sunken cave cutscenes (gorge + entry. Set 32 for gorge only)
        game.WriteValue(modules.First().BaseAddress+0xD2CD09, 36);
    }

    if (current.roomNumber == 279 && current.storyline == 2420)
    {
        //Defender X death
        
        //Check position is high enough (over the bridge) + Movement is locked
        if(current.xCoords > 250.0f && current.movementLock == 48)
        {
            print("Yuna skip + Kelk");
            
            game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
            game.WriteValue(modules.First().BaseAddress+0xD2CA90, 259); //Area
            game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force Load
            game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2510); //Story
 
        }
    }

    // GAGAZET
    if(current.roomNumber == 259 && current.storyline == 2510 && current.cutsceneAlt == 70)
    {
        print("Ronso death + Ronso singing");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2530);
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force Load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
    }

    
    //TODO: Add back in the flashback movement

    if (current.roomNumber == 285 && current.storyline == 2555)
    { 
        print("Flux to Sanctuary Keeper");
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2585); //Cutscene ID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
    }

    if (current.roomNumber == 311 && current.storyline == 2625)
    {
        print("Sanc Keeper dead -> Zanarkand Trials");
        
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 361); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2767); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
    }
    
    if (current.roomNumber == 318 && current.storyline == 2790)
    {
        print("Sanc Keeper Dead -> Pre-Yunalesca");
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2815);
    }

    if (current.roomNumber == 270 && current.storyline == 2835)
    {
        print("Post-Yunalesca -> Pre-Airship");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2850); //CutsceneID
    }

    // Camera pans to look at Sin
    
    if (current.roomNumber == 315 && current.storyline == 2850)
    {
        print("Zanarkand -> Airship");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 194); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2900); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
    }

    if (current.roomNumber == 211 && current.storyline == 2900 && current.xCoords == -9.918679f)
    {
        print("Yuna/Kimahri dialogue");
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 7); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2915); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    // HIGHBRIDGE

    if (current.roomNumber == 208 && current.storyline == 2220)
    {
        print("Enter Highbridge");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 208);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2275);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2);
    }

    if (current.roomNumber == 183 && current.storyline == 2290)
    {
        print("Natus Death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 183);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2300);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0);
    }

    if (current.roomNumber == 206 && current.storyline == 2300 && current.cutsceneAlt == 128)
    {
        print("Lake skip");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 177); // AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2385); // CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); // Force Load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); // Spawn Point
    }

    // CALM LANDS

    if (current.roomNumber == 223 && current.storyline == 2385)
    {
        print("Calm lands intro");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2400);

        //Sunken cave cutscenes (gorge + entry. Set 32 for gorge only)
        game.WriteValue(modules.First().BaseAddress+0xD2CD09, 36);
    }

    if (current.roomNumber == 279 && current.storyline == 2420)
    {
        //Defender X death
        //Check position is high enough (over the bridge) + Movement is locked
        if(current.xCoords > 250.0f && current.movementLock == 48)
        {
            print("Yuna talks on bridge + Kelk");
            game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
            game.WriteValue(modules.First().BaseAddress+0xD2CA90, 259); //Area
            game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force Load
            game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2510); //Story
        }
    }

    // GAGAZET
    if(current.roomNumber == 259 && current.storyline == 2510 && current.cutsceneAlt == 70) //Other cutscene address
    {
        print("Ronso singing");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2530); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force Load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
    }

    //TODO: Add back in the flashback movement

    if (current.roomNumber == 285 && current.storyline == 2555)
    { 
        print("Flux to Sanctuary Keeper");
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2585); //Cutscene ID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
    }

    if (current.roomNumber == 311 && current.storyline == 2625)
    {
        print("Sanc Keeper dead -> Zanarkand Trials");
        
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 311); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2680); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
    }

    if (current.roomNumber == 132 && current.storyline == 2700)
    {
        print("Zanarkand campfire songs");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 363); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2767); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
    }
    

    if (current.roomNumber == 318 && current.storyline == 2790)
    {
        print("Sanc Keeper Dead -> Pre-Yunalesca");
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2815); //Cutscene ID
    }

    if (current.roomNumber == 270 && current.storyline == 2835)
    {
        print("Post-Yunalesca -> Pre-Airship");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2850); //CutsceneID
    }

    // Camera pans to look at Sin
    
    if (current.roomNumber == 315 && current.storyline == 2850)
    {
        print("Zanarkand -> Airship");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 194); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2900); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
    }

    if (current.roomNumber == 211 && current.storyline == 2900 && current.xCoords == -9.918679f)
    {
        print("Yuna/Kimahri dialogue");
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 7); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2915); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2D710, 2048); //Unlock Highbridge
    }

    //Cutscene 2910 -> 2915 not currently skipped as it unlocks Highbridge
    
    if (current.roomNumber == 208 && current.storyline == 2920 && current.cutsceneAlt == 90)
    {
        print("Highbridge return -> Airship");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 255); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 2970); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xD2D710, 2560); //Unlock "Sin" destination
    }

    if (current.roomNumber == 255 && current.storyline == 2990)
    {
        print("Airship -> Sin");
        // TODO: Fix spawn such that you spawn in the corridor.
        // Had issues implementing this due to a problem with the camera
        // The corridor screen is actually 1 screen with 1 AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 211); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3010); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    // SHHHHIN

    if (current.roomNumber == 277 && current.storyline == 3010)
    {
        print("Left Fin");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 199); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3085); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 200 && current.storyline == 3100)
    {
        print("Right fin death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 201); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3105); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 201 && current.storyline == 3120)
    {
        print("Core death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 374); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3125); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
    }

    // TODO: Not working
    //Check if far enough left on the deck, and for X input (fake "talk" to Yuna)
    if (current.roomNumber == 202 && current.storyline == 3125 && current.xCoords < 5f && current.input == 32)
    {
        print("Pre-OD Sin Yuna monologue");
        // TODO: Same as Airship -> Sin. This cutscene spawns you in the corridor.

        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 374); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3135); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
    }

    // INSIDE SIN

    if (current.roomNumber == 204 && current.storyline == 3210)
    {
        print("Omnis dead");
        // Ensures meteorite is already fallen
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3250); //CutsceneID
    }

    if (current.roomNumber == 325 && current.storyline == 3300 && current.cutsceneAlt == 71)
    {
        print("BFA Death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 326); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3360); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load

    }

    // MACALANIA
    // Note: Just adding to the bottom so the skips being added in a sort of chronological order
    // To me this makes more sense

    if (current.roomNumber == 221 && current.storyline == 1413)
    {
        print("Open room to Spherimorph by default");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 221); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1420); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.storyline == 1470 && current.auronOverdrives == 11553)
    {
        print("Post-Spherimorph SS unlock");
        game.WriteValue(modules.First().BaseAddress+0xD307FC, 11569); //Unlock shooting star
    }

    if (current.roomNumber == 106 && current.storyline == 1504)
    {
        print("Jysscal skip");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1530); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 80 && current.storyline == 1545)
    {
        print("Backflip skip + Tromell sphere smash skip");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1557); //CutsceneID
    } 

    if (current.roomNumber == 49 && current.storyline == 48)
    {
        print("Baaj Temple - Escape from Geogaesno");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 50); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 50); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 63 && current.storyline == 54)
    {
        print("Baaj Temple - Tidus makes fire");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 55); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 63 && current.storyline == 58)
    {
        print("Baaj Temple - Rikku punches Tidus");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 71); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 66); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 72 && current.storyline == 514)
    {
        print("Luca - Wakka is injured");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 518); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1797); //Spawn
    }

    if (current.roomNumber == 72 && current.storyline == 520)
    {
        print("Luca - Lulu speaks to Wakka");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 124); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 535); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 72 && current.storyline == 540)
    {
        print("Luca - Halftime talk");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 347); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 560); //CutsceneID
    }

    if (current.roomNumber == 250 && current.storyline == 565)
    {
        print("Luca - Wakka chants");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 124); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 575); //CutsceneID
    }

    if (current.roomNumber == 250 && current.storyline == 582)
    {
        print("Luca - Aurochs win/lose the game");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 125); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 583); //CutsceneID
    }

    if (current.roomNumber == 57 && current.storyline == 588)
    {
        print("Luca - Lulu what's happening");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 600); //CutsceneID
    }

    if (current.roomNumber == 104 && current.storyline == 610)
    {
        print("Luca - Wakka quits the Aurochs");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 89); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 617); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xD321B0, (byte)17); //Enable Auron
        // Bit far from the centre of the dock, have to run far for the chests
    }

    if (current.roomNumber == 53 && current.storyline == 294 && old.gameState == 1 && current.gameState == 0)
    { // Weird, the gameState has flipped for this cutscene, so need to check if it's changed from 1 to 0
        print("Kilika - Sending");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 152); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 304); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 16 && current.storyline == 304 && current.gameState == 1)
    {
        print("Kilika - Tidus speaks to Wakka");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 308); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 65 && current.storyline == 326 && old.gameState == 0 && current.gameState == 1)
    {
        print("Kilika - No replacement for Chappu");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 78); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 328); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 78 && current.storyline == 348 && old.gameState == 0 && current.gameState == 1)
    {
        print("Kilika - Tidus misses home");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 18); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 360); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 45 && current.storyline == 340)
    {
        print("Kilika - The guardians are annoyed at Tidus");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 346); //CutsceneID
    }

    if (current.roomNumber == 16 && current.storyline == 360 && old.gameState == 0 && current.gameState == 1)
    {
        print("Kilika - They set off to Luca");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 94); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 370); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 256); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 94 && current.storyline == 380 && old.gameState == 1 && current.gameState == 0)
    {
        print("S.S. Winno - Eavesdropping on Lulu and Wakka");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 380); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 94 && current.storyline == 395 && old.gameState == 1 && current.gameState == 0)
    {
        print("S.S. Winno - Tidus speaks to Yuna");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 267); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 425); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 2); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 268 && current.storyline == 427 && old.gameState == 0 && current.gameState == 1)
    {
        print("Luca - Seymour arrives");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 355); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 430); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 72 && current.storyline == 430 && old.gameState == 1 && current.gameState == 0)
    {
        print("Luca - Yuna enters the changing room");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 440); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1797); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 72 && current.storyline == 440 && old.gameState == 1 && current.gameState == 0)
    {
        print("Luca - Speaking to the Al Bhed");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 123); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 450); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 4); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 77 && current.storyline == 450)
    {
        print("Luca - Crowd mob Yuna");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 455); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn
    }

    if (current.roomNumber == 159 && current.storyline == 455)
    {
        print("Luca - Tidus and Yuna go to the cafe");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 77); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 492); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1); //Spawn

        game.WriteValue(modules.First().BaseAddress+0xD3211C, 16); //Disable Yuna
        game.WriteValue(modules.First().BaseAddress+0xD322D8, 16); //Disable Wakka      

        game.WriteBytes(modules.First().BaseAddress+0xD307E8, new byte[]{0x5, 0x0, 0x3, 0xFF, 0xFF}); // Formation for worker fights
    }

    if (current.roomNumber == 121 && current.storyline == 492)
    {
        print("Luca - Wakka takes a beating");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 88); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 500); //CutsceneID
    }  

    if (current.roomNumber == 299 && current.storyline == 502)
    {
        print("Luca - They jump on the boat");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 113); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 502); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }  

    if (current.roomNumber == 19 && current.storyline == 218 && old.gameState == 1 && current.gameState == 0)
    {
        print("Besaid - S.S. Liki departs");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 301); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 220); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load     
    }

    if (current.roomNumber == 61 && current.storyline == 244)
    {
        print("S.S. Liki - Tidus talks to Yuna");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 248); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load     
    }

    if (current.roomNumber == 282 && current.storyline == 285)
    {
        print("S.S. Liki - Kilika destroyed");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 43); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 292); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load     
    }

    if(current.roomNumber == 71 & current.storyline == 100 && old.gameState == 0 && current.gameState == 1)
    {
        print("Baaj Temple - Rikku suggests going to Luca");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 70); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 110); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load   
    }

    if(current.roomNumber == 41 & current.storyline == 119 && current.cutsceneAlt == 73)
    {
        print("Besaid - Wakka asks Tidus to join his team");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 67); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 124); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load   
    }

    if(current.roomNumber == 133 & current.storyline == 130)
    {
        print("Besaid - Tidus arrives at Besaid Village");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 17); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 134); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 3); //Spawn   
    }

    if(current.roomNumber == 84 & current.storyline == 136 && old.gameState == 0 && current.gameState == 1)
    {
        print("Besaid - Tidus speaks to the priest");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 140); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 42 & current.storyline == 154 && old.gameState == 0 && current.gameState == 1)
    {
        print("Besaid - Tidus goes back to the temple");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 122); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 162); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 103 & current.storyline == 164)
    {
        print("Besaid - Tidus meets Lulu and Kimahri + FMV");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 42); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 170); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 380 & current.storyline == 84 && old.gameState == 1 && current.gameState == 0)
    {
        print("Baaj Temple - Airship is shown");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 71); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 90); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn 
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 71 & current.storyline == 90 && old.gameState == 0 && current.gameState == 1)
    {
        print("Baaj Temple - Tidus gets back onto the boat");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 71); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 100); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn 
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 70 & current.storyline == 111)
    {
        print("Besaid - Tidus wakes up in sea");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 118); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn 
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 367 & current.storyline == 19)
    {
        print("Zanarkand - Post-Tanker");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 384); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 20); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if(current.roomNumber == 384 & current.storyline == 20 && old.gameState == 1 && current.gameState == 0)
    {
        print("Zanarkand - Tidus thoughts after seeing Jecht");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 385); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load  
    }

    if (current.roomNumber == 107 && current.storyline == 630 && current.gameState == 0)
    {
        print("Luca - HA HA HA HA");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 95); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 730); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 256); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 58 && current.storyline == 734 && old.gameState == 1 && current.gameState == 0)
    {
        print("Mi'ihen - Auron is Tired");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 171); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 755); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 119 && current.storyline == 860)
    {
        print("MRR - Auron Look out + FMV");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 247); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 865); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }

    if (current.roomNumber == 247 && current.storyline == 882)
    {
        print("MRR - Trying to beat Sin FMV");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 254); //Area ID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 922); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
    }
    
    if (current.roomNumber == 54 && current.storyline == 1600)
    {

        print("Wendigo death");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 54); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1610); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load
        game.WriteValue(modules.First().BaseAddress+0x14E54E1, 1);
    }

    // BIKANEL / SANUBIA

    if (current.roomNumber == 191 && current.storyline == 1612)
    {
        print("Auron to Bikanel - Oasis");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 129); //AreaID
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1704); //CutsceneID
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0); //Spawn
        game.WriteValue(modules.First().BaseAddress+0xF3080C, 1); //Force load

        // Fixing party formation to solo Tidus
        game.WriteBytes(modules.First().BaseAddress+0xD307E8, new byte[]{0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF});

        // Removing party members from menu:
        // There's almost certainly a better way to do this since they're 148 bytes apart
        // But I'm too lazy to figure out how when this is just as good.
        // Maybe later.
        game.WriteValue(modules.First().BaseAddress+0xD32088, (byte)11); // Tidus
        game.WriteValue(modules.First().BaseAddress+0xD3211C, (byte)0);  // Yuna
        game.WriteValue(modules.First().BaseAddress+0xD321B0, (byte)0);  // Auron
        game.WriteValue(modules.First().BaseAddress+0xD32244, (byte)0);  // Kimmy
        game.WriteValue(modules.First().BaseAddress+0xD322D8, (byte)0);  // Wakka
        game.WriteValue(modules.First().BaseAddress+0xD3236C, (byte)0);  // Lulu
        game.WriteValue(modules.First().BaseAddress+0xD32400, (byte)0);  // Rikku 
        

    }

    if (current.storyline == 1715 && current.partyMembers[4] == 255)
    {
        print("Add Auron, Lulu and Wakka after Zu");
        game.WriteBytes(modules.First().BaseAddress+0xD307E8, new byte[]{0x0, 0x2, 0x5, 0x4, 0xFF, 0xFF, 0xFF});
        game.WriteValue(modules.First().BaseAddress+0xD321B0, (byte)11);  // Auron
        game.WriteValue(modules.First().BaseAddress+0xD3236C, (byte)11);  // Lulu
        game.WriteValue(modules.First().BaseAddress+0xD322D8, (byte)11);  // Wakka
    }

    if (current.storyline == 1718 && current.partyMembers[5] == 255)
    {
        print("Add Kimahri");
        game.WriteValue(modules.First().BaseAddress+0xD307E8 + 0x5, (byte)3);
        game.WriteValue(modules.First().BaseAddress+0xD32244, (byte)11);
    }
    


    

    return true;
}