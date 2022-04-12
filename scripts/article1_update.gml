anim_timer++;
if(hit_timer > 0){
    sprite_index = sprite_get("mirror_spin");
}else{
    sprite_index = sprite_get("mirror_" + string(angle));
}
mask_index = sprite_get("mirror_box");
image_index = anim_timer / 6;
depth = player_id.depth - 2

var touch_box = instance_place(x, y, pHitBox);

if(instance_exists(touch_box) && touch_box.player_id = player_id && (touch_box.attack == AT_FTILT || touch_box.attack == AT_UTILT || touch_box.attack == AT_FAIR) && hit_timer == 0){
    switch(angle){
        case 0:
        if(touch_box.attack == AT_FTILT){
            if(touch_box.hsp > 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            touch_box.hsp = -touch_box.vsp;
            touch_box.vsp = 0;
            touch_box.hitbox_timer = 0;
            touch_box.mirror_angle = 90;
        }else if(touch_box.attack == AT_FAIR){
            if(touch_box.hsp > 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }
        hit_timer = 60;
        break;
        case 1:
        if(touch_box.attack == AT_FTILT){
            touch_box.vsp = -1 * abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_FAIR){
            touch_box.mirror_angle = 90;
            touch_box.vsp = -1 * abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }
        hit_timer = 60;
        break;
        case 2:
        if(touch_box.attack == AT_FTILT){
            if(touch_box.hsp < 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            touch_box.hsp = touch_box.vsp;
            touch_box.vsp = 0;
            touch_box.hitbox_timer = 0;
            touch_box.mirror_angle = 90;
        }else if(touch_box.attack == AT_FAIR){
            if(touch_box.hsp < 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }
        hit_timer = 60;
        break;
        case 3:
        if(touch_box.attack == AT_FTILT){
            touch_box.vsp = abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            touch_box.vsp *= -1;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_FAIR){
            touch_box.mirror_angle = 90;
            touch_box.vsp = abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }
        hit_timer = 60;
        break;
    }
}

if(hit_timer >= 1){
    hit_timer--;
}