score = 0;
lives = 3;

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