%%Move forward 1 unit
brick.MoveMotor('AB', 35);
pause(4.8);
brick.StopMotor('AB');
pause(0.2)

%%Turn left 90 degrees
brick.MoveMotorAngleRel('B', 25, -330) ;
pause(4);

brick.MoveMotor('AB', 35);
pause(5.5);
brick.StopMotor('AB');
pause(0.2)

brick.MoveMotorAngleRel('B', 25, -330) ;
pause(4);

brick.MoveMotor('AB', 35);
pause(9.8);
brick.StopMotor('AB');
pause(0.2)

brick.MoveMotorAngleRel('B', 25, -330) ;
pause(4);

brick.MoveMotor('AB', 35);
pause(5.3);
brick.StopMotor('AB');
pause(0.2)

