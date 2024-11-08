brick.SetColorMode(2, 2);
while 1
    color = brick.ColorCode(2);

    if color == 1
        brick.MoveMotor('A', 50);
        brick.MoveMotor('D', 50);

    elseif color == 5
        brick.MoveMotor('A', 0);
        brick.MoveMotor('D', 0);
    elseif color == 2
        brick.MoveMotor('A', 0);
        brick.MoveMotor('D', 0);
        brick.playTone(50, 3000, 1000);
        brick.playTone(50, 3000, 1000);
    elseif color == 3
        brick.MoveMotor('A', 0);
        brick.MoveMotor('D', 0);
        brick.playTone(50, 3000, 1000);
        brick.playTone(50, 3000, 1000);
        brick.playTone(50, 3000, 1000);
    end
end