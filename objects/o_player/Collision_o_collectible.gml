/// @description Collect collectibles


//variables
var _key = other.name_;
var _value = other.value_;

//add item
if (ds_map_exists(inventory_, _key)) {
	_value += ds_map_find_value(inventory_, _key);
	ds_map_replace(inventory_, _key, _value);
} else {
	ds_map_add(inventory_, _key, _value);
}

//destroy
instance_destroy(other);

//test
show_message("Key: " + string(_key) + ", Value: " + string(ds_map_find_value(inventory_, _key)));