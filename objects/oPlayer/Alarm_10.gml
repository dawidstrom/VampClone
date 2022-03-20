if alarm[10] == 0 {
	instance_create_layer(x, y, 0, oPlayerFade);
	alarm[10] = self.fade_spawn_cooldown;
}