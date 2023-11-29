%MATLAB INITIALIZATION -----------------------------
javaclasspath("C:\Program Files\MATLAB\R2023b\toolbox\EV3_Toolbox\EV3");
pause(0.2);
brick = Brick('ioType','wifi','wfAddr','127.0.0.1','wfPort',5555,'wfSN','0016533dbaf5');

pause(0.5);

%Input Settings ------------------------------------ 
%{
                A B C D                             1 2 3 4 X
    Left Wheel  O X X X         Touch Sensor 1      X X X X O
    Right Wheel X O X X         Touch Sensor 2      X O X X X
    Lift        X X O X         Color Sensor        X X O X X
                                Ultrasonic Sensor   X X X O X
                                Gyro Sensor         O X X X X
%}

%Startup Features
disp("--STARTING SEQUENCE--");
brick.GyroCalibrate(1);
endTrack = 'F';             % Stops loop after crossing yellow then green
mode = 'N';                 % N = normal;   L = loop;    C = color;
previousMode = 'N';         % Make sure the previous mode doesnt overwrite
contLeftTurns = 0;          % Got removed later for a new system
cooldown = 0;               % For making right turns work w/ continuous system

brick.SetColorMode(3, 2);
firstYellow = 'F';

%Move back a little bit
brick.MoveMotor('AB', 30);
pause(0.2);
brick.StopMotor('AB');
pause(0.2);

%Initial Testing
rightWall = brick.UltrasonicDist(4);
if (rightWall > 40)
    disp("*Starting Right");
    RotateRight;
else 
    RotateLeft;
    rightWall = brick.UltrasonicDist(4);
    if (rightWall > 240) && (rightWall < 270)
        disp("loop detected");
        RotateLeft;
        mode = 'L';
    else
        RotateRight;
    end
end

%Experimental grounds ----------------------------------
%{
disp("Testing...");
RotateLeft;
rightWall = brick.UltrasonicDist(4);
disp(rightWall);
pause(4);
disp("End of testing****");
%}

%Runtime Loops
pause(0.5);
cycle = 1;
while endTrack == 'F'
%
    if contLeftTurns >= 8
        contLeftTurns = 0;
        brick.MoveMotor('AB', -50);
        pause(7.5);
        brick.StopMotor('AB');
        pause(0.3);
        RotateRight;
        RotateRight;
        mode = 'L';
        pause(0.5);
    end
%
    if mode == 'N'
        Normalloop;
    elseif mode == 'L'
        Looploop;
    else
        Colorloop;
    end
%{
    switch mode
        case 'N'
            Normalloop;
        case 'L'
            Looploop;
        case 'C'
            Colorloop;
    end
%}
    if cooldown > 0
        cooldown = cooldown - 1;
        fprintf("Cooldown: %d  ", cooldown);
    end
    pause(0.05);
    fprintf("Cycle %d: ", cycle);
    cycle = cycle + 1;
end
fprintf("\n--The program has terminated--\n");


