anim_timer++;

if(hit_timer > 0 && destroye = 0){
    sprite_index = sprite_get("mirror_spin");
}else if(hit_timer == 0 && destroye = 0){
    sprite_index = sprite_get("mirror_" + string(angle));
}else{
    sprite_index = sprite_get("mirror_break");
}
mask_index = sprite_get("mirror_box");
image_index = anim_timer / 6;
depth = player_id.depth - 2

touch_box = instance_place(x, y, pHitBox);

if(player_id.window == 2 && player_id.anglable = 0 && player_id.attack == AT_DSPECIAL){
    moving = true;
	if(player_id.joy_pad_idle){
		hsp = 0
		vsp = 0
	}else{
	    hsp = 4 * cos(degtorad(player_id.joy_dir));
	    vsp = -4 * sin(degtorad(player_id.joy_dir));
	}
	image_alpha = abs(1 - ((anim_timer % 80) / 40));
}else{
    image_alpha = 1;
    moving = false;
}

if(moving == false && prev_moving == true){
    var mirror_appear = spawn_hit_fx(x - 26, y - 16, halo_creation);
    	mirror_appear.depth = -10;
    	mirror_appear.spr_dir = 1;
}

prev_moving = moving;

if(instance_exists(touch_box) && touch_box.player_id = player_id && 
(touch_box.attack == AT_FTILT || touch_box.attack == AT_UTILT || touch_box.attack == AT_FAIR) && 
hit_timer == 0 && touch_box.reflected = 0){
    touch_box.reflected = 1;
     var mirror_touched_vfx = spawn_hit_fx(x + 20, y + 20, 302);
     mirror_touched_vfx.depth = -21;
    switch(angle){
        case 0:
        if(touch_box.attack == AT_FTILT){
            ftilt_timer += 20;
            if(touch_box.hsp > 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            hit_timer = 60;
            touch_box.hsp = -touch_box.vsp;
            touch_box.vsp = 0;
            touch_box.hitbox_timer = 0;
            touch_box.mirror_angle = 90;
        }else if(touch_box.attack == AT_FAIR){
            hit_timer = 60;
            if(touch_box.hsp > 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }
        break;
        case 1:
        if(touch_box.attack == AT_FTILT){
            ftilt_timer += 20;
            ftilt_timer += 20;
            touch_box.vsp = -1 * abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            hit_timer = 60;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_FAIR){
            hit_timer = 60;
            touch_box.mirror_angle = 90;
            touch_box.vsp = -1 * abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }
        break;
        case 2:
        if(touch_box.attack == AT_FTILT){
            ftilt_timer += 20;
            ftilt_timer += 20;
            if(touch_box.hsp < 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            hit_timer = 60;
            touch_box.hsp = touch_box.vsp;
            touch_box.vsp = 0;
            touch_box.hitbox_timer = 0;
            touch_box.mirror_angle = 90;
        }else if(touch_box.attack == AT_FAIR){
            hit_timer = 60;
            if(touch_box.hsp < 0){
                touch_box.hsp *= 2
            }else{
                touch_box.hsp *= -1
            }
            touch_box.hitbox_timer = 0;
        }
        break;
        case 3:
        if(touch_box.attack == AT_FTILT){
            ftilt_timer += 20;
            ftilt_timer += 20;
            touch_box.vsp = abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_UTILT){
            hit_timer = 60;
            touch_box.vsp *= -1;
            touch_box.hitbox_timer = 0;
        }else if(touch_box.attack == AT_FAIR){
            hit_timer = 60;
            touch_box.mirror_angle = 90;
            touch_box.vsp = abs(touch_box.hsp);
            touch_box.hsp = 0;
            touch_box.hitbox_timer = 0;
        }
        break;
    }
}else if(instance_exists(touch_box) && touch_box.type = 1 && destroye = 0) || (player_id.state == PS_RESPAWN && player_id.state_timer == 0){
    anim_timer = 0;
    destroye = 1;
}

if(ftilt_timer == 60){
    hit_timer = 60;
    ftilt_timer = 0;
}

if(hsp != 4 && hsp != -4 && vsp != 4 && vsp != -4 && player_id.anglable = 0 && moving = false){
    if(anim_timer % 60 < 30){
        vsp = 0.2;
    }else{
        vsp = -0.2;
    }
    hsp = 0;
}

//Makes hit_timer go down by 1 every frame
if(hit_timer >= 1){
    hit_timer--;
}

//Keeps player from being able to move the mirror while it is spinning
move_cooldown[AT_DSPECIAL] = hit_timer;

//Destroys object
if(destroye = 1 && anim_timer == 30){
    instance_destroy(self);
}