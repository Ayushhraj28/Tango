brick.SetColorMode(2, 2);
left = 0;
right = 0;
front = 0;
while 1
    color = brick.ColorCode(2);
    
    if color == 3
        brick.MoveMotor('AD', 50);

        while color == 3
           
           brick.MoveMotorAngleAbs('B', 20, -90, 'Brake');
           brick.WaitForMotor('B'); 
           left = brick.UltrasonicDist(4);

           brick.MoveMotorAngleAbs('B', 20, 90, 'Brake');
           brick.WaitForMotor('B'); 
           front = brick.UltrasonicDist(4);
           
           brick.MoveMotorAnglAbs(B', 20, 90, 'Brake');
           brick.WaitForMotor('B'); 
           right = brick.UltrasonicDist(4);
           
           brick.MoveMotorAngleAbs('B', 20, 90, 'Brake');
           brick.WaitForMotor('B');

        end
    elseif color == 1
        brick.MoveMotor('ABCD', 0);
    end
    color = brick.ColorCode(2);
end





