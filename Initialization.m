%MATLAB INITIALIZATION -----------------------------
javaclasspath("C:\Program Files\MATLAB\R2023b\toolbox\EV3_Toolbox-1\EV3");
brick = Brick('ioType','wifi','wfAddr','127.0.0.1','wfPort',5555,'wfSN','0016533dbaf5');

%%Input Settings ------------------------------------
%{
                A B C D                             1 2 3 4 X
    Left Wheel  O X X X         Touch Sensor 1      X X X X O
    Right Wheel X O X X         Touch Sensor 2      X O X X X
    Lift        X X O X         Color Sensor        X X O X X
                                Ultrasonic Sensor   X X X O X
                                Gyro Sensor         O X X X X
%}

disp("*Starting Sequence");
brick.GyroCalibrate(1);
endTrack = 'F';    % Stops loop after crossing yellow then green
mode = 'N';        % N = normal;   L = loop;    C = color;
contLeftTurns = 0;
cooldown = 0;

brick.SetColorMode(3, 2);
firstYellow = 'F';


%Testing grounds ----------------------------------
%{
disp("Testing...");
RotateLeft;
RotateLeft;
pause(1);
disp("End of testing****");
%}

pause(0.5);
while endTrack == 'F'
    switch mode
        case 'N'
            Normalloop;
        case 'L'
            Looploop;
        case 'C'
            Colorloop;
    end
    if cooldown > 0
        cooldown = cooldown - 1;
        fprintf("Cooldown: ");
        disp(cooldown);
    end
    pause(0.1);
end
disp("*The program has terminated");


