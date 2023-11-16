disp("START Looploop");

rightWall = brick.UltrasonicDist(4);
frontWall = brick.TouchPressed(2);
if color == 'R'
    brick.StopMotor('AB');
    pause(0.2);
    MoveBackward;
    RotateLeft;
    contLeftTurns = contLeftTurns - 1;
    cooldown = 12;
    color = 'X';
else
    if (rightWall > 40) && (cooldown == 0)
        disp("No Right Wall");
        MoveForward;
        RotateRight;
        %MoveForwardFull;
        pause(0.2);
        cooldown = 11;
        disp("Stop Right Wall");
    elseif frontWall == 1
        disp("Front Wall Contact");
        %pause(0.05);
        brick.StopMotor('AB');
        pause(1);
        MoveBackward;
        %pause(0.3);
        RotateLeft;
        %pause(0.2);
        disp("Front Wall End");
    else
        brick.MoveMotor('AB', -50);
        SlantAdjust;
        %pause(0.05);
    end
end
FloorColor;