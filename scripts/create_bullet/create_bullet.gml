///@description create_bullet

function create_bullet(_dir, _spd, _fac, _creator, _gun_type){

	//Choose Gun Type
	switch(_gun_type){
		case powerups.three_bullets:
			var inst = instance_create_layer(x,y, "Instances", ObjBullet);
			initialise_bullet(_dir, _spd, _fac, id, inst);
			
		case powerups.two_bullets:
		
			var _sep = 12;
			
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90), "Instances", ObjBullet);
			initialise_bullet(_dir, _spd, _fac, id, inst);
			
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90), "Instances", ObjBullet);
			initialise_bullet(_dir, _spd, _fac, id, inst);
			break;
			
		case powerups.four_bullets:
			var _sep = 7, bullet_angle;
			
			var i = 0; repeat(4){
				bullet_angle = _dir + (i * 90);
				var inst = instance_create_layer(
					x+lengthdir_x(_sep,_dir),
					y+lengthdir_y(_sep,_dir),
					"Instances", ObjBullet
				);
				initialise_bullet(bullet_angle, _spd, _fac, id, inst);
				i++;
			}
			break;
			
		case powerups.star_bullets:
		var _sep = 7, bullet_angle;
			
			var i = 0; repeat(8){
				bullet_angle = _dir + (i * 45);
				var inst = instance_create_layer(
					x+lengthdir_x(_sep,_dir),
					y+lengthdir_y(_sep,_dir),
					"Instances", ObjBullet
				);
				initialise_bullet(bullet_angle, _spd, _fac, id, inst);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
			var inst = instance_create_layer(x,y, "Instances", ObjLaser);
			initialise_bullet(_dir, _spd, _fac, id, inst);
			break;
			
		default:
			var inst = instance_create_layer(x,y, "Instances", ObjBullet);
			initialise_bullet(_dir, _spd, _fac, id, inst);
			break;
	}



}

