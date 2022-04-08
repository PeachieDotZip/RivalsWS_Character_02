// code for kamehameha

if my_hitboxID.attack == AT_NSPECIAL && !has_updated_beam_kb{
	has_updated_beam_kb = true;
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(7, 12, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.5, 1.6, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(8, 20, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.5, 1.5, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, lerp(2, 22, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, round(lerp(55, 35, beam_juice / beam_juice_max)));
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hitpause > 15{
	sound_play(sfx_dbfz_hit_broken);
}


//Draws the hit effects OVER the opponent's sprites
	
if (attack == AT_DTILT) {
    var thorn = spawn_hit_fx( hit_player_obj.x - 20 * spr_dir, hit_player_obj.y - 50, cactushit );
    thorn.depth = -10;
	print("dtilt");
}
if (attack == AT_FTILT){
	
	if (my_hitboxID.hbox_num == 1){
	var strxpl1 = spawn_hit_fx( hit_player_obj.x - 0 * spr_dir, hit_player_obj.y - 50, starhit );
    strxpl1.depth = -10;
	}
	if (my_hitboxID.hbox_num == 2){
	var strxpl2 = spawn_hit_fx( hit_player_obj.x - 10 * spr_dir, hit_player_obj.y - 40, starhit );
    strxpl2.depth = -10;
	}
	if (my_hitboxID.hbox_num == 3) {
    var strxpl3 = spawn_hit_fx( hit_player_obj.x - 20 * spr_dir, hit_player_obj.y - 60, starhit );
    strxpl3.depth = -10;
	}
}
if (attack == AT_UTILT && my_hitboxID.hbox_num == 2) {
    var halo = spawn_hit_fx( hit_player_obj.x - 20 * spr_dir, hit_player_obj.y - 70, halohit );
    halo.depth = -10;
}
if (attack == AT_USTRONG){
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7) {
    var magolor = spawn_hit_fx( hit_player_obj.x - 20 * spr_dir, hit_player_obj.y - 50, magolorhit );
    magolor.depth = -10;
	}
	if (my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5){
    var magolortip = spawn_hit_fx( hit_player_obj.x - 20 * spr_dir, hit_player_obj.y - 50, magolortipperhit );
    magolortip.depth = -10;
	}
}