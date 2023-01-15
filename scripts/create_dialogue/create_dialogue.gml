/// @desc create_dialogue(text, portrait)
/// @param text
/// @param portrait
function create_dialogue(argument0) {
	var d = instance_create(x, y, oDialogue)
	d.dialogue = argument0
}