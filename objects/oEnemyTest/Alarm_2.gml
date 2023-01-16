/// @description Rain pattern and multiple callback test
for (var i = 0; i < 5; i++)
{
	var range = random_range(-75, -25);
	bullet_normal(new bullet_data({
		start_range: range,
		end_range: range,
		offset: random_range(-0.5, 0.5),
		acceleration: -.02,
		velocity: 6, 
		min_speed: 0,
		x: 0 + (i * 30),
		y: 0 ,
		callbacks: [
			{
				callback: function(bullet) {
					bullet.image_blend = c_red;
					bullet.offset = 0;
					bullet.speed = 0;
					bullet.acceleration = .01;
				},
				delay: 3,
			},
			{
				callback: function(bullet) {
					if (!instance_exists(bullet)) exit;
					bullet.speed = 4;
					bullet.direction = point_direction(bullet.x, bullet.y, oPlayerTemp.x, oPlayerTemp.y)
				},
				delay: 5
			}
		]
	}));	
}

alarm[2] = 5
