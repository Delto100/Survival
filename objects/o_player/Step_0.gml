/// @description Player shits

//Check move right-left
if o_input.x_input_ != 0 && !place_meeting(x + o_input.x_input_*speed_, y, o_solid){
	hspeed_ = speed_ * o_input.x_input_;
//Pixel Perfect movement
} else if o_input.x_input_ != 0 && place_meeting(x + o_input.x_input_*speed_, y, o_solid){
	hspeed_ = 0;
	while !place_meeting(x + sign(o_input.x_input_), y, o_solid) {
		x += sign(o_input.x_input_);
	}
//Reset
} else {
	hspeed_ = 0;	
}
	
//Check move up-down
if o_input.y_input_ != 0 && !place_meeting(x, y + o_input.y_input_*speed_, o_solid){
	vspeed_ = speed_ * o_input.y_input_;
//Pixel Perfect movement
} else if o_input.y_input_ != 0 && place_meeting(x, y + o_input.y_input_*speed_, o_solid){
	vspeed_ = 0;
	while !place_meeting(x, y + sign(o_input.y_input_*speed_), o_solid) {
		y += sign(o_input.y_input_);
	}
//Reset
} else {
	vspeed_ = 0;	
}

//Diagonal move
if vspeed_ != 0 and hspeed_ != 0 {
	speed_ = diag_speed_;
} else {
	speed_ = direct_speed_;	
}

//Move player test
	x += hspeed_;
	y += vspeed_;
	
//recolt
recolt_target_ = instance_nearest(x, y, o_recolt_parent);
if distance_to_object(recolt_target_) < 22 && o_input.action_{
	recolt_target_.health_ = recolt_target_.health_ - 1;
}

//collect 
collect_target_ = instance_nearest(x, y, o_collectible);
if distance_to_object(collect_target_) < 22 && o_input.recolt_ {
	//variables
	var _key = collect_target_.name_;
	var _value = collect_target_.value_;

	//add item
	if (ds_map_exists(inventory_, _key)) {
		_value += ds_map_find_value(inventory_, _key);
		ds_map_replace(inventory_, _key, _value);
	} else {
		ds_map_add(inventory_, _key, _value);
	}

	//destroy
	instance_destroy(collect_target_);

	//test
	show_message("Key: " + string(_key) + ", Value: " + string(ds_map_find_value(inventory_, _key)));
}