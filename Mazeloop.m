disp("START Mazeloop");

RightwallTest;
if rightWall == 'T'
    FrontwallTest
    %%pause(1.4);
    if frontWall == 'T'
        RotateLeft;
        AdjustAngle;
        %%pause(1.4);
    else
        MoveForward;
        AdjustAngle;
        %%pause(5);
    end
else
    RotateRight;
    AdjustAngle;
    %%pause(1.4);
    MoveForward;
    %%pause(5);
end

pause(1);
disp("END Mazeloop");

%%  if (rightwall)
%%      if (frontwall)
%%          turn left
%%      else move forward
%%  else turn right, move forward