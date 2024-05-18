if position_meeting(mouse_x,mouse_y,obj_exit)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_exit,true,false) {
		room_goto(Sala1);
	}
}