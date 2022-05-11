// attack_update is a script called when you're doing an attack. It runs for every in-game frame.

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//Cooldowns
if (attack == AT_FTILT){
	move_cooldown[AT_FTILT] = 20;
}
if (attack == AT_UTILT){
	move_cooldown[AT_UTILT] = 10;
}

//Dtilt jump-cancel on hit
if (attack == AT_DTILT){
	if (window == 2 && window_timer >= 5 && has_hit == true) || (window == 3 && has_hit == true){
		can_jump = true;
	}
}
//Changed whether Uair can be landed with or not
if (attack == AT_UAIR){
	if (window == 1 || window == 2 || window == 3){
		set_attack_value(AT_UAIR, AG_CATEGORY, 2);
	}
	if (window == 4 || window == 5){
		set_attack_value(AT_UAIR, AG_CATEGORY, 1);
	}
}
//Stops Dspecial stall by having it lower 02 after a few loops of the 2nd window
if (attack == AT_DSPECIAL){
	if (window == 2 && window_timer == 1){
	dspecialfloat += 1;
	}
	if (window == 3 && window_timer >= 0){
		dspecialfloat = 0;
	}
	if (dspecialfloat == 5){
		//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0.4);
	}
	if (dspecialfloat == 10){
		//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0.7);
	}
	if (dspecialfloat >= 6){
		//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 1);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, dspecialfloat*0.021);
	}
	if (dspecialfloat <= 0){
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
	}
}

//Apply vsp to Nair
if (attack == AT_NAIR && window == 3 && window_timer == 4){
	vsp += -4.5;
}
//Apply vsp to Dair
if (attack == AT_DAIR && window == 2 && window_timer == 3){
	vsp += -4.2;
}
if (attack == AT_DAIR && window == 3 && window_timer == 3){
	vsp += -4.1;
}
if (attack == AT_DAIR && window == 4 && window_timer == 7){
	vsp += -4.4;
}
//Apply vsp to Uair
if (attack == AT_UAIR && window == 3 && window_timer == 2){
	vsp += -3;
}
if (attack == AT_UAIR && window == 3 && window_timer == 22){
	vsp = -3;
}
//Apply vsp and hsp to Bair
if (attack == AT_BAIR && window == 2 && window_timer == 3){
	vsp += -1.5;
	hsp += 2 * spr_dir;
}

	//-Soft armor-

//Soft armor on a few frames of Dstrong
if (attack == AT_DSTRONG){
	if (window == 4 && window_timer > 0){
		soft_armor = 10;
	}
	if (window == 4 && window_timer >= 29) || (window == 5){
		soft_armor = 0;
	}
}
if (attack == AT_NAIR)
{
	if (window == 1 && window_timer >= 8){
			soft_armor = 4;	
	}
	if (window == 2 && window_timer >= 18){
			soft_armor = 0;	
	}
}

//mirror and dspecial code (thx DarkDakurai)
if(attack == AT_DSPECIAL){
	can_fast_fall = false;
	if(window == 2 && !instance_exists(mirror1) && !instance_exists(mirror2) && window_timer >= 7){
		mirror1 = instance_create(x, y - 34, "obj_article1");
	}
	if(window == 2 && !instance_exists(mirror1) && !instance_exists(mirror2) && window_timer == 3){
		var mirror_appear = spawn_hit_fx( x - 45 * spr_dir, y - 82, halo_creation);
    	mirror_appear.depth = -10;
	}
	if(instance_exists(mirror1) || instance_exists(mirror2)) && window == 2 && !special_down{
		window = 3;
		window_timer = 0;
	}
	if(window == 2 && (instance_exists(mirror1) || instance_exists(mirror2)) && !(instance_exists(mirror1) && instance_exists(mirror2))){
		if(up_pressed) && mirror_spawn == 0{
			if(!instance_exists(mirror1)){
				mirror1 = instance_create(x, y - 34, "obj_article1");
				var mirror_appear = spawn_hit_fx( x - 45 * spr_dir, y - 82, halo_creation);
				mirror_appear.depth = -10;
			}else if(!instance_exists(mirror2)){
				mirror2 = instance_create(x, y - 34, "obj_article1");
				var mirror_appear = spawn_hit_fx( x - 45 * spr_dir, y - 82, halo_creation);
				mirror_appear.depth = -10;
			}
			mirror_spawn = 1;
		}
	}
	if(right_down && rotation_timer == 0 && window == 2){
		if(instance_exists(mirror1)){
			mirror1.angle--;
		}
		if(instance_exists(mirror2)){
			mirror2.angle--;
		}
		rotation_timer = 8;
	}else if(left_down && rotation_timer == 0 && window == 2){
		if(instance_exists(mirror1)){
			mirror1.angle++;
		}
		if(instance_exists(mirror2)){
			mirror2.angle++;
		}
		rotation_timer = 8;
	}
}



//Misc.
if (attack == AT_UTILT && window == 2 && window_timer == 2){
	var halo_appear = spawn_hit_fx( x - 45 * spr_dir, y - 109, halo_creation);
    halo_appear.depth = -10;
}

if (attack == AT_FTILT && window == 1 && window_timer == 9){
	sound_play(asset_get("sfx_swipe_weak2"), false, noone, .8, 1);
}
if (attack == AT_DSPECIAL && window == 1 && window_timer == 1){
	sound_play(asset_get("sfx_ori_grenade_aim"), false, noone, .777, .9);
}
if (attack == AT_UAIR && window == 3 && window_timer == 20){
	sound_play(asset_get("sfx_swipe_heavy1"), false, noone, 1.05, .9);
}
