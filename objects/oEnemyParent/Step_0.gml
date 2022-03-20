/// @description Insert description here
// You can write your code in this editor
if self.hp <= 0 {
	instance_destroy(self);
	instance_create_layer(x,y,0,oExperience);
}

direction = point_direction(x, y, self.player.x, self.player.y);
