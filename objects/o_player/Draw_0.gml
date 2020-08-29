
/// @description Insert description here
// You can write your code in this editor

draw_self();

if distance_to_object(recolt_target_) < 22 {
	draw_text(x, y, "Press E to recolt " + string(recolt_target_.name_) + ".");
}


if distance_to_object(collect_target_) < 22 {
	draw_text(x, y, "Press F to collect " + string(collect_target_.name_) + ".");
}