if position_meeting(mouse_x,mouse_y,obj_mouseplush_buy)
{
	image_index = 1;
	selected2 = true;
}
else
{
	image_index = 0;
	selected2 = false;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_mouseplush_buy,true,false) {
		if obj_money.money >= mouse_price {
			if obj_mouseplush_count.ratones_comprados < limite1{
			obj_money.money -= mouse_price;
			obj_mouseplush_count.ratones_comprados += 1;
			obj_limit.ratones_restantes -= 1;
			}
		}
	}
}

if globals.activated1 == true
{
	mouse_price = 20;
	sprite_index = spr_mouseplush_buy_cupon;
}