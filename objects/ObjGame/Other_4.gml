if(room == RmGame){
	spawn_off_camera(ObjAsteroid, 40);
	
	spawn_off_camera(ObjAlien, 6);
	spawn_off_camera(ObjUfo, 3);
	spawn_off_camera(ObjBrute, 2);
	
	alarm[0] = 60;
}

if(room == RmBoss){
	//spawn_off_camera(ObjAsteroid, 15);
	
	//spawn_off_camera(ObjAlien, 3);
	//spawn_off_camera(ObjUfo, 2);
	//spawn_off_camera(ObjBrute, 1);
	
	alarm[0] = 60;
}

// Create a global tracker if it doesn't exist yet
if (!variable_global_exists("boss_initialized")) {
    global.boss_initialized = false;
}
if (!variable_global_exists("game_initialized")) {
    global.game_initialized = false;
}

// Logic for entering the Boss Room
if (room == RmBoss) {
    if (!global.boss_initialized) {
        lives = 5;                       // Give 5 lives only on the FIRST entry
        global.boss_initialized = true;  // Mark it as done so it won't reset on death
        global.game_initialized = false; // Reset the other flag in case they return later
    }
} 
// Logic for entering the Normal Gameplay Room
else if (room == RmGame) {
    if (!global.game_initialized) {
        lives = 3;                           // Give 3 lives only on the FIRST entry
        global.game_initialized = true;  // Mark it as done
        global.boss_initialized = false;     // Reset the boss flag
    }
}