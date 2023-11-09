oldRightWall = rightWall;
rightWall = brick.UltrasonicDist(4);

difference = oldRightWall - rightWall;

%fprintf("difference ");
%disp(difference);

if difference > 0.01
    brick.MoveMotor('B', -51);
end
if difference < -0.01
    brick.MoveMotor('A', -51);
end

brick.GyroCalibrate(1);

%0.05 sould be slightly left