if(mirror_angle != 0){
	proj_angle = mirror_angle;
	image_angle = mirror_angle;
}

reflect_timer1 -= (reflect_timer1 > 0? 1: 0);
reflect_timer2 -= (reflect_timer2 > 0? 1: 0);

print_debug(string(hsp) + ", " + string(vsp))

//Slow down Ftilt's projectiles over time and play dust effect when destroyed
if (attack == AT_FTILT)
{
	hsp *= 0.973;
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
	if (hbox_num == 1 && !free){
		destroyed = true;
	}
	if (hbox_num == 1 && destroyed == true){
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, noone, .95, 1);
	}
}

timer++;


