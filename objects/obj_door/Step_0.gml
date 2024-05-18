if position_meeting(mouse_x,mouse_y,obj_door)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if mouse_check_button(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_door,true,false) {
		room_goto(Sala2);
	}
}