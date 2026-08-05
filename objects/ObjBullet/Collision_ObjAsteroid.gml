instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == SprLaAsteroid){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",ObjAsteroid);
		new_asteroid.sprite_index = SprMeAsteroid;
		}
		score += 5
	} else if(sprite_index == SprMeAsteroid){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",ObjAsteroid);
		new_asteroid.sprite_index = SprSmAsteroid;
		}
		score += 10
	} else if(sprite_index == SprSmAsteroid){
		score += 20
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",ObjDebris);
	}
	
}