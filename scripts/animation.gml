//animation

if (state == PS_IDLE_AIR ) {
sprite_index = sprite_get( "idle_air" );
}
if phone_attacking && attack == AT_UAIR{
	if (window == 2 && window_timer < 20){
		hud_offset = lerp(hud_offset, 65, .4);
	}
	if (window == 2 && window_timer >= 20){
		hud_offset = hud_offset;
	}
	if (window == 3 && window_timer <= 7){
		hud_offset = 100;
	}
	if (window == 3 && window_timer > 7){
		hud_offset = lerp(hud_offset, 0, .5);
	}
	if (window == 4){
		hud_offset = 0;
	}
}