function bullet_normal(data)
{
	if (data.amount == 0) exit;

	var dir = data.start_range <= data.end_range 
		? (data.end_range - data.start_range) / data.amount
		: (data.start_range - data.end_range) / data.amount;
	
	dir = dir == 0 ? 1 : dir;
	
	var bullets = [];
	for (var i = data.start_range; i <= data.end_range; i += dir)
	{
		var b = instance_create_layer(data.x, data.y, "Instances", data.object);
		
		b.direction    = data.aiming ? point_direction(x, y, data.target.x, data.target.y) : i; 
		b.image_blend  = data.color;
		b.image_xscale = data.scale;
		b.image_yscale = data.scale;
		b.image_alpha  = data.alpha;
		
		b.speed		   = data.velocity;
		b.acceleration = data.acceleration;
		b.offset	   = data.offset;
		b.max_speed	   = data.max_speed;
		b.min_speed    = data.min_speed;
		
		array_push(bullets, b);
	}
	
	var callbacks = array_length(data.callbacks);
	if (callbacks > 0)
	{
		for (var i = 0; i < callbacks; i++)
		{
			var callback = data.callbacks[i];
			schedule_function(
				callback.delay,
				callback_for_bullets,
				[callback, bullets]
			)
		}	
	}
}

function callback_for_bullets(callback, bullets)
{
	for (var i = 0; i < array_length(bullets); i++)
	{
		if (instance_exists(bullets[i]))
		{
			var parameters = variable_struct_exists(callback, "parameters") 
						   ? callback.parameters
						   : [];
						   
			callback.callback(bullets[i], parameters);
		}
	}
}
