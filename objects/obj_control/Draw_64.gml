draw_set_color(c_white)
yy = 0;
for (var i = 0; i < array_length(exist); i++) {
	if exists(exist[i]){
	    var p = exist[i];
	    var weapon = object_get_name(p.object_index);

	    // remove pedaços fixos
	    weapon = string_replace_all(weapon, "obj_", "");
	    weapon = string_replace_all(weapon, "_player", "");
	    weapon = string_replace_all(weapon, "player_", "");
	    weapon = string_replace_all(weapon, "player", "");

	    draw_text(20, 13.86 + yy, string(weapon) + " HP: " + string(ceil(p.life)));
	    yy += 20;
	}
}

draw_set_color(0)