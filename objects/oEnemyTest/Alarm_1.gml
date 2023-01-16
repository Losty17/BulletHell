/// @description Insert description
// if (dir >= 360) dir = 0;

// for (var i = 0; i <= 360; i += 360 / 5)
// {
//		bullet_normal(new bullet_data({
//			velocity: 12,
//			start_range: dir + i,
//			end_range: dir + i,
//			scale: .5,
//			acceleration: -.5,
//			min_speed: 3,e
//		}));
// }

// dir += 15;

for (var i = 0; i < 5; i++)
{
	var range = random_range(-75, -25);
	bullet_normal(new bullet_data({
		start_range: range,
		end_range: range,
		offset: random_range(-0.5, 0.5),
		acceleration: -.02,
		speed: 6, 
		min_speed: 0,
		x: 0 + (i * 30),
		y: 0 ,
		callback: function(bullet) {
			bullet.image_blend = c_red;
			bullet.offset = 0;
			bullet.speed = 0;
			bullet.acceleration = .01;
			
			time_source_start(time_source_create(
				time_source_global,
				2,
				time_source_units_seconds,
				function(bullet) {
					if (!instance_exists(bullet)) exit;
					bullet.speed = 4;
					bullet.direction = point_direction(bullet.x, bullet.y, oPlayerTemp.x, oPlayerTemp.y)
				},
				[bullet]
			));
		},
		callback_wait_time: 3
	}));	
}
