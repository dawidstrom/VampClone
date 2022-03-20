player = instance_find(oPlayer, 0);

if player != noone { 
	var spikes_to_spawn = 3;
	var current_direction = 30;
	var direction_increase = 360/spikes_to_spawn;
	
	for (var i=0; i<spikes_to_spawn; i++) {
		var spike = instance_create_layer(player.x, player.y, 0, oAttackSpike);
		with spike {
			direction = current_direction;
		}
		current_direction += direction_increase;
	}
}