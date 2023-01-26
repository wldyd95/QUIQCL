
%% 32channel DAC (ARTY S7 - 8*DAC8734) control program
% Compatible with ARTY S7 Configuration file "Serial_DAC_Control_v1.0"
% Jaewon Kirk (jaewonkirk@gmail.com), 2018.4.16.
% Modified by Jiyong Yu (wldyd95@snu.ac.kr), 2019.01.04

function sDAC_setV(DAC_object, Channel, Voltage, Trigger)
    reference = DAC_object{2}; % Reference voltage for DAC board, can be 7.5V or 2.5V
    polarization = DAC_object{3}; % Polarity for DAC board, can be unipolar or bipolar
    Voltage_out = Voltage;
    Chip_number = floor((Channel-1)/4);
    Pin_number = mod((Channel-1),4);
    
    % Range checking process
    switch Chip_number
        case 0
            Voltage_out = RangeChecker(reference(1), polarization{1}, Voltage);
            Data_Register = Converter_dac(reference(1), Voltage_out);
        case 1
            Voltage_out = RangeChecker(reference(2), polarization{2}, Voltage);
            Data_Register = Converter_dac(reference(2), Voltage_out);
        case 2
            Voltage_out = RangeChecker(reference(3), polarization{3}, Voltage);
            Data_Register = Converter_dac(reference(3), Voltage_out);
        case 3
            Voltage_out = RangeChecker(reference(4), polarization{4}, Voltage);
            Data_Register = Converter_dac(reference(4), Voltage_out);
        case 4
            Voltage_out = RangeChecker(reference(5), polarization{5}, Voltage);
            Data_Register = Converter_dac(reference(5), Voltage_out);
        case 5
            Voltage_out = RangeChecker(reference(6), polarization{6}, Voltage);
            Data_Register = Converter_dac(reference(6), Voltage_out);
        case 6
            Voltage_out = RangeChecker(reference(7), polarization{7}, Voltage);
            Data_Register = Converter_dac(reference(7), Voltage_out);
        case 7
            Voltage_out = RangeChecker(reference(8), polarization{8}, Voltage);
            Data_Register = Converter_dac(reference(8), Voltage_out);
    end
    
    Serial_Out = [floor(Data_Register/4096) floor(mod(Data_Register,4096)/256) floor(mod(Data_Register,256)/16) floor(mod(Data_Register,16))];
   
    % Pin 25 and 26 are reversed, so we exchange them manually
    if(Chip_number == 6) 
        if(Pin_number == 0 || Pin_number == 1)
           Pin_number = 1 - Pin_number; 
        end
    end
    
    r = ['W' num2str(Chip_number) num2str(Pin_number) 'D ' char(Serial_Out+97)];
    fprintf(DAC_object{1}, r);
    output = fscanf(DAC_object{1});
    disp(r);
    
    % update value using trigger
    if (Trigger==1)
        fprintf(DAC_object{1}, 'TRIGGER');
        output = fscanf(DAC_object{1});
    end
end
