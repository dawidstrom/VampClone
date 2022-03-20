if alarm[0] == 0 {
	self.player = instance_find(oPlayer, 0);
	alarm[0] = self.attack_cooldown;
	instance_create_layer(player.x, player.y, 0, oRadianceAttack);
}