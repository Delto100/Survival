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