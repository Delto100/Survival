/// @description Player varibles

//Movement
hspeed_ = 0;
vspeed_ = 0;
speed_ = 5;
diag_speed_ = speed_ * (sqrt(2)/2);
direct_speed_ = speed_;

//inventory
inventory_ = ds_map_create();
recolt_target_ = noone;
collect_target_ = noone;

//Variables
recolt_power_ = 1;