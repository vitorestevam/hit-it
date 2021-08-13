struct = {status: -1}

update_struct = function(_struct){
	show_debug_message(_struct)
	
	struct = _struct
}

start_level = function(){
	var _level_id = struct.id
	o_game.actual_level = _level_id
	room_goto(asset_get_index("Room_level_base_Child_"+string(_level_id)))
}