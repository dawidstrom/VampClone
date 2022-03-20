if can_take_damage {
	draw_sprite(sPlayer, image_index, x, y);
} else {
	draw_sprite(sPlayerDamaged, image_index, x, y);
}