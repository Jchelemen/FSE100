fprintf(" START Rotate Left");

brick.MoveMotor('A', 20);
brick.MoveMotor('B', -20);
pause(1.39);
brick.StopMotor('AB');

pause(1);

disp(" END");
