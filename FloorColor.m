
colorNumber = brick.ColorCode(3);
color = 'X';
previousMode = mode;
switch colorNumber
    case 3
        color = 'G';
        mode = 'C';
    case 4
        color = 'Y';
        mode = 'C';
    case 5
        color = 'R';
        %mode = 'C';    %Should not colorloop, check during looploop
end
%{
0	No color (Unknown color) 
1	Black 
2	Blue 
3	Green 
4	Yellow 
5	Red 
6	White 
7	 Brown
%}