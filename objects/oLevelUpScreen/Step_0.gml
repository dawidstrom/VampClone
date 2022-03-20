/// @description Insert description here
// You can write your code in this editor
if self.button1.to_be_destroyed {
	abilityHandler.add_ability(self.button1.ability.ability);
	instance_destroy(self);
} else if self.button2.to_be_destroyed {
	abilityHandler.add_ability(self.button2.ability.ability);
	instance_destroy(self);
} else if self.button3.to_be_destroyed {
	abilityHandler.add_ability(self.button3.ability.ability);
	instance_destroy(self);
} else {}