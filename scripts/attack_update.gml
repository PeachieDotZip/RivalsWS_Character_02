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

//Apply vsp to Nair
if (attack == AT_NAIR && window == 3 && window_timer == 4){
	vsp += -4.5;
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

//Misc.
if (attack == AT_UTILT && window == 2 && window_timer == 2){
	var halo_appear = spawn_hit_fx( x - 45 * spr_dir, y - 109, halo_creation);
    halo_appear.depth = -10;
}

if (attack == AT_FTILT && window == 1 && window_timer == 9){
	sound_play(asset_get("sfx_swipe_weak2"), false, noone, .8, 1);
}
