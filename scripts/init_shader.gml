if(get_player_color(player) == 26){
if(get_color_profile_slot_r(26, 1) <= 0 && get_color_profile_slot_g(26, 1) >= 255 && get_color_profile_slot_b(26, 1) < 255){
    set_color_profile_slot( 26, 1, 0, 255, get_color_profile_slot_b(26, 1) + 2 );
    set_color_profile_slot( 26, 2, 0, 255, get_color_profile_slot_b(26, 1) + 2 );
    set_color_profile_slot( 26, 4, 0, 255, get_color_profile_slot_b(26, 1) + 2 );
    set_color_profile_slot( 26, 5, 0, 255, get_color_profile_slot_b(26, 1) + 2 );
    set_color_profile_slot( 26, 7, 0, 255, get_color_profile_slot_b(26, 1) + 2 );
}else if(get_color_profile_slot_r(26, 1) <= 0 && get_color_profile_slot_g(26, 1) > 0 && get_color_profile_slot_b(26, 1) >= 255){
    set_color_profile_slot( 26, 1, 0, get_color_profile_slot_g(26, 1) - 2, 255 );
    set_color_profile_slot( 26, 2, 0, get_color_profile_slot_g(26, 1) - 2, 255 );
    set_color_profile_slot( 26, 4, 0, get_color_profile_slot_g(26, 1) - 2, 255 );
    set_color_profile_slot( 26, 5, 0, get_color_profile_slot_g(26, 1) - 2, 255 );
    set_color_profile_slot( 26, 7, 0, get_color_profile_slot_g(26, 1) - 2, 255 );
}else if(get_color_profile_slot_r(26,1) < 255 && get_color_profile_slot_g(26, 1) <= 0 && get_color_profile_slot_b(26, 1) >= 255){
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 1) + 2, 0, 255 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 1) + 2, 0, 255 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 1) + 2, 0, 255 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 1) + 2, 0, 255 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 1) + 2, 0, 255 );
}else if(get_color_profile_slot_r(26,1) >= 255 && get_color_profile_slot_g(26, 1) <= 0 && get_color_profile_slot_b(26, 1) > 0){
    set_color_profile_slot( 26, 1, 255, 0, get_color_profile_slot_b(26, 1) - 2 );
    set_color_profile_slot( 26, 2, 255, 0, get_color_profile_slot_b(26, 1) - 2 );
    set_color_profile_slot( 26, 4, 255, 0, get_color_profile_slot_b(26, 1) - 2 );
    set_color_profile_slot( 26, 5, 255, 0, get_color_profile_slot_b(26, 1) - 2 );
    set_color_profile_slot( 26, 7, 255, 0, get_color_profile_slot_b(26, 1) - 2 );
}else if(get_color_profile_slot_r(26,1) >= 255 && get_color_profile_slot_g(26, 1) < 255 && get_color_profile_slot_b(26, 1) <= 0){
    set_color_profile_slot( 26, 1, 255, get_color_profile_slot_g(26, 1) + 2, 0 );
    set_color_profile_slot( 26, 2, 255, get_color_profile_slot_g(26, 1) + 2, 0 );
    set_color_profile_slot( 26, 4, 255, get_color_profile_slot_g(26, 1) + 2, 0 );
    set_color_profile_slot( 26, 5, 255, get_color_profile_slot_g(26, 1) + 2, 0 );
    set_color_profile_slot( 26, 7, 255, get_color_profile_slot_g(26, 1) + 2, 0 );
}else if(get_color_profile_slot_r(26,1) > 0 && get_color_profile_slot_g(26, 1) >= 255 && get_color_profile_slot_b(26, 1) <= 0){
    set_color_profile_slot( 26, 1, get_color_profile_slot_r(26, 1) - 2, 255, 0 );
    set_color_profile_slot( 26, 2, get_color_profile_slot_r(26, 1) - 2, 255, 0 );
    set_color_profile_slot( 26, 4, get_color_profile_slot_r(26, 1) - 2, 255, 0 );
    set_color_profile_slot( 26, 5, get_color_profile_slot_r(26, 1) - 2, 255, 0 );
    set_color_profile_slot( 26, 7, get_color_profile_slot_r(26, 1) - 2, 255, 0 );
}
if(get_color_profile_slot_r(26, 0) < 255 && get_color_profile_slot_r(1, 0) == 217){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) + 1, get_color_profile_slot_g(26, 0) + 1, get_color_profile_slot_b(26, 0) + 1 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) + 1, get_color_profile_slot_g(26, 0) + 1, get_color_profile_slot_b(26, 0) + 1 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) + 1, get_color_profile_slot_g(26, 0) + 1, get_color_profile_slot_b(26, 0) + 1 );
}else{
    set_color_profile_slot( 1, 0, 218, 193, 41 );
}
if(get_color_profile_slot_r(26, 0) > 0 && get_color_profile_slot_r(1, 0) == 218){
    set_color_profile_slot( 26, 0, get_color_profile_slot_r(26, 0) - 1, get_color_profile_slot_g(26, 0) - 1, get_color_profile_slot_b(26, 0) - 1 );
    set_color_profile_slot( 26, 3, get_color_profile_slot_r(26, 0) - 1, get_color_profile_slot_g(26, 0) - 1, get_color_profile_slot_b(26, 0) - 1 );
    set_color_profile_slot( 26, 6, get_color_profile_slot_r(26, 0) - 1, get_color_profile_slot_g(26, 0) - 1, get_color_profile_slot_b(26, 0) - 1 );
}else{
    set_color_profile_slot( 1, 0, 217, 193, 41 );
}
}