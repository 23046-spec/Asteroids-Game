lives -= 1;

var _xx = x, _yy = y;
with(ObjGame)
{
	if(room = RmBoss){ 
		alarm[3] = game_get_speed(gamespeed_fps) * 1.5;
	}
	else{
		alarm[1] = game_get_speed(gamespeed_fps);
	}
}

with(ObjParticles){
	part_particles_create(partSys,_xx,_yy, partTypeShipDebris, 10);
}