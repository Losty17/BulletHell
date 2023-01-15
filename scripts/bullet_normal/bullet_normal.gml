function bullet_normal(
	speed = 4,
	acceleration = 0,
	amount = 1,
	offset = 0,
	range = [0, 360],
	min_speed = 1,
	max_speed = 9999,
	aiming = false,
	target = undefined
) {
	if (amount == 0) exit;
	var start_range = range[0];
	var end_range = range[1];

	var dir = start_range <= end_range 
		? (end_range - start_range) / amount
		: (start_range - end_range) / amount;

	for (var i = start_range; i <= end_range; i += dir)
	{
		var b = instance_create_layer(x, y, "Instances", oBullet);
		b.direction = aiming ? point_direction(x, y, target.x, target.y) : i; 
	
		b.speed = speed;
		b.acceleration = acceleration;
		b.offset = offset;
		b.max_speed = max_speed;
		b.min_speed = min_speed;
	}
}
