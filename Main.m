global key;
InitKeyboard();

% brick = ConnectBrick("TANGO");
brick.SetColorMode(2, 2); 

wallDist = 30; 
leftTurns = 0; 

while true
    pause(0.1); 

    switch key
        case 'a'  
            while 1
                currentColor = brick.ColorCode(2);  
                dist = brick.UltrasonicDist(3);   
               
                if currentColor == 5 
                    brick.StopMotor('AD');
                    pause(1);

                    brick.MoveMotor(‘AD', -50)
                    pause(0.5)
                    continue;  
                
            
                elseif currentColor == 2 
                    brick.StopMotor('AD');

                    for i = 1:2
        		brick.playTone(100, 800, 500);
        		pause(0.75);
    		    end

                    break; 
                
              
                elseif currentColor == 3 
                    brick.StopMotor('AD');
                    
		     for i = 1:3
        		brick.playTone(100, 800, 500);
        		pause(0.75);
    		     end

                    brick.MoveMotor('AD', -50)
                    pause(0.5)
                    continue;  
                end
                
             
                if dist < wallDist
                   global leftTurns

   		    if leftTurns < 3
                       brick.MoveMotor('A', 50);
    			brick.MoveMotor('D', -50);
    			pause(1);

    			brick.MoveMotor('A', -50);
    			brick.MoveMotor('D', -50);
    			pause(0.5);

       			 leftTurns = leftTurns + 1;
   		   else
        		brick.MoveMotor('A', -50);
    			brick.MoveMotor('D', 50);
    			pause(1);

   			brick.MoveMotor('A', -50);
   			brick.MoveMotor('D', -50);
    			pause(0.5);

        		leftTurns = leftTurns - 1;
    		    end
                else
                    brick.MoveMotor('AD', -50);  
                end
            end

        case 'uparrow' 
            brick.MoveMotor('AD', -1000);
        case 'downarrow' 
            brick.MoveMotor('AD', 1000);
        case 'leftarrow' 
            brick.MoveMotor('A', 1000);
            brick.MoveMotor('D', -1000);
        case 'rightarrow' 
            brick.MoveMotor('D', 1000);
            brick.MoveMotor('A', -1000);
        case 'w' 
            brick.MoveMotor('C', -100);
        case 's' 
            brick.MoveMotor('C', 5);
        case 'p' 
            break;
        otherwise 
            brick.MoveMotor('AD', 0);
            brick.MoveMotor('BC', 0);
    end
end

CloseKeyboard();
