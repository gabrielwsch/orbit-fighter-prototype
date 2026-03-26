// Inherit the parent event
trails()
if life <= 0 instance_destroy(id)
/*
if imune == 1 {
	last_breath = 1
	image_alpha = 0.75
}
if life <= 0 and last_breath == 1{
	life = 1
	if first_last_breath == 1 speed += 5
	if first_last_breath == 1 damage += 10
	if first_last_breath == 1 imune = 1
	if first_last_breath == 1 alarm[8] = 60
	if first_last_breath == 1 tempo -= 4
	last_breath = 0
	first_last_breath = 0
} else if life <= 0 and last_breath == 0 instance_destroy(id)
*/
var deve_rebater = false;

// Rebote com parede
if (place_meeting(x + hspeed, y + vspeed, obj_walls)) {
    move_bounce_solid(true);
}

// Rebote com outros players (sem usar with)
var inst_total = instance_number(obj_player_base);
for (var i = 0; i < inst_total; i++) {
    var outro = instance_find(obj_player_base, i);
    
    if (outro.id != id) {
        if (place_meeting(x + hspeed, y + vspeed, outro)) {
            deve_rebater = true;
			if hit == 0 {
			outro.life -= (damage / outro.armor)
			outro.sprite_index = spr_player_base
			outro.alarm[9] = global.received_damage
			outro.image_alpha = 0.85
			if instance_exists(outro) effect_create_above(ef_explosion, outro.x, outro.y, 0.7, c_red);
			alarm[0] = tempo
			speed += 4.5
			hit = 1
		}
            break; // já achou, não precisa continuar
        }
    }
}

// Se colidiu com outro, aplica rebote
if (deve_rebater) {
    move_bounce_solid(true);
}
/*
for(var i = 0; i < array_length(global.players); i++){
	if global.players[i] == belongs continue
	var colision = instance_place(x, y, global.players[i])
	if colision{

	}
}
*/

