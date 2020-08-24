/// @description Input

left_ = keyboard_check(vk_left);
right_ = keyboard_check(vk_right);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

x_input_ = right_ - left_;
y_input_ = down_ - up_;