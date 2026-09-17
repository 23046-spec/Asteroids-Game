if(irandom_range(0,7) == 0){
	instance_create_layer(x,y, "Instances", ObjPowerup);
}

var _xx = x, _yy = y;
if(sprite_index == SprLaAsteroid){
	global.cameraShake = 4;
	with(ObjParticles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 12);
	
	repeat(2){
	var new_asteroid = instance_create_layer(x,y,"Instances",ObjAsteroid);
	new_asteroid.sprite_index = SprMeAsteroid;
	}
	score += 5
} else if(sprite_index == SprMeAsteroid){
	global.cameraShake = 2;
	with(ObjParticles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 8);
	
	repeat(2){
	var new_asteroid = instance_create_layer(x,y,"Instances",ObjAsteroid);
	new_asteroid.sprite_index = SprSmAsteroid;
	}
	score += 10
} else if(sprite_index == SprSmAsteroid){
	global.cameraShake = 1;
	with(ObjParticles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 4);
	
	score += 20
}
	
