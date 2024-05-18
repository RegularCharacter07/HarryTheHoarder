if position_meeting(mouse_x,mouse_y,obj_salario_button)
{
	image_index = 1;
	selected4 = true;
}
else
{
	image_index = 0;
	selected4 = false;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_salario_button,true,false) {
		if obj_money.money >= boost_money {
			if globals.activated2 == false{
			obj_money.money -= boost_money;
			globals.activated2 = true;
			}
		}
	}
}

if globals.activated1 == true
{
	boost_money = 250;
	sprite_index = spr_salario_button_cupon;
}