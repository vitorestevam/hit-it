if(pressed){
	pressed = false
	var _xx = event_data[?"posX"];
    var _yy = event_data[?"posY"];
	end_pos = {x:_xx,y:_yy}
	
	handle_drag_gesture()
}