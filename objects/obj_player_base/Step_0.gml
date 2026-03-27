// 1. Gestão de Vida
if (life <= 0) {
    instance_destroy();
    exit; // Interrompe o evento aqui para não calcular o resto se o objeto morreu
}

// 2. Efeitos Visuais
trails();

// 3. Verificação de Colisões (Paredes e Outros Players)
// Usamos instance_place para evitar loops manuais pesados
var _colisao_parede = place_meeting(x + hspeed, y + vspeed, obj_walls);
var _colisao_player = instance_place(x + hspeed, y + vspeed, obj_player_base);

// Se houver qualquer colisão (e se a colisão de player não for comigo mesmo)
if (_colisao_parede || (_colisao_player != noone && _colisao_player != id)) {
    trails(0);
    move_bounce_solid(true);
}