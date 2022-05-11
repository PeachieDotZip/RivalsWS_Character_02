//variables on hitbox creation

timer = 0;
xscale = image_xscale;
yscale = image_yscale;
reflected = 0;
reflect_timer = 0;


starhit1 =  hit_fx_create( sprite_get( "star_explosion" ), 15);
sprite_change_offset("star_explosion", 25, 25);


mirror_angle = 0;