score = 0;

spawn_x = 750;
spawn_y = 900;
draw_set_font(FontText);

randomize();

enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullets,
	invincible_ship
}