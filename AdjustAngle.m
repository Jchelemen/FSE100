angle = brick.GyroAngle(1);
disp(angle);
 
if (angle>-130) && (angle<-91)
    power = ((angle + 90)/2) - 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    disp("Clockwise centralizes left");
end
if ((angle>50) && (angle<89))
    power = ((90 - angle)/2) + 10;
    brick.MoveMotor('A', -power);
    brick.MoveMotor('B', power);
    pause(0.5);
    brick.StopMotor('AB');
    disp("Clockwise centralizes right");
end
if ((angle<130) && (angle>91))
    power = ((angle - 90)/2) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    disp("Counter Clockwise centralizes right");
end
if ((angle<-50) && (angle>-89))
    power = ((angle + 90)/2) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    disp("Counter Clockwise centralzes left");
end

angle = brick.GyroAngle(1);
%disp(angle);

brick.GyroCalibrate(1);