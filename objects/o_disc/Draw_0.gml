draw_self()

if(dragging){
	var dir = point_direction(start_pos.x, start_pos.y, actual_pos.x, actual_pos.y)
	dir+=180
	
	var len =  point_distance(start_pos.x, start_pos.y,actual_pos.x, actual_pos.y)
	len = len/5
	var _xx = x+lengthdir_x(100+len,dir)
	var _yy = y+lengthdir_y(100+len,dir)
	
	
	draw_sprite_ext(s_seta,0,_xx,_yy,1.5,1.5,dir,c_white,0.75)
	draw_circle(_xx,_yy,20,5)
}

//draw_text(x,y,phy_speed)