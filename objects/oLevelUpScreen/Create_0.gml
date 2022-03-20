/// @description Insert description here
// You can write your code in this editor
abilityHandler = instance_find(oAbilityHandler, instance_number(oAbilityHandler) - 1);
alarm[0] = gemstone_cooldown;

self.upgrades = [];

number_of_abilities = 3;

for (var i=0; i<number_of_abilities; i++) {
	random_ability = irandom_range(0, array_length(abilityHandler.all_abilities) - 1);
	array_push(upgrades, abilityHandler.all_abilities[random_ability]);
}

button1 = instance_create_depth(x + margin, y + margin + button_y_offset, -1, oButton);
with button1 {
	ability = other.upgrades[0];
}

button2 = instance_create_depth(x + margin, y + margin + padding + button_y_offset, -1, oButton);
with button2 {
	ability = other.upgrades[1];
}

button3 = instance_create_depth(x + margin, y + margin + padding * 2 + button_y_offset, -1, oButton);
with button2 {
	ability = other.upgrades[2];
}