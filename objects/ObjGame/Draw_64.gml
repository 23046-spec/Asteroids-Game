switch(room){
	case RmGame:
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		break;
		
	case RmStart:
	draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_colour(
			room_width/2, 100, "ASTEROIDS",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 Points to WIN!

UP: Move
LEFT/RIGHT: Change Direction
Space: Shoot

>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
	case RmWin:
	draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_colour(
			room_width/2, 200, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
		
	case RmGameOver:
	draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_colour(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"FINAL SCORE: "+string(score)
		);
		draw_text(
			room_width/2, 250,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}