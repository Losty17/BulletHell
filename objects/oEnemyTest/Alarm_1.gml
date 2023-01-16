/// @description Insert description
var radius	 = 120;
var offset_x = room_width / 2;
var offset_y = room_height / 2;
var amount	 = 12;
var index	 = 0;

for (var angle = 0; angle < 360; angle += 360 / amount)
{
	index++;
	
	var _x = radius * sin(pi * 2 * angle / 360 - rotate);
	var _y = radius * cos(pi * 2 * angle / 360 - rotate);
	
	bullet_normal(new bullet_data({
		start_range: rotate,
		end_range: rotate,
		min_speed: 0,
		velocity: 0,
		alpha: 0,
		x: _x + offset_x,
		y: _y + offset_y,
		callbacks: [
			{
				callback: function (bullet) {
					bullet.image_alpha = 1
				},
				delay: .1 * index
			},
			{
				callback: function (bullet) {
					bullet.image_blend = c_red;
					bullet.direction = point_direction(bullet.x, bullet.y, oPlayerTemp.x, oPlayerTemp.y);
					bullet.acceleration = .02;
				},
				delay: 2
			}
		]
	}));
}