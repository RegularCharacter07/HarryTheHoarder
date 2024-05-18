with (obj_money) instance_destroy();
with (obj_mouseplush_count) instance_destroy();
with (obj_rubberduck_count) instance_destroy();
with (globals) instance_destroy();
with (obj_limit22) instance_destroy();
with (obj_limit) instance_destroy();

if (file_exists("savedgame.save"))
{
	var buffy = buffer_load("savedgame.save");
	var stringy = buffer_read(buffy, buffer_string);
	buffer_delete(buffy);
	
	var loaddata = json_parse(stringy);
	
	while (array_length(loaddata) > 5)
	{
		var loadmoney = array_get(loaddata, 0);
		with (instance_create_layer(0,0,layer,asset_get_index(loadmoney.obj)))
		{
			money = loadmoney.money;
			x = loadmoney.x
			y = loadmoney.y
		}
		var loadduck = array_get(loaddata, 1);
		with (instance_create_layer(0,0,layer,asset_get_index(loadduck.obj)))
		{
			patitos_comprados = loadduck.patitos_comprados
			x = loadduck.x
			y = loadduck.y
		}
		var loadmouse = array_get(loaddata, 2);
		with (instance_create_layer(0,0,layer,asset_get_index(loadmouse.obj)))
		{
			ratones_comprados = loadmouse.ratones_comprados
			x = loadmouse.x
			y = loadmouse.y
		}
		var loadglobals = array_get(loaddata, 3);
		with (instance_create_layer(0,0,layer,asset_get_index(loadglobals.obj)))
		{
			activated1 = loadglobals.activated1
			activated2 = loadglobals.activated2
			x = loadglobals.x
			y = loadglobals.y
		}
		var loadlimit1 = array_get(loaddata, 4);
		with (instance_create_layer(0,0,layer,asset_get_index(loadlimit1.obj)))
		{
			ratones_restantes = loadlimit1.ratones_restantes
			x = loadlimit1.x
			y = loadlimit1.y
		}
		var loadlimit22 = array_pop(loaddata);
		with (instance_create_layer(0,0,layer,asset_get_index(loadlimit22.obj)))
		{
			patitos_restantes = loadlimit22.patitos_restantes
			x = loadlimit22.x
			y = loadlimit22.y
		}
	}
	show_debug_message("GameLoaded! " + stringy);
}