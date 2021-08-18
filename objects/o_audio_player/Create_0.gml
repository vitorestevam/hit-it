#region general
play_music_bg = function(){
	audio_play_sound(a_music_bg, 10, true);
}
play_click = function(){
	audio_play_sound(a_click, 10, false);
}
play_win = function(){
	audio_play_sound(a_win, 10, false);
}
play_lose = function(){
	audio_play_sound(a_lose, 10, false);
}
play_hit_sound = function(){
	if(alarm[0] == -1){
	audio_play_sound(a_hit_sound, 10, false);
	alarm[0] = room_speed/2
	}
}
#endregion

play_music_bg()