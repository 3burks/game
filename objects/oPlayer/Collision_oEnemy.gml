/// @description colision w/enemy

//chech to see if oPlayer and head of oEnemy collide
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in air
		yVector = jumpForce;
		instance_destroy(other);
	}
//otherwise restart
else	
	{
		PlayerHurt();
		
	}	