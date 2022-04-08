

//Slow down Ftilt's projectiles over time and play dust effect when destroyed
if (attack == AT_FTILT)
{
	hsp *= 0.99021;
	vsp *= 0.99021;	
	if (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) && (timer == 98) {
	var strdth = spawn_hit_fx( x - 10, y - 10, starhit1 );
    strdth.depth = -10;
    sound_play(asset_get("sfx_ori_seinhit_medium"), false, noone, .9, .9);
	}
	if (hbox_num == 1 || hbox_num == 2 || hbox_num == 3) && (destroyed == true) {
	sound_play(asset_get("sfx_ori_seinhit_medium"), false, noone, .95, .95);
	}
}
if (attack == AT_FAIR)
{
	if (hbox_num == 1 && timer == 67) {
		var fair_proj_disappear = spawn_hit_fx( x - 10, y - 10, 66 );
		fair_proj_disappear.depth = -10;
		sound_play(asset_get("sfx_abyss_despawn"), false, noone, .9, 1);
	}
	if (hbox_num == 1 && destroyed == true){
		sound_play(asset_get("sfx_ori_energyhit_weak"), false, noone, .95, 1);
	}
}

timer++;


