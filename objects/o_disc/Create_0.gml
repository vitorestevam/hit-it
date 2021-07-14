pressed = false
end_pos = {x:0, y:0}
start_pos = {x:0, y:0}

phy_rotation = 00;
phy_fixed_rotation = true;

handle_drag_gesture = function(){
	
	var dir = point_direction(end_pos.x, end_pos.y, start_pos.x, start_pos.y)
	
	var len = point_distance(start_pos.x, start_pos.y,end_pos.x, end_pos.y)

	len*=10000
	physics_apply_impulse(x,y, lengthdir_x(len, dir), lengthdir_y(len, dir))
}