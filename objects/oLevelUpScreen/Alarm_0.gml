// Creates hail of gemstones for level-up screen
if alarm[0] == 0 {
	if random(100) < self.chance {
		var gemstone = instance_create_layer(x, y, 0, oGemstone);
		with gemstone {
			switch floor(random(4)) {
				case 0:
					self.sprite_index = sGemstone1;
					break;
				case 1:
					self.sprite_index = sGemstone2;
					break;
				case 2:
					self.sprite_index = sGemstone3;
					break;
				case 3:
					self.sprite_index = sGemstone4;
					break;
				default:
					break;
			}
		}
	}
	alarm[0] = self.gemstone_cooldown;
}