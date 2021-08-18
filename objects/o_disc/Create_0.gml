o_audiopressed = false
dragging = false
end_pos = {x:0, y:0}
start_pos = {x:0, y:0}
actual_pos = {x:0, y:0}

base_speed = 20000

can_move = true
phy_rotation = 00;
phy_fixed_rotation = true;

handle_drag_gesture = function(){
	o_counter.hits++
	var dir = point_direction(end_pos.x, end_pos.y, start_pos.x, start_pos.y)
	var len = point_distance(start_pos.x, start_pos.y,end_pos.x, end_pos.y)

	var xs = lengthdir_x(1, dir)
	var ys = lengthdir_y(1, dir)
	
	var spd = 10000 * (power(len/100,1.75))
	
	physics_apply_force(x,y, spd* xs, spd*ys)
}