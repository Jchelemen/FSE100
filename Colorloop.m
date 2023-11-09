%disp("Color detected");
switch color
    case 'G'
        disp("Green detected");
        if firstYellow == 'T'
            brick.StopMotor('AB');
            pause(0.5);
            brick.MoveMotor('AB', -20);
            pause(1);
            brick.StopMotor('AB');
            disp("Robot has reached the destination");
            endTrack = 'T';
        end
    case 'Y'
        disp("Yellow detected");
        firstYellow = 'T';
        brick.StopMotor('AB');
        pause(0.5);
        RotateRight;
        RotateRight;
        brick.MoveMotor('AB', 20);
        pause(2.1);
        brick.StopMotor('AB');
        %raise and lower lift
        pause(0.5);
        brick.MoveMotor('AB', -50);
        pause(1.4);
        brick.StopMotor('AB');
        pause(0.3);
        mode = 'N';
    case 'R'
        disp("Red detected");
        pause(0.1);
        mode = 'N';
end

disp("END COLORLOOP");

%pause(5);