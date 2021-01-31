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

    byte movementLock: "FFX.exe", 0xF25B63;
    byte musicID: "FFX.exe", 0xF2FF1C;
    float cameraRot: "FFX.exe", 0x8A858C;
}

startup
{
	// Putting a tooltip so you can see if the file is loading
	settings.Add("check", true, "Code compiled!");
	
    // Arrays are { {room_0, story_0}, {room_1, story_1} }
	vars.arrayRS = new short[,]{	{ 93, 960, 93, 962, 0 }, // Leave MRR -> Djose
									{ 76, 962, 76, 990, 0 }, // Djopse -> Trials
									{ 214, 990, 214, 995, 0 }, // Trials -> Chamber
									{ 161, 1010, 161, 1032, 0 }, // Wake Yuna -> Moonflow
									{ 105, 1032, 105, 1045, 0 }, // Moonflow/Shoopuff
									{ 291, 1045, 99, 1060, 0 }, // Pre-Extractor
									{ 291, 1060, 236, 1070, 0 }, // Post-Extractor
									{ 189, 1070, 189, 1085, 0}, // Remove Rikku's appearance
									{ 97, 1085, 97, 1104, 0 }, // Post-Rikku to Seymour's Room
									{ 141, 1104, 163, 1154, 0 }, // Seymour's Room to Farplane
									{ 193, 1154, 135, 1190, 0 }, // Skip Farplane
									{ 135, 1190, 135, 1310, 0 }, // Skip Guadosalam Exit
									{ 264, 1315, 263, 1418, 0 } // Inn Sleep
									};
    // Not skipped:
    // Ixion fayth room, B&Y, Rikku/Lightning

    // Arrays are {HP, story_0, room_1, story_1, spawn_1}
    vars.bossRS = new int[,]{       {12000, 1420, 221, 1470, 2}/*, // Spherimorph
                                    {70000, 2555, 285, 2585, 2}  // Flux */
                                    };
    vars.boss_fight = -1;
}

update
{

    if(current.input == 2063)
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

    //print(current.intro.ToString());
    //print(memory.ReadValue<byte>(modules.First().BaseAddress + 0xB8D7D9).ToString());
    // START OF ZANARKAND

    if (current.roomNumber == 132 && current.storyline == 0)
    {
        print("Zanarkand - Beginning");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 368);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 3);
    }
    // TO DO Speak to kids
    // TO DO Speak to women
    // TO DO Tidus leaves fans
    if (current.roomNumber == 368 && current.storyline == 3 && current.intro == 4096)
    {
        print("Zanarkand - Speak to kids");
        game.WriteValue(modules.First().BaseAddress+0x922D64, 188416);
    }
    if (current.roomNumber == 376 && current.storyline == 4)
    {
        print("Zanarkand - Tidus looks at Jecht sign");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 5);
    }
    if (current.roomNumber == 371 && current.storyline == 5)
    {
        print("Tidus navigates through the crowd and Blitzball FMV");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 370);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 7);
    }
    // TO DO Tidus speaks to Auron
    if (current.roomNumber == 366)
    {
        print("Zanarkand - Tidus sees the fayth and follows Auron");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 389);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 12);
    }
    // TO DO Post Sinscales battle?
    // TO DO Pre Sinspawn Ammes battle?
    if (current.roomNumber == 389 && current.storyline == 14)
    {
        print("Sinspawn Ammes?");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 15);
    }
    if (current.roomNumber == 367)
    {
        print("Zanarkand - Tidus sees Jecht sign again");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 18);
    }
    // TO DO Post Tanker battle?
    // TO DO Sin absorbs Tidus FMV
    // TO DO Tidus wakes up inside Sin
    // TO DO Tidus thoughts before Baaj Temple
    if (current.roomNumber == 385)
    {
        print("Zanarkand - A dream of being alone");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 48);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 30);
    }

    // END OF ZANARKAND
    // START OF BAAJ TEMPLE

    if (current.roomNumber == 48 && current.storyline == 30)
    {
        // TO DO - Tidus spawns standing and not swimming
        print("Baaj Temple - Tidus wakes up");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 42);
    }
    if (current.roomNumber == 49 && current.storyline == 44)
    {
        // TO DO Tidus falls down
        print("Baaj Temple - Tidus falls down");
    }
    // TO DO Tidus fights some sahagins
    // TO DO Geogaesno arrives
    // TO DO Escape from Geogaesno
    if (current.roomNumber == 50 && current.storyline == 48)
    {
        print("Baaj Temple - Tidus in a collapsed corridor");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 50);
    }
    if (current.roomNumber == 63 && current.storyline == 50)
    {
        print("Baaj Temple - Tidus needs fire");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 52);
    }
    // TO DO Tidus makes fire
    //if (current.roomNumber == 63 && current.storyline == 54)
    //{
    //    print("Baaj Temple - Tidus makes fire");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 165);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 55);
    //}
    if (current.roomNumber == 165 && current.storyline == 55)
    {
        print("Baaj Temple - Tidus has a dream about Auron");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 63);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 55);
    }
    // TO DO Fire goes out and Klikk arrives
    // TO DO Rikku arrives during Klikk fight
    // TO DO Rikku punches Tidus
    //if (current.roomNumber == 63 && current.storyline == 58)
    //{
    //    print("Baaj Temple - Rikku punches Tidus");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 71);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 60);
    //}
    if (current.roomNumber == 71 && current.storyline == 60)
    {
        print("Baaj Temple - Tidus wakes up");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 66);
    }
    // TO DO Sphere grid tutorial?
    // TO DO Rikku explains mission
    if (current.roomNumber == 64 && current.storyline == 70)
    {
        print("Baaj Temple - They enter the submerged ruins");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 74);
    }
    // TO DO Tidus bashes the console
    // TO DO Tidus bashes the machine and Tros arrives
    // TO DO They leave the submerged ruins
    // TO DO Lights come on in the submerged ruins
    // TO DO Airship is shown
    if (current.roomNumber == 71 && current.storyline == 90)
    {
        print("Baaj Temple - Tidus gets back onto boat");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 100);
    }
    // TO DO Rikku suggests going to Luca
    // TO DO Tidus contemplates time travel + Sin

    // END OF BAAJ TEMPLE
    // START OF BESAID

    //if (current.roomNumber == 70 && current.storyline == 111)
    //{
    //    print("Besaid - Tidus wakes up in sea + FMV");
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 113);
    //}
    // TO DO Tidus meets Wakka
    // TO DO Tidus asks Wakka about Zanarkand
    // TO DO Wakka says Hey it's this way
    // Wakka pushes Tidus
    // Wakka asks Tidus to join his team
    
    if ((current.roomNumber == 67 && current.storyline == 124) || (current.roomNumber == 69 && current.storyline == 126))
    {
        print("Besaid - Wakka explains his life story");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 69);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 128);
    }
    // TO DO Tidus meets the Crusaders
    if (current.roomNumber == 69 && current.storyline == 128 && current.camera == 0)
    {
        print("Besaid - Tidus meets the Crusaders");
        //game.WriteValue(modules.First().BaseAddress+0xF00740, 283768848);
        //game.WriteValue(modules.First().BaseAddress+0xF25B60, 550017163);
        //game.WriteValue(modules.First().BaseAddress+0xF00740, 48);
        //game.WriteValue(modules.First().BaseAddress+0xF25B63, 32);
        //game.WriteValue(modules.First().BaseAddress+0xD2D67C, 130);
        //game.WriteValue(modules.First().BaseAddress+0xD3818C, 1);
    }
    //if (current.roomNumber == 133 && current.storyline == 130)
    //{
    //    print("Besaid - Tidus arrives at Besaid Village");
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 134);
    //    game.WriteValue(modules.First().BaseAddress+0xD3818C, 1);
    //}
    // TO DO Tidus arrives at Besaid Village
    if (current.roomNumber == 84 && current.storyline == 134)
    {
        print("Besaid - Tidus enters the temple");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 136);
    }
    //if (current.roomNumber == 84 && current.storyline == 136)
    //{
    //    print("Besaid - Tidus speaks to the priest");
    //    game.WriteValue(modules.First().BaseAddress+0x8CB9C0, 257);
    //    game.WriteValue(modules.First().BaseAddress+0xF006BC, 16);
    //    game.WriteValue(modules.First().BaseAddress+0xF00700, 4294967043);
    //    game.WriteValue(modules.First().BaseAddress+0xF00704, 983041);
    //    //game.WriteValue(modules.First().BaseAddress+0xD2D67C, 136);
    //}
    // TO DO Priest enters Wakka's tent
    if (current.roomNumber == 191 && current.storyline == 152)
    {
        print("Besaid - Tidus dreams about a flashback");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 145);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 154);
    }
    if (current.roomNumber == 42 && current.storyline == 154)
    {
        print("Besaid - Tidus returns to the temple");
        game.WriteValue(modules.First().BaseAddress+0x8CB9C0, 257);
        game.WriteValue(modules.First().BaseAddress+0xF006BC, 16);
        //game.WriteValue(modules.First().BaseAddress+0xF00700, 4294967043);
        //game.WriteValue(modules.First().BaseAddress+0xF00704, 983041);
        //game.WriteValue(modules.First().BaseAddress+0xD2D67C, 136);
    }
    // TO DO Tidus goes back to the temple
    // TO DO Wakka catches up with Tidus in trials
    // TO DO Tidus meets Lulu and Kimarhi + FMV
    if (current.roomNumber == 42 && current.storyline == 170)
    {
        print("Besaid - The gang leave the cloister of trials");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 172);
    }
    // TO DO Valefor summon
    // TO DO Tidus monologue after naming
    //if (current.roomNumber == 100 && current.storyline == 180)
    //{
    //    print("Besaid - Tidus joins the Aurochs");
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 182);
    //}
    // TO DO Tidus speaks to Yuna
    if (current.roomNumber == 68 && current.storyline == 184)
    {
        print("Besaid - Tidus sleeping, FMV and chat with Wakka");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 60);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 200);
    }
    if (current.roomNumber == 17 && current.storyline == 200)
    {
        print("Besaid - Yuna says goodbye to Besaid");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 69);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 210);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 515);
    }
    if (current.roomNumber == 67 && current.storyline == 210)
    {
        print("Besaid - Yuna says goodbye to Besaid again");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 214);
    }
    // TO DO Kimahri FMV
    // TO DO Post-Kimahri battle
    // TO DO SS Liki departs

    // END OF BESAID
    // START OF SS LIKI

    if (current.roomNumber == 301 && current.storyline == 220)
    {
        print("SS Liki - Tidus goofing around");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 228);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 256);
    }
    //if (current.roomNumber == 61 && current.storyline == 244)
    //{
    //    print("SS Liki - Tidus talks to Yuna");
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 248);
    //}
    //if (current.roomNumber == 61 && current.storyline == 272)
    //{
    //    print("SS Liki - Tidus is gone");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 282);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 280);
    //}
    //if (current.roomNumber == 282 && current.storyline == 285)
    //{
    //    print("SS Liki - Sin destroys Kilika");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 43);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 294);
    //}
    if (current.roomNumber == 43 && current.storyline == 292)
    {
        print("Kilika - Undocking in Kilika");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 294);
    }
    if (current.roomNumber == 152 && current.storyline == 300)
    {
        print("Kilika - Tidus wakes up");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 302);
    }
    if (current.roomNumber == 18 && current.storyline == 308)
    {
        print("Kilika - Camera pan in Kilika Woods");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 311);
    }
    if (current.roomNumber == 65 && current.storyline == 315)
    {
        print("Kilika - Race up the stairs");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 322);
    }
    if (current.roomNumber == 78 && current.storyline == 328)
    {
        print("Kilika - Arrival at temple");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 330);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1);
    }
    if (current.roomNumber == 96 && current.storyline == 330)
    {
        print("Kilika - Camera pan in Kilika Temple");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 333);
    }
    if (current.roomNumber == 94 && current.storyline == 370)
    {
        print("S.S. Winno - Opening scenes");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 167);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 372);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 0);
    }
    
    // END OF S.S. WINNO
    // START OF LUCA
    
    //if (current.roomNumber == 267 && current.storyline == 402)
    //{
    //    // Don't know why spawnpoint is not setting, currently places you OoB and it's a softlock
    //    print("Luca - Everyone undocks S.S. Winno");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 267);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 425);
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1);
    //}

    //if (current.roomNumber == 121 && current.storyline == 486)
    //{
    //    print("Luca - Tournament begins");
    //    game.WriteValue(modules.First().BaseAddress+0xD2CA90, 77);
    //    game.WriteValue(modules.First().BaseAddress+0xD2D67C, 492);
    //   game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 1);
    //}
    
    if (current.roomNumber == 121 && current.storyline == 508)
    {
        print("Luca - Aurochs win the game");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 88);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 514);
    }
    
    if (current.roomNumber == 95 && current.storyline == 730)
    {
        print("Mi'ihen - Tidus runs up the stairs");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 750);
    }
    
    if (current.roomNumber == 58 && current.storyline == 750)
    {
        print("Mi'ihen - Reset it back to avoid a sequence break!");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 734);
    }
    
    if (current.roomNumber == 112 && current.storyline == 755)
    {
        print("Mi'ihen - Tidus chats with Yuna");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 171);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 760);
    }
    
    if ((current.roomNumber == 79 && current.storyline == 787) || (current.roomNumber == 79 && current.storyline == 815 && current.spawnPoint == 2))
    {
        print("MRR - Tidus distrusts Seymour");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 825);
    }
    
    if (current.roomNumber == 119 && current.storyline == 825)
    {
        print("MRR - Preparing for Sin");
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 845);
    }
    
    if ((current.roomNumber == 218 && current.storyline == 902) || (current.roomNumber == 247 && current.storyline == 899))
    {
        print("MRR - Chasing after Sin");
        game.WriteValue(modules.First().BaseAddress+0xD2CA90, 131);
        game.WriteValue(modules.First().BaseAddress+0xD2D67C, 928);
        game.WriteValue(modules.First().BaseAddress+0xD2CA9C, 3);
    }
	
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

        if(vars.boss_fight != -1 && current.menu == 0 && old.menu == 1)
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

    //if (current.roomNumber == 164)
    if(old.menu == 1 && current.menu == 0) // If you're leaving a menu
    {
        //game.WriteValue(modules.First().BaseAddress+0xD2CA90, 248); // Set the zone
        //game.WriteValue(modules.First().BaseAddress+0xD2D67C, 1455); // Set the story
        //game.WriteValue(modules.First().BaseAddress+0xF3080C, 1);   // Force a fade
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
    if(current.roomNumber == 259 && current.storyline == 2510
    && game.ReadValue<byte>(modules.First().BaseAddress+0xD27C88) == 70)
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
    

    


    
    return true;
}