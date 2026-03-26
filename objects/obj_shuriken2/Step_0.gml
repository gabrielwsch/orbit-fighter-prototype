if exists(belongs) {
	image_angle += 35
	if direction01 == 1{
		for(var i = 0; i < array_length(global.players); i++){
			if global.players[i] == obj_shuriken_player continue
			if exists(global.players[i]) {
				direction = point_direction(x, y, global.players[i].x, global.players[i].y)
			}
		}
	}
	direction01 = 0
		for(var i = 0; i < array_length(global.players); i++){
			if global.players[i] == obj_shuriken_player continue
			var colision = instance_place(x, y, global.players[i])
			if colision{
				colision.life -= (damage / colision.armor)
				colision.sprite_index = spr_player_base
				colision.alarm[9] = global.received_damage
				colision.image_alpha = 0.85
				if instance_exists(colision) effect_create_above(ef_explosion, colision.x, colision.y, 0.7, c_red);
				instance_destroy(id)
			}
		}
		for(var i = 0; i < array_length(global.arms); i++){
			if global.arms[i] == obj_shuriken continue
			var colision = instance_place(x, y, global.arms[i])
			if colision{
				instance_destroy(id)
			}
		}
} else instance_destroy(id)