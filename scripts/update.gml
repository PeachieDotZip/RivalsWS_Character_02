// MunoPhone Touch code - don't touch

// should be at TOP of file
muno_event_type = 1;
user_event(14);

doing_goku_beam = (phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6));

if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;


//mirror rotation thing
rotation_timer -= (rotation_timer > 0? 1: 0);
temp_cooldown -= (temp_cooldown > 0? 1: 0);

if(get_player_color(player) == 26){
    init_shader();
    r_mir = get_color_profile_slot_r(26, 1);
    g_mir = get_color_profile_slot_g(26, 1);
    b_mir = get_color_profile_slot_b(26, 1);
}