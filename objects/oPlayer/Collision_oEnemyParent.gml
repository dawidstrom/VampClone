/// @description Insert description here
// You can write your code in this editor

if can_take_damage {
	hp -= 1;
	can_take_damage = false;
	alarm[11] = damage_cooldown;
}