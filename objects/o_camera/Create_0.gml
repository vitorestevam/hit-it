zoom_level = 1;


//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);

follow = o_disc

shake_intensity = 0
shake = function(time,intensity){
	shake_intensity = intensity
	alarm[0] = room_speed * time
}