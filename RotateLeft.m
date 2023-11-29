%fprintf("  START Rotate Left");


    fprintf("  Left");

    brick.StopMotor('AB');
    brick.WaitForMotor('AB');

    fprintf(" Moving");

    brick.MoveMotor('A', 20);
    brick.MoveMotor('B', -20);
    pause(1.39);
    
    brick.StopMotor('AB');

    fprintf(" Stopped");

    contLeftTurns = contLeftTurns + 1;
    pause(1);

    AdjustAngle;

    fprintf(" END \n");
