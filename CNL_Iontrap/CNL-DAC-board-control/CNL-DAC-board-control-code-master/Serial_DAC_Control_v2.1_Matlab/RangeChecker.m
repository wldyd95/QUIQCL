function Voltage_out = RangeChecker(Reference, Polarization, Voltage_in)
% Range checking process
switch Reference
        case 7.5 % reference voltage 7.5V
            switch Polarization
                case 'unipolar' % 0 ~ 30V
                    if(Voltage_in < 0)  
                        disp('negative voltage not allowed in uniploar mode!');
                        Voltage_out = 0;
                    elseif(Voltage_in >= 30)
                        disp('too large voltage!');
                        Voltage_out = 29.99;
                    else
                        Voltage_out = Voltage_in;
                    end
               
                case 'bipolar' % -15V ~ 15V
                    if(Voltage_in <= -15)
                        disp('too small voltage!');
                        Voltage_out = -14.99;           
                    elseif(Voltage_in >= 15) 
                        disp('too large voltage!');
                        Voltage_out = 14.99;
                    else 
                        Voltage_out = Voltage_in;
                    end
            end
        case 2.5 % reference voltage 2.5V
             switch Polarization
                case 'unipolar' % 0 ~ 10V
                    if(Voltage_in < 0)  
                        disp('negative voltage not allowed in uniploar mode!');
                        Voltage_out = 0;
                    elseif(Voltage_in >= 10)
                        disp('too large voltage!');
                        Voltage_out = 9.99;
                    else
                        Voltage_out = Voltage_in;
                    end
                   
                case 'bipolar' % -5V ~ 5V
                    if(Voltage_in <= -5)
                        disp('too small voltage!');
                        Voltage_out = -4.99;           
                    elseif(Voltage_in >= 5) 
                        disp('too large voltage!');
                        Voltage_out = 4.99;
                    else
                        Voltage_out = Voltage_in;
                    end
            end 
end
end