init_buttons = function(){
	var _levels =  o_levels_manager.levels
	var levels_size = array_length_1d(_levels)
	var i = 0; repeat(levels_size){
		var _button = instance_find(o_menu_level_button, i)

		var _level =_levels[i]
		with(_button) update_struct(_level)
		
		i++
	}
}

init_buttons()