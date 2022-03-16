if place_meeting(x, y, O_Player)
{
	room_goto(target_room);
	O_Player.x = target_x;
	O_Player.y = target_y;
}