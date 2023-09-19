draw_set_font(Font_8bit);

draw_set_color(c_white);

var dist = 60;

var gui_height = display_get_gui_height();
var gui_width = display_get_gui_width();

var x1 = gui_width/2;
var y1 = gui_height/2;

var m_x = device_mouse_x_to_gui(0)
var m_y = device_mouse_y_to_gui(0)

for(var i = 0; i < op_max; i++){

	var y2 =  y1 + (dist * i);

	draw_set_halign(fa_center)

	var string_w = string_width(menuOptions[i]);
	var string_h = string_height(menuOptions[i]);
	
	if(point_in_rectangle(m_x, m_y, (60 - string_w/2)-20, (y2 - string_h/2)-20, (60 + string_w/2)+20, (y2 + string_h/2)+20)){
		index = i;
	}
		
	if(index == i){
		draw_set_color(c_green)
	}else{
		draw_set_color(c_white)
	}

	draw_text(60, y1 + (dist * i), menuOptions[i]);
	
	if(mouse_check_button_pressed(mb_left)){
		if(index == 0){
			room_goto(soloSelection);
		}

		if(index == 1){
			room_goto(characterSelection);
		}

		if(index == 2){
			room_goto(options);
		}

		if(index == 3){
			game_end()	
		}
	}

}

draw_set_font(-1);
