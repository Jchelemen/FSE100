%disp("Color detected");
cooldown = 0;
switch color
    case 'G'
        disp("Green detected");
        if firstYellow == 'T'
            brick.StopMotor('AB');
            pause(0.5);
            brick.MoveMotor('AB', -40);
            pause(2);
            brick.StopMotor('AB');
            disp("Robot has reached the destination");
            endTrack = 'T';
        else
            brick.StopMotor('AB');
            pause(0.2);
            MoveBackward;
            RotateLeft;
            cooldown = 17;
            %mode = 'N';
        end
    case 'Y'
        disp("Yellow detected");
        firstYellow = 'T';
        brick.StopMotor('AB');
        pause(0.5);
        RotateRight;                    %rotate 180 degrees
        RotateRight;
        brick.MoveMotor('AB', 20);      %back up
        pause(2.3);
        brick.StopMotor('AB');
        brick.MoveMotor('C', 100);      %raise and lower lift
        pause(3.8);
        brick.MoveMotor('C',-100);
        pause(3.8);
        brick.StopMotor('C');
        pause(0.5);
        brick.MoveMotor('AB', -50);     %move forward to get out of zone
        pause(1.3);
        brick.StopMotor('AB');
        pause(0.3);
        %mode = 'N';
    case 'R'
        disp("Red detected - likely error");
        pause(0.5);
        %mode = 'N';
end
mode = previousMode;
disp("END COLORLOOP");

%pause(5);