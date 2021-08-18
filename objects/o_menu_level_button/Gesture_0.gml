if(struct.status = -1){ // locked
	show_debug_message("locked")
}
else{
	start_level()
}

o_audio_player.play_click()