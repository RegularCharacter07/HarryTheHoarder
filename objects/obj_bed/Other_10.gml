var savedata = array_create(0);

with (obj_money)
{
	var savemoney =
	{
		obj : object_get_name(object_index),
		money : money,
		y : y,
		x : x,
	}
}

with (obj_rubberduck_count)
{
	var saveduck =
	{
		obj : object_get_name(object_index),
		patitos_comprados : patitos_comprados,
		y : y,
		x : x,
	}
}

with (obj_mouseplush_count)
{
	var savemouse =
	{
		obj : object_get_name(object_index),
		ratones_comprados : ratones_comprados,
		y : y,
		x : x,
	}
}

with (globals)
{
	var saveglobals =
	{
		obj : object_get_name(object_index),
		activated1 : activated1,
		activated2 : activated2,
		y : y,
		x : x,
	}
}

with (obj_limit)
{
	var savelimit1 =
	{
		obj : object_get_name(object_index),
		ratones_restantes : ratones_restantes,
		y : y,
		x : x,
	}
}

with (obj_limit22)
{
	var saveslimit2 =
	{
		obj : object_get_name(object_index),
		patitos_restantes : patitos_restantes,
		y : y,
		x : x,
	}
}

array_push(savedata, savemoney, saveduck, savemouse, saveglobals, savelimit1, saveslimit2);

var stringy = json_stringify(savedata);
var buffy = buffer_create(string_byte_length(stringy) +1, buffer_fixed, 1);
buffer_write(buffy, buffer_string, stringy);
buffer_save(buffy, "savedgame.save");
buffer_delete(buffy)

show_debug_message("Game Saved! " + stringy);