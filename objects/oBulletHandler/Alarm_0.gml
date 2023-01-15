/// @description Fire bullets in da ho
bulletType = bulletTypes[pointer]

switch bulletType
{
	case "NORMAL":
		bullet_normal(
			bulletSpeed,
			bulletAccel,
			bulletAmount,
			bulletOffset,
			[bulletRangeInit, bulletRangeFinal],
			undefined,
			undefined,
			bulletAiming,
			oPlayerTemp
		);
		break

	case "SPIRAL":
		for(var i = 0; i < bulletAmount; i += 1)
		{
			b = instance_create_layer(x, y, "Instances", oBullet)
			b.direction += bulletDir
			b.speed = bulletSpeed
			bulletDir += 360 / bulletAmount
			bulletDir += bulletSpiralSpeed
			
			b.bulletOffset = bulletOffset
			b.bulletAccel = bulletAccel
			b.bulletMinSpeed = bulletMinSpeed;
			b.bulletMaxSpeed = bulletMaxSpeed;
		}
}