fprintf(" START Move Forward");
initialDistance = brick.UltrasonicDist(4);
brick.MoveMotor('AB', -35);
pause(4.82);
brick.StopMotor('AB');
disp(" END");
