/// @desc Move to next room

with(O_Player)
{
	if(hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target);
		
	}
}
