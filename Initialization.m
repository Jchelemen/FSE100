%%MATLAB INITIALIZATION 
javaclasspath("C:\Program Files\MATLAB\R2023b\toolbox\EV3_Toolbox\EV3");
brick = Brick('ioType','wifi','wfAddr','127.0.0.1','wfPort',5555,'wfSN','0016533dbaf5')

%%Instructions Set ------------------------------------
%%brick.MoveMotor('AB', 100);     35 power 4.8sec is about 1 unit
%%brick.StopMotor('AB');
%%brick.UltrasonicDist(4)
%%brick.MoveMotorAngleRel() nos, speed, angle, brake (360 is more like 90 lol), brake
%%brick.MoveMotorAngleAbs() nos, speed, angle, brake
%%brick.WaitForMotor() nos
%%display(brick.GetBattLevel())
%%pause(5);

disp("Starting Sequence")

%%Rotate Robot
brick.MoveMotor('A', 25);
brick.MoveMotor('B', -25);
pause(1.96);
brick.StopMotor('AB');
disp("Finished Initialization");

pause(1);

%%Calibrate Gyroscope
brick.GyroCalibrate(1);

endTrack = 'F';

while endTrack == 'F'
    %%level = brick.GetBattLevel();
    %%disp(level)
    Mazeloop;
    pause(0.1);
end





