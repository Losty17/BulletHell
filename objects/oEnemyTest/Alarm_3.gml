/// @description Spiral pattern
if (dir >= 360) dir = 0;

for (var i = 0; i <= 360; i += 360 / 5)
{
	bullet_normal(new bullet_data({
		velocity: 12,
		start_range: dir + i,
		end_range: dir + i,
		scale: .5,
		acceleration: -.5,
		min_speed: 3,
	}));
}

dir += 15;

alarm[3] = 5