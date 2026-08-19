lives -= 1;

with(ObjGame)
{
	alarm[1] = room_speed;
}

repeat(10){
	instance_create_layer(x,y,"Instances",ObjDebris);	
}