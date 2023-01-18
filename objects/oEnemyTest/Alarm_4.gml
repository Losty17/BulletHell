/// @description Heart shaped
for (var i = 0; i < 2; i++)
	bullet_normal(new bullet_data({
		velocity: 6,
		acceleration: -.1,
		min_speed: 0,
		offset: 2 * (i == 0 ? 1 : -1),
		start_range: 90,
		end_range: 90,
		scale: 1.7,
		callbacks: [
			{
				callback: function(bullet, args)
				{
					bullet.acceleration = 0;
					bullet.offset = 1.1 * args[0];
					bullet.speed = 2.3;
					bullet.image_blend = make_color_rgb(255, 150, 150)
				},
				delay: .8,
				parameters: [i == 0 ? 1 : -1]
			},
			{
				callback: function(bullet, args)
				{
					bullet.offset = .1 * args[0];
					bullet.direction = point_direction(bullet.x, bullet.y, oPlayerTemp.x, oPlayerTemp.y) - (10 * args[0])
					bullet.acceleration = .03;
					bullet.image_blend = c_red;
				},
				delay: 2,
				parameters: [i == 0 ? 1 : -1]
			},
			{
				callback: function(bullet)
				{
					x = bullet.x
					y = bullet.y
					
					for (var i = 0; i < 360; i += 360 / 6)
					{
						var range = random_range(-25, 25);
						bullet_normal(new bullet_data({
							velocity: 4,
							start_range: range + i,
							end_range: range + i,
							scale: .9,
							acceleration: -.15,
							min_speed: -2,
						}));
					}
					
					instance_destroy(bullet)
				},
				delay: 3.6
			}
		]
	}));

alarm[4] = 20;