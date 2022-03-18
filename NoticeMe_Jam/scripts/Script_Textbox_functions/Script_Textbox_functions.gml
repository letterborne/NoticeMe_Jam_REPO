// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// @param text
function script_text(_text) 
{
	
  text[page_number] = _text; 
  
  page_number++; 
  
}


// @param text_id
function create_textbox(_text_id) 
{
	
	with (  instance_create_depth(0, 0, -9999, Object_Textbox) ) 
	{
		// add "text_id = "xxx";" to the object you want to click on 
		Script_Game_Text(_text_id);
	}
	
} 
