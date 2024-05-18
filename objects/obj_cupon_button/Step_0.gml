if position_meeting(mouse_x,mouse_y,obj_cupon_button)
{
	image_index = 1;
	selected3 = true;
}
else
{
	image_index = 0;
	selected3 = false;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_cupon_button,true,false) {
		if obj_money.money >= 350 {
			if globals.activated1 == false{
			obj_money.money -= 350;
			globals.activated1 = true;
			}
		}
	}
}