%fprintf(" START Move Backward");

    fprintf("  Backward");

    brick.StopMotor('AB');
    brick.WaitForMotor('AB');

    fprintf(" Moving");

    brick.MoveMotor('AB', 50);
    pause(1);
    
    brick.StopMotor('AB');

    fprintf(" Stopped");

    pause(1);

    disp(" END");
