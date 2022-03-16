/// @desc Move to next room

with(O_Player)
{
	room_goto(target_room);
	other.x = target_x;
	other.y = target_y;
}
