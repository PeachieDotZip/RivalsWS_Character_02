set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X,  -50);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FAIR, 3, HG_DRIFT_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 3, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X,  13);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_FAIR, 2, HG_SDI_MULTIPLIER, .7);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X,  15);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -19);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 1.05);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, .9);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1.05);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, fair_proj);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, sprite_get("fair_hit"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, .44);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_PLASMA_SAFE, false);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 67);
