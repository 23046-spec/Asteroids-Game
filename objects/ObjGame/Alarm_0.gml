if(room != RmGame){
	exit;
}

spawn_off_camera(ObjAsteroid, 1);

alarm[0] = 1*game_get_speed(gamespeed_fps);