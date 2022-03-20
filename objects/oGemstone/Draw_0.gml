
var scale = (camera_get_view_height(view_camera[0]) - (y - camera_get_view_y(view_camera[0]))) / camera_get_view_height(view_camera[0]);

draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);