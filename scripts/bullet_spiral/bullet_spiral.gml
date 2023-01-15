function bullet_spiral(
	speed = 4,
	acceleration = 0,
	amount = 1,
	offset = 0,
	spiral_speed = 1,
	min_speed = undefined,
	max_speed = undefined
) {
	for(var i = 0; i < amount; i += 1)
	{
		b = instance_create_layer(x, y, "Instances", oBullet)
		b.direction += bulletDir;
		b.speed = speed;
		b.acceleration  = acceleration;
		b.offset = offset
		b.minSpeed = min_speed;
		b.maxSpeed = max_speed;
			
		bulletDir += (360 / amount) + spiral_speed;
	}
}
