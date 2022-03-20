/// @description Insert description here
// You can write your code in this editor

if self.player != noone and distance_to_object(self.player) < 200 {
	direction = point_direction(x, y, self.player.x, self.player.y);
	speed += 2;
}