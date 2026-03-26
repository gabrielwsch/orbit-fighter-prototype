trails()

if life <= 0 instance_destroy(id)
/*
for (var ii = 0; ii < array_length(global.players); ii++){
	if global.players[ii] == object_index {
		myself = global.players[ii]
		trails()
	}
}
*/


var deve_rebater = false;

// Rebote com parede
if (place_meeting(x + hspeed, y + vspeed, obj_walls)) {
	trails(0)
    move_bounce_solid(true);
}

// Rebote com outros players (sem usar with)
var inst_total = instance_number(obj_player_base);
for (var i = 0; i < inst_total; i++) {
    var outro = instance_find(obj_player_base, i);
    
    if (outro.id != id) {
        if (place_meeting(x + hspeed, y + vspeed, outro)) {
            deve_rebater = true;
			
            break; // já achou, não precisa continuar
        }
    }
}

// Se colidiu com outro, aplica rebote
if (deve_rebater) {
	trails(0)
    move_bounce_solid(true);
}
