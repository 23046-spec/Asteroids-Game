///@description create_bullet

function create_bullet(_dir, _spd, _fac, _creator){
	var inst = instance_create_layer(x,y, "Instances", ObjBullet);

	with(inst){
		direction = _dir;
		speed = _spd;
		faction = _fac;
		creator = _creator;
		
		
	}

}

