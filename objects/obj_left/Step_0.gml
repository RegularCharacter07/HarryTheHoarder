if position_meeting(mouse_x,mouse_y,obj_left)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_left,true,false) {
		room_goto_previous();
	}
}