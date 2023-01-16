// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function schedule_function(time_seconds, func, params)
{
	var time_source = time_source_create(
		time_source_global,
		time_seconds,
		time_source_units_seconds,
		func,
		params
	)
	time_source_start(time_source);
}