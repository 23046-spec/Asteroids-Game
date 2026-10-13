draw_self();

//Draw guns
if(guns != -1) draw_sprite_ext(SprShipPowerupStrip6,guns,x,y, 
image_xscale,image_yscale,image_angle,image_blend,image_alpha);

//Draw invincible
if(invincible){
	var alpha = min(1,alarm[1]/60);
	
	draw_sprite_ext(SprShipPowerupStrip6,powerups.invincible_ship,x,y,
	image_xscale,image_yscale,image_angle,image_blend,alpha);
}