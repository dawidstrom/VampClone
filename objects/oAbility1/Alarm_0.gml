if alarm[0] == 0 {
	alarm[0] = self.attack_cooldown;
	var target = instance_find(oEnemy1, irandom(instance_number(oEnemy1) -1));
	self.player = instance_find(oPlayer, 0);
	if target != noone and self.player != noone {
		var attack = instance_create_layer(self.player.x, self.player.y, 0, oAttack1);
		with attack {
			self.direction = point_direction(other.player.x, other.player.y, target.x, target.y);
		}
	}
}