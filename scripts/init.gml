/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The commented-out numbers are the range of values the RoA
 * base cast has - e.g. it lists the slowest and fastest run speeds.
 * 
 * Replace Zetter's stats with whatever strengths/weaknesses your char should
 * have, e.g. change dash_speed to 8 or so if you want a fast character.
 *
 * Explanation of each stat:
 * https://rivalsofaether.com/player-variables/
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 * 
 * Base Cast Stats:
 * docs.google.com/spreadsheets/d/14JIjL_5t81JHqnJmU6BSsRosTe2JO8sFGUysM_9tDoU
 */

// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .93;		// 0.9  -  1.2

// Ground movement
walk_speed          = 2.9;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 10;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 5.95;		// 4    -  9
dash_speed          = 4.95;		// 5    -  9
dash_turn_time      = 12;		// 8    -  20
dash_turn_accel     = 1;		// 0.1  -  2
dash_stop_time      = 12;		// 4    -  6
dash_stop_percent   = 0.45;		// 0.25 -  0.5
ground_friction     = 0.29;		// 0.3  -  1
moonwalk_accel      = 1.33;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 7.8;		// 4    -  8
air_max_speed       = 4.6;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.36;		// 0.2  -  0.4
prat_fall_accel     = 0.77;		// 0.25 -  1.5
air_friction        = 0.033;		// 0.02 -  0.07
max_fall            = 5.15;		// 6    -  11
fast_fall           = 8.8;		// 11   -  16
gravity_speed       = 0.33;		// 0.3  -  0.6
hitstun_grav        = 0.4;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 8.8;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6.66;		// 4    -  7.4
djump_speed         = 8.5;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 3;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 6.66;		// 4    -  7
walljump_vsp        = 7;		// 7    -  10
land_time           = 9;		// 4    -  6
prat_land_time      = 12;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.21;		// 0    -  0.15
roll_forward_max    = 8.2;        // 9    -  11
roll_backward_max   = 8.2;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.1;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.77;      // 7.5  -  8
techroll_speed      = 8;       // 8    -  11



    // --- Character-specific assets init ---

//Sprites
fair_proj = sprite_get("fair_projectile");
sprite_change_offset("fair_projectile", 29, 16);

sprite_change_offset("mirror_up", 19, 28);
sprite_change_offset("mirror_right", 19, 28);
sprite_change_offset("mirror_down", 19, 28);
sprite_change_offset("mirror_left", 19, 28);

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
empty = hit_fx_create(sprite_get ("empty_hfx"), 21);
sprite_change_offset("empty_hfx", 16, 16);

sprite_change_offset("star_projectile", 9, 9);
starhit =  hit_fx_create( sprite_get( "star_explosion" ), 18);
sprite_change_offset("star_explosion", 25, 25);

cactushit =  hit_fx_create( sprite_get( "cactus_hfx" ), 15);
sprite_change_offset("cactus_hfx", 25, 25);

halohit =  hit_fx_create( sprite_get( "halo_hfx" ), 17);
sprite_change_offset("halo_hfx", 25, 25);
sprite_change_offset("halo_projectile", 30, 5);
halo_creation =  hit_fx_create( sprite_get( "halo_creation" ), 10);

magolorhit =  hit_fx_create( sprite_get( "magolor_hfx" ), 22);
sprite_change_offset("magolor_hfx", 25, 25);
magolortipperhit =  hit_fx_create( sprite_get( "magolor_tipper_hfx" ), 33);
sprite_change_offset("magolor_tipper_hfx", 25, 25);

bloodhit =  hit_fx_create( sprite_get( "blood_hfx" ), 16);
sprite_change_offset("blood_hfx", 25, 25);

bloodhitparticle = set_hit_particle_sprite(1, sprite_get( "blood_pfx" ) );
sprite_change_offset("blood_pfx", 25, 25);
//cactushitparticle = set_hit_particle_sprite(2, sprite_get( "cactus_pfx" ) );
//sprite_change_offset("cactus_pfx", 25, 25);

// Variables
timer = 0;
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)

blood = 6;
cactus = 9;
halo = 12;

//dspecial variables
mirror1 = noone;
mirror2 = noone;
mirror_spawn = 0;
selected = 0;
temp_cooldown = 0;
rotation_timer = 0;
dspecialfloat = 0;

has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



    // --- Animation Info ---

// Misc. animation speeds
idle_anim_speed     = 0.21;
crouch_anim_speed   = 0.133;
walk_anim_speed     = 0.135;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 26;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 7;
crouch_recovery_frames  = 3;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = sprite_get("hurtbox_crouch");
air_hurtbox_spr     = sprite_get("hurtbox_air");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);