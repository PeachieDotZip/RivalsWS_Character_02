//mirror arrow stuff
if(selected == 0 && instance_exists(mirror1)){
    draw_sprite_ext(sprite_get("arrow"), get_player_team(player - 1), mirror1.x - 6, mirror1.y - 48, 2, 2, 0, c_white, 1);
}else if(selected == 1 && instance_exists(mirror2)){
    draw_sprite_ext(sprite_get("arrow"), get_player_team(player - 1), mirror2.x - 6, mirror2.y - 48, 2, 2, 0, c_white, 1);
}