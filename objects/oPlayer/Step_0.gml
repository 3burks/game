//code runs every frame
//keyboard inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//x-movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if theres a wall, then stop movement, otherwise 

if (place_meeting(x + xVector, y, oWall))
	{
		//check one pixel to the left or right of us until we collide with a oWall
		// ! = "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel until hit oWall
			x = x + xDirection;
			}
			xVector = 0; 
	}
//otherwise move normal
x = x + xVector;

//y-movement
yVector = yVector + grv;

if (place_meeting(y + yVector, x, oWall))
	{
	//check one pixel to the up or down of us until we collide with a oWall
	// ! = "not"
	//"sign" is going to return the positive or negative sign for a value (-1, 1)
	//sign(yVector) if yVector is positive it will return 1, negative yVector will return -1
	while(!place_meeting(x, y + sign(yVector), oWall))
		{
		//only move 1 pixel until hit oWall
		y = y + sign(yVector);
		}
		yVector = 0;	
	}
//otherwise move normal
y = y + yVector; 

//Touching ground and pressing jump key, player jumps
if (place_meeting(x, y + 1, oWall) and (jump))
	{
	yVector = jumpForce;
	}
