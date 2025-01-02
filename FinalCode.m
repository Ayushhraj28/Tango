global key;
blue = 2;
yellow = 4;
green = 3;
red = 5;
startUp = false;
passengerOn = false;
brick.SetColorMode(2, 2);
speedOfD = 65;
speedOfA = 50;


while 1
    color = brick.ColorCode(2);
    if color == green
        startUp = true
        brick.MoveMotor('A', speedOfA);
        brick.MoveMotor('D', speedOfD);

    end
    if color == red
        brick.MoveMotor('ACD', 0);
        pause(2);
        brick.MoveMotor('A', speedOfA);
        brick.MoveMotor('D', speedOfD);
    end

    if (color == blue && passengerOn == false) || color == yellow
        InitKeyboard();
        while 1
            pause(0.1);
            switch key
                case 'uparrow'
                    disp('Up Arrow Pressed!');
                    brick.MoveMotor('AD', -1000);
                    
                    
                case 'downarrow'
                    disp('Down Arrow Pressed!');
                    brick.MoveMotor('AD', 1000);
                
                    
                case 'leftarrow'
                    disp('Left Arrow Pressed!');
                    brick.MoveMotor('A', 1000);
                    brick.MoveMotor('D', -1000);
                    
                    
                case 'rightarrow'
                    disp('Right Arrow Pressed!');
                    brick.MoveMotor('D', 1000);
                    brick.MoveMotor('A', -1000);
                  
               
                case 'w'
                    disp('W Key Pressed');
                    brick.MoveMotor('C', -100);
        
                
                
        
        
                case 's'
                    disp('S Key Pressed');
                    brick.MoveMotor('C', 5);
        
        
               
        
        
                case 0 
                    disp('No Key Pressed!');
                    brick.MoveMotor('AD', 0);
                    brick.MoveMotor('BC', 0);
        
        
                case 'p'
                    passengerOn = true;
                    break;
            end
        end
        CloseKeyboard();
    end

    if startUp == true
        color = brick.ColorCode(2);
        if color == red
            brick.MoveMotor('ACD', 0);
            pause(2);
            brick.MoveMotor('A', speedOfA);
            brick.MoveMotor('D', speedOfD);
        end

        pause(.5);
        right = rightSave(brick.UltrasonicDist(4));
        right = rightSave(brick.UltrasonicDist(4));
        display(right);
        brick.MoveMotorAngleRel('B', 20, -90, 'Brake');
        pause(.5);
        front = brick.UltrasonicDist(4);
        front = brick.UltrasonicDist(4);
        display(front);
        brick.MoveMotorAngleRel('B', 20, 90, 'Brake');

        color = brick.ColorCode(2);
        if color == red
            brick.MoveMotor('ACD', 0);
            pause(2);
            brick.MoveMotor('A', speedOfA);
            brick.MoveMotor('D', speedOfD);
        end

        if front < 32 && right < 45
            display('HELLO');
            brick.MoveMotor('ADC', 0);
            pause(1);
            brick.GyroCalibrate(3);
            angle = brick.GyroAngle(3);
            display(angle);
            brick.MoveMotor('A', 50);
            brick.MoveMotor('D', -50);
            angle = brick.GyroAngle(3);
            while (abs(angle) < 80)
                angle = brick.GyroAngle(3);
                pause(0.03);
            end
            brick.MoveMotor('A', 0);
            brick.MoveMotor('D', 0);
            

        elseif right > 64
            display('HELLO');
            brick.MoveMotor('ADC', 0);
           pause(1);
            brick.GyroCalibrate(3);
            angle = brick.GyroAngle(3);
            display(angle);
            brick.MoveMotor('A', -50);
            brick.MoveMotor('D', 50);
            angle = brick.GyroAngle(3);
            while (abs(angle) < 80)
                angle = brick.GyroAngle(3)
                pause(0.03);
            end
            brick.MoveMotor('A', 50);
            brick.MoveMotor('D', speedOfD);
            pause(2);
            

        elseif right >= 21 && right <= 27
            brick.MoveMotor('A', speedOfA);
            brick.MoveMotor('D', speedOfD);

        
        
        elseif right > 27
            brick.MoveMotor('AD', 0);
            pause(.1);
            brick.MoveMotor('D', speedOfD);
            pause(.1);
            brick.MoveMotor('A', speedOfA);

        else 
            brick.MoveMotor('D', speedOfD);
            brick.MoveMotor('A', speedOfA);
        end

    


    end
    color = brick.ColorCode(2);
end



