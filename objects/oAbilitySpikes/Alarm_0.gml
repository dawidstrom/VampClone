if alarm[0] == 0 {
	alarm[0] = self.attack_cooldown;
	self.player = instance_find(oPlayer, 0);
	if self.player != noone {
		var attack = instance_create_layer(self.player.x, self.player.y, 0, oAttackSpikes);
	}
}