%fprintf("  START Rotate Right");


    fprintf("  Right");

    brick.StopMotor('AB');
    brick.WaitForMotor('AB');

    fprintf(" Moving");

    brick.MoveMotor('A', -20);
    brick.MoveMotor('B', 20);
    pause(1.39);
    
    brick.StopMotor('AB');

    fprintf(" Stopped");

    contLeftTurns = 0;
    pause(1);

    AdjustAngle;

    disp(" END");
