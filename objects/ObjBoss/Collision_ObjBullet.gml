if(other.id != faction){
	other.HP -= 1;
	other.image_blend = c_orange;
	other.alarm[0] = 1;
	
	instance_destroy();
}