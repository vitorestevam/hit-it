pressed = false
dragging = false
end_pos = {x:0, y:0}
start_pos = {x:0, y:0}
actual_pos = {x:0, y:0}

base_speed = 10000

phy_rotation = 00;
phy_fixed_rotation = true;

handle_drag_gesture = function(){
	
	var dir = point_direction(end_pos.x, end_pos.y, start_pos.x, start_pos.y)
	var len = point_distance(start_pos.x, start_pos.y,end_pos.x, end_pos.y)

	var xs = lengthdir_x(len, dir) * base_speed *(len)
	var ys = lengthdir_y(len, dir) * base_speed * len
	
	physics_apply_force(x,y, xs,ys)
}