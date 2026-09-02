var len = 500;

//Draw line
draw_line_width_color(x,y, 
	x+lengthdir_x(len, direction),
	y+lengthdir_y(len, direction),
	2, image_blend, c_aqua
);

//Draw collision
var inst = collision_line(x,y, 
	x+lengthdir_x(len, direction),
	y+lengthdir_y(len, direction),
	ObjFaction, false, false
);
	 
if(inst != noone){
	if(inst.faction != faction){
		with(inst){
			if(!immuneToLaser) event_perform(ev_other,ev_user1);	
		}
	}
}