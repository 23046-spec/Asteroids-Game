
repeat(10){
	instance_create_layer(x,y,"Instances",ObjDebris);
}



switch(object_index){
	case ObjAlien: score += 10; global.cameraShake = 3; break;	
	case ObjUfo: score += 20; global.cameraShake = 4; break;	
	case ObjBrute: score += 15; global.cameraShake = 5; break;	
}

if(irandom_range(0,4) == 0){
	instance_create_layer(x,y, "Instances", ObjPowerup);	
}