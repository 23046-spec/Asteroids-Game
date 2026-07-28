lives -= 1;

instance_destroy();

instance_create_layer(room_width/2, room_height/2, "Instances", ObjShip);

repeat(10){
	instance_create_layer(x,y,"Instances",ObjDebris);	
}