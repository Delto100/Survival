/// @description Insert description here
// You can write your code in this editor

if health_ <= 0 {
	instance_destroy();
	instance_create_layer(x, y, "Instances", collectibles_);
}

