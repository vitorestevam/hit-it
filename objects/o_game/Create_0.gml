randomize()
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