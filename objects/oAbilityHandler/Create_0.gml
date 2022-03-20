function Ability(_ability, _attack, _icon) constructor
{
	ability = _ability;
	attack = _attack;
	icon = _icon;
}

self.all_abilities = [
	new Ability(oAbility1, oAttack1, sBook),
	new Ability(oAbility2, oRadianceAttack, sRadiance),
	new Ability(oAbilitySpikes, oAttackSpikes, sSpikes)
];

self.abilities = [
	//instance_create_layer(0, 200, 0, oAbility1)
	instance_create_layer(0, y_offset, 0, all_abilities[2].ability)
];

function add_ability(ability) {
	var instance = instance_create_layer(x_offset*array_length(self.abilities), y_offset, 0, ability);
	array_push(abilities, instance);
}