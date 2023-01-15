/// @description Insert description here
// You can write your code in this editor
direction += offset

if (min_speed && speed + acceleration >= min_speed) ||
   (max_speed && speed + acceleration <= max_speed)
{
	speed += acceleration	
}
