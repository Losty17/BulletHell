/// @desc createTransition(room)
/// @param room
function create_transition(argument0) {

	tra = instance_create_layer(x, y, "Instances", oTransition)
	with tra
	{
		next_room = argument0
	}


}
