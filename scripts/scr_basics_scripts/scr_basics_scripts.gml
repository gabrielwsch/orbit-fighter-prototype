function trails(t = 1){
	create_trail = noone
	create = 0
	for (var i = 0; i < array_length(global.players); i++){
		if global.players[i] == object_index{
			create_trail = global.trails[i]
			if t == 0 {
				instance_create_layer(x, y, layer, global.explosion[i])
			}
			break
		}
	}
	if create == 0 and create_trail != noone{
		instance_create_layer(x,y,layer,create_trail)
	}
}	
function exists(_id){
	if instance_exists(_id) {
		return true
	}
}