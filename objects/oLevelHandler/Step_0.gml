/// @description Insert description here
// You can write your code in this editor
if self.experience >= self.experience_to_next_level {
	self.level += 1;
	self.experience -= self.experience_to_next_level;
	self.experience_to_next_level *= self.experience_factor_increase_per_level;
	instance_deactivate_all(self);

	var levelUpScreen = instance_create_layer(
		camera_get_view_x(view_camera[0]) + view_wport[0]/2 - 300,  // workaround, cant get non-instance sprite width
		camera_get_view_y(view_camera[0]) + view_hport[0]/2 - 300, // workaround, cant get non-instance sprite height
		0,
		oLevelUpScreen
	);
}