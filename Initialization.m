%%MATLAB INITIALIZATION 
javaclasspath("C:\Program Files\MATLAB\R2023b\toolbox\EV3_Toolbox\EV3");
brick = Brick('ioType','wifi','wfAddr','127.0.0.1','wfPort',5555,'wfSN','0016533dbaf5')

%%Instructions Set ------------------------------------ A=L B=R
%%brick.MoveMotor('AB', 100);     35 power 4.8sec is about 1 unit
%%brick.StopMotor('AB');
%%brick.UltrasonicDist(4)
%%brick.MoveMotorAngleRel() nos, speed, angle, brake (360 is more like 90 lol), brake
%%brick.WaitForMotor() nos
%%pause(5);

%%Forward Step ***
%%brick.MoveMotor('AB', 35);
%%pause(4.8);
%%brick.StopMotor('AB');

%%Centralize Robot
brick.MoveMotor('AB', 25);
pause(0.5);
brick.StopMotor('AB');

pause(1);

%%More Complete Algorithm WIP
%%while endTrack == 'F'
%%    Mazeloop
%%end

%%Simple Programmed Maze: Easy Fare
EasyFare;




