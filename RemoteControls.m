global key;
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

        
        case 'a'
            disp('A Key Pressed');
            brick.MoveMotor('B', -20);


        case 's'
            disp('S Key Pressed');
            brick.MoveMotor('C', 5);


        case 'd'
            disp('D Key Pressed');
            brick.MoveMotor('B', 5);


        case 0 
            disp('No Key Pressed!');
            brick.MoveMotor('AD', 0);
            brick.MoveMotor('BC', 0);


        case 'p'
            break;
    end
end
CloseKeyboard();