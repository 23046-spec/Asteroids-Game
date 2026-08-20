image_index = HP -1;

//if player exists
if(!instance_exists(ObjShip)) exit;

//If player is inside range
if(point_distance(x,y, ObjShip.x,ObjShip.y) < 250){
	//Turn to look at player ship
	var new_angle = point_direction(x,y, ObjShip.x, ObjShip.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;

	speed += 0.01;
	
} else { //otherwise, no change
	speed = lerp(speed,originalSpeed,0.1);
}
