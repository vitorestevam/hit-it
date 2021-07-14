if(place_meeting(x,y,o_aim)){
	image_blend = c_yellow
	
	phy_speed_x = 0;
	phy_speed_y = 0;
	
	if(room_exists(room_next(room))) room_goto_next()
	else game_restart()
}