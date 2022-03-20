/// @description Insert description here
// You can write your code in this editor
if alarm[0] == 0 {
	alarm[0] = self.spawn_cooldown
	var spawn_quadrant_chance = irandom(100);

	var spawn_x = 0;
	var spawn_y = 0;

	if spawn_quadrant_chance < 25 { // left quadrant spawn
		spawn_x = irandom_range(
			camera_get_view_x(view_camera[0]) - self.spawn_margin_max,
			camera_get_view_x(view_camera[0]) - self.spawn_margin_min
		);
		spawn_y = irandom_range(
			camera_get_view_y(view_camera[0]) - self.spawn_margin_max,
			camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + self.spawn_margin_max
		);
	} else if spawn_quadrant_chance >= 25 and spawn_quadrant_chance < 50 { // right quadrant spawn
		spawn_x = irandom_range(
			camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + self.spawn_margin_min,
			camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + self.spawn_margin_max
		);
		spawn_y = irandom_range(
			camera_get_view_y(view_camera[0]) - self.spawn_margin_max,
			camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + self.spawn_margin_max
		);
	} else if spawn_quadrant_chance >= 50 and spawn_quadrant_chance < 75 { // top quadrant spawn
		spawn_x = irandom_range(
			camera_get_view_x(view_camera[0]),
			camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])
		);
		spawn_y = irandom_range(
			camera_get_view_y(view_camera[0]) - self.spawn_margin_max,
			camera_get_view_y(view_camera[0]) - self.spawn_margin_min
		);
	} else { // bottom quadrant spawn
		spawn_x = irandom_range(
			camera_get_view_x(view_camera[0]),
			camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])
		);
		spawn_y = irandom_range(
			camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + self.spawn_margin_max,
			camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + self.spawn_margin_min
		);
	}
	instance_create_layer(spawn_x, spawn_y, 0, oEnemy1);
}