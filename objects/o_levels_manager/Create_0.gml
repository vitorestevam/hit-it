levels = []
file = working_directory + "levels.json"
levels = jsons_load(file)

update_level_status = function(_id, _status){

	var i = 0; repeat(array_length_1d(levels)){
		if(levels[i].id == _id){
			levels[i].status = _status
		}
		i++
	}
	
	jsons_save(file,levels)
}