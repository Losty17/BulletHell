/// @description Insert description 
bullet_normal(new bullet_data({
	velocity: 12,
	acceleration: -.5,
	amount: 12,
	start_range: 45,
	end_range: 135,
	min_speed: .5,
	max_speed: 12,
	scale: 1.2,
	callback: function(bullet) {
		bullet.image_blend = c_purple;
		bullet.offset = 0;
		bullet.speed = 8;
		bullet.acceleration = -.05;
		bullet.min_speed = 2;
		bullet.direction = point_direction(bullet.x, bullet.y, oPlayerTemp.x, oPlayerTemp.y);
	},
	callback_wait_time: 1
})); 