speed = 6;

creator = undefined;
faction = undefined;

if(faction == factions.enemy){
	audio_play_sound(AsteroidEnemyFire, 2 ,false);
} else {audio_play_sound(AsteroidsDamage, 1 ,false);
	}