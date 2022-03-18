depth = -99999; 

//textbox parameters 
textbox_width = 512; 
textbox_height = 200;  
border = 8; 
line_sep = 30; 
line_width = textbox_width - border*2; 
textbox_sprite = Claud_Sprite_MenuBox; 
textbox_image = 0; 
textbox_image_speed = 4/60; 


//the text 
page = 0; 
page_number = 0; 
text[0] = ""; 
text_length[0] = string_length(text[0]); 
draw_char = 0; 
text_speed = .75; 

//options
//option[0] = ""; 
//option_link_id[0] = -1; 

setup = false; 
