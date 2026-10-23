if(room != RmGame or RmBoss){
	exit;
}

spawn_off_camera(ObjAsteroid, 3);
spawn_off_camera(ObjAlien, 1);
spawn_off_camera(ObjBandit, 1);
spawn_off_camera(ObjBrute, 1);

alarm[0] = 1*game_get_speed(gamespeed_fps);