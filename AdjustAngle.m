angle = brick.GyroAngle(1);
fprintf("  %d ", angle);

%{
if (angle>-134) && (angle<-91)
    power = ((angle + 90)/2) - 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Clockwise");
end
if ((angle>46) && (angle<89))
    power = ((90 - angle)/2) + 10;
    brick.MoveMotor('A', -power);
    brick.MoveMotor('B', power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Clockwise");
end
if ((angle<134) && (angle>91))
    power = ((angle - 90)/2) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Counter Clockwise");
end
if ((angle<-46) && (angle>-89))
    power = ((angle + 90)/2) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Counter Clockwise");
end
%}

%Testing increased range of correction
if (angle>-179) && (angle<-91)
    power = ((angle + 90)/3) - 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Clockwise");
end
if ((angle>1) && (angle<89))
    power = ((90 - angle)/3) + 10;
    brick.MoveMotor('A', -power);
    brick.MoveMotor('B', power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Clockwise");
end
if ((angle<179) && (angle>91))
    power = ((angle - 90)/3) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Counter Clockwise");
end
if ((angle<-1) && (angle>-89))
    power = ((angle + 90)/3) + 10;
    brick.MoveMotor('A', power);
    brick.MoveMotor('B', -power);
    pause(0.5);
    brick.StopMotor('AB');
    fprintf("Counter Clockwise");
end

angle = brick.GyroAngle(1);
fprintf("--> %d  ", angle);

brick.GyroCalibrate(1);