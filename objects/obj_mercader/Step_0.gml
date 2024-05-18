if position_meeting(mouse_x,mouse_y,obj_interact2)
{
	sprite_index = spr_mercader_select
}
else
{
	sprite_index = spr_mercader
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_interact2,true,false) {
		room_goto(Boost);
	}
}