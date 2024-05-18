if position_meeting(mouse_x,mouse_y,obj_interactuar)
{
	image_index = 1;
	
}
else
{
	image_index = 0;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_interactuar,true,false) {
		event_user(0);
		saved = true;
		alarm[0] = 200;
	}
}