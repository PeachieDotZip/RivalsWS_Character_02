///#args attack // this line makes code editors not freak out for some reason
if(attack == AT_FAIR){
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 35);
}else if(attack == AT_UTILT){
    set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 65);
    set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 12);
}
if(attack == AT_DSPECIAL){
    mirror_spawn = 0;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);