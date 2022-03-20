/// @description Insert description here
// You can write your code in this editor
self.fade_duration -= 1;

if (self.fade_duration <= 0) {
	instance_destroy(self);
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_gray, self.fade_duration/self.fade_duration_start);