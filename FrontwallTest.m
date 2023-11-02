disp("START Frontwall Test");

RotateLeft;
%%pause(1.4);
frontDistance = brick.UltrasonicDist(4);

if frontDistance > 35
    frontWall = 'F';
else 
    frontWall = 'T';
end
RotateRight;
%%pause(1.4);

disp("END Frontwall Test");