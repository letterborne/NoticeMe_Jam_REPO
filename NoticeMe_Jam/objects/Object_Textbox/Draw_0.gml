 //vk_space = space, the space key has to be pressed 
 accept_key = keyboard_check_pressed(vk_space); 
 
 
                  // value of the offset aka border space 
textbox_x = camera_get_view_x( view_camera[0] ) + 700; 
textbox_y = camera_get_view_y( view_camera[0] ) + 525; 

//Setup
if setup == false 
   { 
	   
	   setup = true; 
	   draw_set_font(global.font_main); 
	   draw_set_valign(fa_left); 
	   draw_set_halign(fa_left); 
	   
	   //loop through the pages  
	   for(var p = 0; p < page_number; p++)  
	   {
     
			 
	   // find how many characters are on each page and store that number in the text_length array 
		   text_length[p] = string_length(text[p]); 
		   
		   // get the x position for the textbox 
		     // no character (center the textbox) 
		   text_x_offset[p] = 44; 
		   
	   }
   } 
		   
		   
		   
		   
// typing the text 
if draw_char < text_length[page] 
    { 
		draw_char += text_speed; 
		draw_char = clamp(draw_char, 0, text_length[page]); 
	}
	
	

// flip through pages 
if accept_key 
   { 
	   
	   //if the typing is done) 
	   if draw_char == text_length[page]
	      {
			  //next page
			  if page < page_number-1
			  {
			    page++; 
				draw_char = 0; 
			  }
	   // destroy text box
	   else 
	      {
	 	   instance_destroy(); 
	      }
   }
   
   
   //if not done typing 
   else 
      { 
	   draw_char = text_length[page]; 
      }
	  
   } 

	    
//-----------draw the textbox--------------------
textbox_image += textbox_image_speed; 
textbox_sprite_w = sprite_get_width(textbox_sprite); 
textbox_sprite_h = sprite_get_height(textbox_sprite);  
//back of the textbox 
draw_sprite_ext(textbox_sprite, textbox_image, textbox_x + text_x_offset[page], textbox_y, textbox_width/textbox_sprite_w, textbox_height/textbox_sprite_h, 0, c_white, 1); 


// ----------draw the text-------------------------
var  _drawtext = string_copy(text[page], 1, draw_char); 
draw_text_ext( textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width); 