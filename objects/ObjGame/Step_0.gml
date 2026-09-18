if(keyboard_check_pressed(vk_shift)){
	switch(room){
		case RmStart:
			room_goto(RmGame);
			break;
			
		case RmWin:
		case RmGameOver:
			game_restart();
			break;
	}
}

if(room == RmGame){
	if(score >= 10){
		room_goto(RmWin);
	}

	if(lives <= 0){
		room_goto(RmGameOver);
	}
}

if(room == RmWin){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(RmBoss);
	}
}

if(room == RmBoss){
		if(lives <=0){
			room_goto(RmGameOver);
		}
	
		if(!instance_exists(ObjBoss)){
			if(alarm[2] == -1){
				with(ObjAsteroid){
					instance_destroy(id, false);
				}
				with(ObjAlien){
					instance_destroy();
				}
				with(ObjBrute){
					instance_destroy();
				}
				with(ObjUfo){
					instance_destroy();
				}
				global.cameraShake = 50;
				alarm[2] = 200;
		}
	}
}	