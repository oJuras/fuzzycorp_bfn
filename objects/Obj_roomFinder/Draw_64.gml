if(Obj_characterSelection.selected){

	draw_set_font(Font_8bit);

	draw_set_color(c_white);

	var gui_height = display_get_gui_height();
	var gui_width = display_get_gui_width();

	var x1 = gui_width/2;
	var y1 = gui_height/2;

	
	var m_x = device_mouse_x_to_gui(0)
	var m_y = device_mouse_y_to_gui(0)

	draw_text(x1 + x1/2, y1*2 - 60, "Code: ")
	
	if(!instanceCreated){
		instance_create_depth(x1+x1/2 +100, y1*2 - 60, -1, Obj_codeBox);
	}

}