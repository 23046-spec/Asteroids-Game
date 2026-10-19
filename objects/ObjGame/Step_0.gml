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
	if(score >= 100){
		room_goto(RmWin);
		if(audio_is_playing(AsteroidsMusic)){
		audio_stop_sound(AsteroidsMusic);
		}
		audio_play_sound(AsteroidsWin, 1, false);
	}

	if(lives <= 0){
		room_goto(RmGameOver);
		if(audio_is_playing(AsteroidsMusic)){
		audio_stop_sound(AsteroidsMusic);
		}
		audio_play_sound(AsteroidsLoseMusic, 1, false);
	}
}

if(room == RmWin){
	if(keyboard_check_pressed(vk_enter)){
		room_goto(RmBoss);
	}
}

if(room == RmBoss){
		audio_stop_sound(AsteroidsWin);
		if(lives <=0){
			room_goto(RmGameOver);
			audio_play_sound(AsteroidsLoseMusic, 2, false);
			audio_stop_sound(AsteroidsMusic);
			if(instance_exists(ObjShip)){
				instance_destroy(ObjShip)
			}
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
				
				room_goto(RmWin);
				audio_play_sound(AsteroidsWin, 3, false);
				audio_stop_sound(AsteroidsMusic);
		}
	}
}	