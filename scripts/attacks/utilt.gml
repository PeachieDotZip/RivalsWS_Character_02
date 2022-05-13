set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .21);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_UTILT,2);


set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5.2);
set_hitbox_value(AT_UTILT, 1, HG_FINAL_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, .7);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, .7);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 35);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -59);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 12);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 91);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .44);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6.7);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, halo);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .44);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -33);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 2, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 2, HG_DRIFT_MULTIPLIER, .7);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, empty);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("halo_projectile"));
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_MASK, sprite_get("utilt_hit"));
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, halodestroy);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
