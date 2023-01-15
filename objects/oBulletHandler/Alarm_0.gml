/// @description Fire bullets in da ho
switch bulletTypes[pointer]
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
		break;
	case "SPIRAL":
		bullet_spiral(
			bulletSpeed,
			bulletAccel,
			bulletAmount,
			bulletOffset,
			bulletSpiralSpeed,
			undefined,
			undefined
		);
		break;
}