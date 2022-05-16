var temp_x = x;
var temp_y = y;

var num_alts = 27;
var alt_cur = get_player_color(player);
if "prev_alt" not in self {
       prev_alt = 0;  
}

if "sound_played" not in self {
       sound_played = 0;  
}

// Intro Sound
if(sound_played == 0){
    sound_play(sound_get("css_sound"), false, false, 1.5);
    sound_played = 1;
}

//alt names
alt_name[0] = "02";
alt_name[1] = "rotten yellow";
alt_name[2] = "wilted green";
alt_name[3] = "bloody red";
alt_name[4] = "frozen blue";
alt_name[5] = "the pink demon";
alt_name[6] = "failed artist";
alt_name[7] = "cowardly goon";
alt_name[8] = "gluttonous prick";
alt_name[9] = "incompetent warrior";
alt_name[10] = "general matter";
alt_name[11] = "nightmare from the dark";
alt_name[12] = "souless liar";
alt_name[13] = "general dark mind";
alt_name[14] = "souless paintress";
alt_name[15] = "star of darkness";
alt_name[16] = "Necrodeus, god of the dead";
alt_name[17] = "please stop the microtransactions magolor this isn't funny anymore i want to play this game";
alt_name[18] = "now im evil";
alt_name[19] = "warrior from the past";
alt_name[20] = "unfortunate friend";
alt_name[21] = "blossoming beauty";
alt_name[22] = "machine of the stars";
alt_name[23] = "literally who";
alt_name[24] = "officiant of doom";
alt_name[25] = "dark lord of despair";
alt_name[26] = "a mysterious soul...";
alt_name[27] = "fluttering dreameater";
alt_name[28] = "the ultimate life-form";
alt_name[29] = "species born of chaos";
alt_name[30] = "why";
alt_name[31] = "VAE";

draw_set_halign(fa_left);

if "alpher" not in self {
       alpher = 1;
}

if "alpher_alt" not in self {
       alpher_alt = 0;
}

if(alpher > 0){
    alpher -= 0.05;
}

if(alpher_alt > 0){
    alpher_alt -= 0.05;
}

if(alt_cur != prev_alt){
    alpher_alt = 5
}

prev_alt = alt_cur;

//alt name
textDraw(temp_x + 14, temp_y + 115, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 14, temp_y + 113, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 14, temp_y + 111, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 10, temp_y + 115, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 10, temp_y + 113, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 10, temp_y + 111, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 12, temp_y + 115, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 12, temp_y + 111, "fName", (alt_cur = 10 || alt_cur = 15 || alt_cur = 27? c_white: c_black), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
textDraw(temp_x + 12, temp_y + 113, "fName", make_color_rgb(get_color_profile_slot_r(alt_cur, 0), get_color_profile_slot_g(alt_cur, 0), get_color_profile_slot_b(alt_cur, 0)), 0, 100000, 1, false, alpher_alt, alt_name[alt_cur])
if(alt_cur == 26){
    init_shader();
}


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color, outline)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], argument[5]);



