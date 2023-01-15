function bullet_normal(data)
{
	if (data.amount == 0) exit;

	var dir = data.start_range <= data.end_range 
		? (data.end_range - data.start_range) / data.amount
		: (data.start_range - data.end_range) / data.amount;

	var bullets = [];
	for (var i = data.start_range; i <= data.end_range; i += dir)
	{
		var b = instance_create_layer(x, y, "Instances", data.object);
		
		b.direction    = data.aiming ? point_direction(x, y, data.target.x, data.target.y) : i; 
		b.image_blend  = data.color;
		b.image_xscale = data.scale;
		b.image_yscale = data.scale;
		
		b.speed		   = data.velocity;
		b.acceleration = data.acceleration;
		b.offset	   = data.offset;
		b.max_speed	   = data.max_speed;
		b.min_speed    = data.min_speed;
		
		array_push(bullets, b);
	}
	
	if (data.callback != undefined)
		time_source_start(time_source_create(
			time_source_global,
			data.callback_wait_time,
			time_source_units_seconds,
			function(data, bullets) {
				for (var i = 0; i < array_length(bullets); i++)
					if (instance_exists(bullets[i])) data.callback(bullets[i], data.callback_parameters);
			},
			[data, bullets]
		));
}
