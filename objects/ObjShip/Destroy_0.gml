lives -= 1;

with(ObjGame)
{
	alarm[1] = room_speed;
}

var _xx = x, _yy = y;
with(ObjParticles){
	part_particles_create(partSys,_xx,_yy, partTypeShipDebris, 10);
}