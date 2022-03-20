/// @description Insert description here
// You can write your code in this editor

var hp_width = 100;
var hp_height = 20;
var hp_y_offset = 70;

var hp_x_start = x - camera_get_view_x(view_camera[0]) - hp_width/2;
var hp_x_end = x - camera_get_view_x(view_camera[0]) + hp_width/2;

var hp_y_start = hp_y_offset + y - camera_get_view_y(view_camera[0]);
var hp_y_end =  hp_y_offset + y - camera_get_view_y(view_camera[0]) + hp_height;

draw_healthbar(hp_x_start, hp_y_start, hp_x_end, hp_y_end, self.hp, c_black, c_red, c_red, 0, true, false);