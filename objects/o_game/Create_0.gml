randomize()

end_level = function(){
	o_levels_manager.update_level_status(actual_level, 1);
	room_goto(Room_menu)
}

go_to_next_level = function(){
	var n = irandom(4)
	
	var _room = asset_get_index("Room_level_base_Child_"+string(n))
	
	if(room == _room){
		go_to_next_level()
	}
	
	else{
		room_goto(_room)
	}
}

//create managers
instance_create_depth(x,y,depth,o_levels_manager)


//level
actual_level = -1