if(mirror_angle != 0){
	proj_angle = mirror_angle;
	if(attack == AT_UTILT){
		image_xscale = yscale;
		image_yscale = xscale;
	}else if(attack == AT_FAIR){
		image_xscale = yscale;
		image_yscale = xscale;
	}
}
print_debug(damage)

if(reflected == 1 && reflect_timer == 0){
	reflect_timer = 20;
}else if(reflect_timer == 1 && reflected == 1){
	reflected = 0;
}
reflect_timer -= (reflect_timer > 0? 1: 0);

//Slow down Ftilt's projectiles over time and play dust effect when destroyed
if (attack == AT_FTILT)
{
	hsp *= 0.969;
	vsp *= 0.979;	
	if (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) && (hitbox_timer == 79) {
			var strdth = spawn_hit_fx( x - 9 * spr_dir, y - 11, starhit1 );
		    strdth.depth = -10;
		    
    sound_play(asset_get("sfx_ori_seinhit_medium"), false, noone, .9, .9);
	}
	if (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) && (destroyed == true) {
	sound_play(asset_get("sfx_ori_seinhit_medium"), false, noone, .95, .95);
	}
}
if (attack == AT_FAIR)
{
	if (hbox_num == 1 && hitbox_timer == 59) {
		var fair_proj_disappear = spawn_hit_fx( x, y, 66 );
		fair_proj_disappear.depth = -10;
		sound_play(asset_get("sfx_abyss_despawn"), false, noone, .9, 1);
	}
	if (hbox_num == 1 && destroyed == true){
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, noone, .95, 1);
	}
}

timer++;


