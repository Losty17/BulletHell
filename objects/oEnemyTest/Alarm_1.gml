/// @description Insert description 
endRange = random_range(0, 360);
startRange = endRange - 330;

bullet_normal(6, -.1, 32, .5 * multiplier, [startRange, endRange], -4, 12);
// bullet_rain(8, -0.1, 16, .02, 4, undefined, "AIM", oPlayerTemp); 

multiplier *= -1