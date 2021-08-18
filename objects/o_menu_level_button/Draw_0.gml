draw_self()

if(struct.status == -1){
image_index = 0
}

else{
	draw_set_color(c_black)
	draw_set_font(f_default)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y,struct.id+1)
}

if(struct.status == 1){
	image_index = 3
}

if(struct.status == 0){
	image_index = 4
}


