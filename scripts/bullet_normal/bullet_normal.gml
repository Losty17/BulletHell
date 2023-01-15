/**
 * @param speed teste
 */
function bullet_normal(
	speed = 4,
	acceleration = 0,
	amount = 1,
	offset = 0,
	range = [0, 360],
	minSpeed = undefined,
	maxSpeed = undefined,
	aiming = false,
	target = undefined
) {
	if (amount == 0) exit;
	var startRange = range[0];
	var endRange = range[1];

	var dir = startRange <= endRange 
		? (endRange - startRange) / amount
		: (startRange - endRange) / amount;

	for (var i = startRange; i <= endRange; i += dir)
	{
		var b = instance_create_layer(x, y, "Instances", oBullet);
		b.direction = aiming ? point_direction(x, y, target.x, target.y) : i; 
	
		b.speed = speed;
		b.acceleration = acceleration;
		b.offset = offset;
		b.maxSpeed = maxSpeed;
		b.minSpeed = minSpeed;
	}
}
