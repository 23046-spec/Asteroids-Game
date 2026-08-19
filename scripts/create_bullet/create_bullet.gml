///@description create_bullet

function create_bullet(dir, spd, fac){

	var inst = instance_create_layer(x,y, "Instances", ObjBullet);

	with(inst){
		direction = dir;
		speed = spd;
		faction = fac;
		creator = _creator;
		
		if(faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
	}

}

