if(!selected){
	global.index1--;
}

if(global.index1 < 0 && !selected){
	global.index1 = op_max-1;
}