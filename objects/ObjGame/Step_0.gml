if(keyboard_check_pressed(vk_enter)){
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
	if(score >= 1000){
		room_goto(RmWin);
	}

	if(lives <= 0){
		room_goto(RmGameOver);
	}
}