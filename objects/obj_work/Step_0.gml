if position_meeting(mouse_x,mouse_y,obj_work)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_work,true,false) {
		obj_money.money += dinero_click;
	}
}

if globals.activated2 == true
{
	dinero_click = 2;
}