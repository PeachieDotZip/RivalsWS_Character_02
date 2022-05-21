//variables on hitbox creation

timer = 0;
xscale = image_xscale;
yscale = image_yscale;
reflect_timer1 = 0;
reflect_timer2 = 0;
ohsp = hsp;
ovsp = vsp;

starhit1 =  hit_fx_create( sprite_get( "star_explosion" ), 15);
sprite_change_offset("star_explosion", 25, 25);


mirror_angle = 0;