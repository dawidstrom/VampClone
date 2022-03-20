/// @description Insert description here
// You can write your code in this editor
if self.ability == noone {
	return;
}
if device_mouse_check_button_released(0, mb_left) and point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height) {
	self.to_be_destroyed = true;
	draw_sprite(sButton,0, x, y);
} else if device_mouse_check_button(0, mb_left) and point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height) {
	draw_sprite(sButton,1, x, y);
	if self.ability != noone {
		draw_sprite(self.ability.icon, 1, x+self.ability_padding, y+self.ability_padding);
	}
} else {
	draw_sprite(sButton,0, x, y);
	if self.ability != noone {
		draw_sprite(self.ability.icon, 0, x+self.ability_padding, y+self.ability_padding);
	}
}