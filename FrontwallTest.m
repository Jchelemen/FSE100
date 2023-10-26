brick.MoveMotorAngleRel('B', 25, 350) ;
pause(4);
frontDistance = brick.UltrasonicDist(4)
brick.MoveMotorAngleRel('B', 25, -350) 
pause(4);

if frontDistance > 35
    frontWall = 'F';
else 
    frontWall = 'T';
end