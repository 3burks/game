// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//trigger invicibility
function PlayerHurt()
{
	if(!oPlayer.isInvicible)
	{
		oPlayer.isInvicible = true;
		alarm_set(0,2*room_speed);
		oPlayer.hp --;
		if (oPlayer.hp < 1)
			{
				PlayerDeath();
			}
	}	
}
//restart level
function PlayerDeath()
{
		room_restart();
}