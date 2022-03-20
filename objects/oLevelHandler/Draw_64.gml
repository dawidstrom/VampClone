draw_healthbar(0, 0, camera_get_view_width(view_camera[0]), 30, self.experience/self.experience_to_next_level*100,c_gray,c_teal,c_teal,0,true, true);

draw_set_font(NormalText);
draw_text(camera_get_view_width(view_camera[0])/2, 5, "LVL: " + string(self.level));

draw_set_font(TitleText);
draw_text(camera_get_view_width(view_camera[0])-200, 30, "GOLD: " + string(self.coins));