function bullet_rain(
	velocity = 4,
	acceleration = 0,
	amount = 12,
	offset = 0,
	min_speed = 1,
	max_speed = 9999,
	angle = 270,
	target = undefined
) {
	var x_pos = 0;
	var dir = angle;
	for(var i = 0; i <= amount; i += 1)
	{
		var b = instance_create_layer(x_pos, 1, "Instances", oBullet);
		
		if (angle == "RANDOM")
			dir = random_range(225, 315);
		else if (angle == "AIM")
			dir = point_direction(b.x, b.y, target.x, target.y) + random_range(10, -10);
	
		b.direction = dir;
		b.speed = velocity;
		b.acceleration = acceleration;
		b.offset = offset;
		b.min_speed = min_speed;
		b.max_speed = max_speed;
		x_pos += room_width / amount;
	}


}
