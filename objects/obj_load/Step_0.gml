if position_meeting(mouse_x,mouse_y,obj_load)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_load,true,false) {
		if file_exists("savedgame.save"){
			event_user(0);
			room_goto(Sala1);
		}
	}
}

if !file_exists("savedgame.save"){
	object_index.visible = false;
}