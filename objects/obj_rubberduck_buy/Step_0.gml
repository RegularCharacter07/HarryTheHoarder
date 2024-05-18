if position_meeting(mouse_x,mouse_y,obj_rubberduck_buy)
{
	image_index = 1;
	selected1 = true;
}
else
{
	image_index = 0;
	selected1 = false;
}

if mouse_check_button_pressed(mb_left) {
	if collision_point(mouse_x,mouse_y,obj_rubberduck_buy,true,false) {
		if obj_money.money >= duck_price {
			if obj_rubberduck_count.patitos_comprados < limite2{
			obj_money.money -= duck_price;
			obj_rubberduck_count.patitos_comprados += 1;
			obj_limit22.patitos_restantes -= 1;
			}
		}
	}
}

if globals.activated1 == true
{
	duck_price = 15;
	sprite_index = spr_rubberduck_buy_cupon;
}