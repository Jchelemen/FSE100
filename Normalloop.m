disp("START Normalloop");

rightWall = brick.UltrasonicDist(4);
frontWall = brick.TouchPressed(2);
if (rightWall > 40) && (cooldown == 0)
    disp("No Right Wall");
    MoveForward;
    RotateRight;
    %MoveForwardFull;
    pause(0.2);
    cooldown = 10;
    disp("Stop Right Wall");
elseif frontWall == 1
    disp("Front Wall Contact");
    pause(0.05);
    brick.StopMotor('AB');
    pause(1);
    MoveBackward;
    RotateLeft;
    pause(0.2);
    disp("Front Wall End");
else
    brick.MoveMotor('AB', -50);
    SlantAdjust;
    pause(0.05);
end
FloorColor;

% pause(0.05);
%disp("END Normalloop");