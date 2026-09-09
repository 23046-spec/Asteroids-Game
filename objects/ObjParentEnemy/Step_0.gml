//Particle FX
exhaustCounter++;
	
if(exhaustCounter >=4){
	exhaustCounter = 0;
	var len = sprite_height*.4,
	_xx = x - lengthdir_x(len,image_angle), 
	_yy = y - lengthdir_y(len,image_angle)
	with(ObjParticles){
		part_particles_create(partSys,_xx,_yy, partTypeEnemyExhaust, 1);
	}
}