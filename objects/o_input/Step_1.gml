/// @description Input

left_ = keyboard_check(vk_left) || keyboard_check(ord("A"));
right_ = keyboard_check(vk_right) || keyboard_check(ord("D"));
up_ = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_ = keyboard_check(vk_down) || keyboard_check(ord("S"));
mb_left_ = mb_left

action_ = keyboard_check_pressed(ord("E"));
recolt_ = keyboard_check_pressed(ord("F"));

x_input_ = right_ - left_;
y_input_ = down_ - up_;