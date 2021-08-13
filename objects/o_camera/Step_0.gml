//vars
var cam_width = camera_get_view_width(view_camera[0])
var cam_height = camera_get_view_height(view_camera[0])

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])

//Position
if(instance_exists(follow)){
	var _x_to = follow.x - cam_width/2
	var _y_to = follow.y - cam_height/2
	
	cam_x = lerp(cam_x, _x_to, 0.05)
	cam_y = lerp(cam_y, _y_to, 0.05)
}

cam_x = clamp(cam_x,0,room_width - cam_width)
cam_y = clamp(cam_y,0,room_height - cam_height)
camera_set_view_pos(view_camera[0],cam_x,cam_y)

//Zoom
cam_width = lerp(cam_width, zoom_level * default_zoom_width, 0.05);
cam_height = lerp(cam_height, zoom_level * default_zoom_height, 0.05);
camera_set_view_size(view_camera[0], cam_width, cam_height);


//Shake
cam_x += random_range(-shake_intensity,shake_intensity)
cam_y += random_range(-shake_intensity,shake_intensity)
camera_set_view_pos(view_camera[0],cam_x,cam_y)