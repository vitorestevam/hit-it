randomize()

end_level = function(){
	if(alarm[0] == -1){
		o_disc.can_move = false
		o_audio_player.play_win()
		o_levels_manager.update_level_status(actual_level, 1);
		var i =1
		var _x = room_width/5
		repeat(4){
			part_particles_create(global.particles, _x*i,0, global.partTypeMoreConfetti, 32);
			part_particles_create(global.particles, _x*i,0, global.partTypeConfetti, 32);
			i++
		}
		o_camera.zoom_level = 0.75
		o_camera.follow = o_aim
		alarm[0] = room_speed * 1.5
	}
}

lose_game = function(){
	if(alarm[0] == -1){
		o_audio_player.play_lose()
		o_camera.zoom_level = 0.65
		o_disc.can_move = false
		alarm[0] = room_speed * 1.5
	}
}

start_level = function(_level_id){
	o_game.actual_level = _level_id
	o_camera.zoom_level = 1
	o_camera.follow = o_aim
	alarm[1] = room_speed
	room_goto(asset_get_index("Room_level_base_Child_"+string(_level_id)))

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