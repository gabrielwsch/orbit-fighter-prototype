if write == 1 {
	for (var i = 0; i < array_length(global.players); i++){
		if exists(global.players[i]) {
			array_push(exist, global.players[i])
		}
	}
}
write = 0