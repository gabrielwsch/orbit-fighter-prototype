if object_exists(belongs){
	var centro_x = belongs.x;
	var centro_y = belongs.y;
	// Atualiza o ângulo
	angulo += velocidade;
	if (angulo >= 360) angulo -= 360;

	// Atualiza a posição com base no ângulo
	x = centro_x + lengthdir_x(raio, angulo);
	y = centro_y + lengthdir_y(raio, angulo);

	// (Opcional) Aponta a espada para o centro
	image_angle = point_direction(x, y, centro_x, centro_y) + 90;
	for(var i = 0; i < array_length(global.players); i++){
		if global.players[i] == belongs continue
		var colision = instance_place(x, y, global.players[i])
		if colision{
			if hit == 0 {
				colision.life -= (damage / colision.armor)
				colision.sprite_index = spr_player_base
				colision.alarm[9] = global.received_damage
				colision.image_alpha = 0.85
				if instance_exists(colision) effect_create_above(ef_explosion, colision.x, colision.y, 0.7, c_red);
				if loose == 1 loose = 0
				hits++
			}
			if hit == 0 and hits >= need_hits{
				velocidade *= -1
				alarm[0] = 5
				hit = 1
			}
	}
}
} else instance_destroy(id)
