%fprintf(" START Full Move Forward");


    fprintf("  Full Forward");

    brick.StopMotor('AB');
    brick.WaitForMotor('AB');

    fprintf(" Moving");

    brick.MoveMotor('AB', -50);
    pause(2);
    
    brick.StopMotor('AB');

    fprintf(" Stopped");

    pause(1);

    disp(" END");
