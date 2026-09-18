
with(other){
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type){
	case powerups.invincible_ship:
		//make player invincible
		invincible = true;
		alarm[1] = 7*game_get_speed(gamespeed_fps);
		break;
		
	default:
		//change player's gun
		guns = powerup_type;
		alarm[0] = 7*game_get_speed(gamespeed_fps);
		break;
}