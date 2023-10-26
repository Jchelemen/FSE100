
RightwallTest
if rightWall == 'T'
    FrontwallTest
    if frontWall == 'T'
        brick.MoveMotorAngleRel('B', 25, 350) ;
        pause(4);
    else
        brick.MoveMotor('AB', 35);
        pause(4.8);
        brick.StopMotor('AB');
    end
else
    brick.MoveMotorAngleRel('B', 25, -350) ;
    pause(4);
    brick.MoveMotor('AB', 35);
    pause(4.8);
    brick.StopMotor('AB');
end

%%  if (rightwall)
%%      if (frontwall)
%%          turn left
%%      else move forward
%%  else turn right, move forward