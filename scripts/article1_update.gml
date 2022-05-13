anim_timer++;
if(angle >= 8){
	angle = 0;
}else if(angle <= -1){
	angle = 7;
}


if(hit_timer > 0 && destroye = 0){
    sprite_index = sprite_get(string(angle) + "_mirror_hit");
    image_index = (18 - hit_timer) / 3;
}else if(hit_timer == 0 && destroye = 0){
    sprite_index = sprite_get("mirror");
    image_index = angle;
}else{
    sprite_index = sprite_get("mirror_break");
    image_index = anim_timer / 6;
}
mask_index = sprite_get("mirror_mask");
depth = player_id.depth - 2

touch_box = instance_place(x, y, pHitBox);

if(instance_exists(touch_box) && touch_box.player_id = player_id &&
(touch_box.attack == AT_FTILT || touch_box.attack == AT_UTILT || touch_box.attack == AT_FAIR) && touch_box.reflected = 0){
    touch_box.reflected = 1;
    switch(angle){
        case 0:
		if(touch_box.hsp != 0){
			hit_timer = 18;
        	touch_box.hsp *= -1
        	touch_box.hitbox_timer = 0;
        	touch_box.image_index = 0;
        	touch_box.damage *= 1.05
        }
        break;
        case 1:
		hit_timer = 18;
		var prev_vsp = touch_box.vsp;
        touch_box.vsp = touch_box.hsp;
        touch_box.hsp = prev_vsp;
        touch_box.hitbox_timer = 0;
        touch_box.image_index = 0;
        touch_box.mirror_angle = 90;
        touch_box.image_yscale = touch_box.xscale;
        touch_box.image_xscale = touch_box.yscale;
        touch_box.damage *= 1.05
        break;
        case 2:
        if(touch_box.vsp != 0){
			hit_timer = 18;
        	touch_box.vsp *= -1
        	touch_box.hitbox_timer = 0;
        	touch_box.image_index = 0;
        	touch_box.damage *= 1.05
        }
        break;
        case 3:
        hit_timer = 18;
		var prev_vsp = touch_box.vsp;
        touch_box.vsp = touch_box.hsp * -1;
        touch_box.hsp = prev_vsp * -1;
        touch_box.hitbox_timer = 0;
        touch_box.image_index = 0;
        touch_box.mirror_angle = 90;
        touch_box.image_yscale = touch_box.xscale;
        touch_box.image_xscale = touch_box.yscale;
        touch_box.damage *= 1.05
        break;
        case 4:
        if(touch_box.hsp != 0){
			hit_timer = 18;
        	touch_box.hsp *= -1
        	touch_box.hitbox_timer = 0;
        	touch_box.image_index = 0;
        	touch_box.damage *= 1.05
        }
        break;
        case 5:
        hit_timer = 18;
		var prev_vsp = touch_box.vsp;
        touch_box.vsp = touch_box.hsp;
        touch_box.hsp = prev_vsp;
        touch_box.hitbox_timer = 0;
        touch_box.image_index = 0;
        touch_box.mirror_angle = 90;
        touch_box.image_yscale = touch_box.xscale;
        touch_box.image_xscale = touch_box.yscale;
        touch_box.damage *= 1.05
        break;
        case 6:
        if(touch_box.vsp != 0){
			hit_timer = 18;
    		touch_box.vsp *= -1
    		touch_box.hitbox_timer = 0;
    		touch_box.image_index = 0;
    		touch_box.damage *= 1.05
        }
        break;
        case 7:
        hit_timer = 18;
		var prev_vsp = touch_box.vsp;
        touch_box.vsp = touch_box.hsp * -1;
        touch_box.hsp = prev_vsp * -1;
        touch_box.hitbox_timer = 0;
        touch_box.image_index = 0;
        touch_box.mirror_angle = 90;
        touch_box.image_yscale = touch_box.xscale;
        touch_box.image_xscale = touch_box.yscale;
        touch_box.damage *= 1.05
        break;
    }
}else if(instance_exists(touch_box) && touch_box.type = 1 && destroye = 0) || (player_id.state == PS_RESPAWN && player_id.state_timer == 0){
    anim_timer = 0;
    destroye = 1;
}

vsp = sin(degtorad((anim_timer * 4) % 360)) * 0.8 * -1;
hsp = 0;

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