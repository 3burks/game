//code runs when created
//how many pixels per frame we want player to move
xSpeed = 4;

//what direction player is facing (1=right, -1=left, 0=front)
xDirection = 0;

//how fastand what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.4;

jumpForce = -10;

//coins & points
global.coins = 0
global.points = 0

//invicibility
isInvicible = false;

//hp
hp = 6;