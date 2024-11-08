brick.SetColorMode(2, 2);  

while 1
    color = brick.ColorCode(2);

    if color == 5  
        brick.StopMotor(‘AD');
        pause(1);  

	brick.MoveMotor('A', 50);
        brick.MoveMotor('D', 50);

    elseif color == 2
        brick.StopMotor(‘AD');

        brick.playTone(50, 3000, 1000);
        pause(1);  
        brick.playTone(50, 3000, 1000);

	break;

    elseif color == 3
         brick.StopMotor(‘AD');

        brick.playTone(50, 3000, 1000);
        pause(1);  
        brick.playTone(50, 3000, 1000);
        pause(1);  
        brick.playTone(50, 3000, 1000);

	brick.MoveMotor('A', 50);
        brick.MoveMotor('D', 50);

    else
        brick.MoveMotor('A', 50);
        brick.MoveMotor('D', 50);
    end
end
