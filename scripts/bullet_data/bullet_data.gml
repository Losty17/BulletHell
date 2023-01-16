function bullet_data(payload = {}) constructor
{
	x = other.x;
	y = other.y;
	velocity     = 4;			// Starting speed of the projectile
	acceleration = 0;			// Acceleration modifier for every frame
	amount		 = 1;			// Amount of projectiles to create in a frame
	offset		 = 0;			// Turning offset for projectiles direction
	start_range  = 0;			// Starting angle for projectile creation
	end_range	 = 360;			// End angle for projectile creation
	min_speed	 = -999;		// Minimum speed limit
	max_speed	 = 999;			// Maximum speed limit
	aiming		 = false;		// Wheter the projectiles will aim at some target
	target		 = undefined;	// Target to bem aimed at
	color		 = c_white;		// Tint color of the projectile
	scale		 = 1;			// How big will the projectile be
	alpha		 = 1;			// Projectile transparency
	object		 = oBullet;		// Source object for the projectile

	callbacks	 = [];			// Callback array, with a 'callback' parameter that must be 
								// a function, a 'delay' parameter that must be the number of seconds
								// to wait before calling the callback, and an optional parameter 'parameters'
								// that should be an array of any object to provide for the function call

	var keys = variable_struct_get_names(payload);
	for (var i = 0; i < array_length(keys); i++)
	{
		var key = keys[i];
		var value = variable_struct_get(payload, key);
		variable_struct_set(self, key, value);
	}
}