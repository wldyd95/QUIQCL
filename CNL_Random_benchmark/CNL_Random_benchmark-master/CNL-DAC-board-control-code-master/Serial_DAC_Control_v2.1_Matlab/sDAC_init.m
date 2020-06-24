                                                                                   
%% 32channel DAC (ARTY S7 - 8*DAC8734) co                                                               ''. ntrol program
% Compatible with ARTY S7 Configuration file "Serial_DAC_Control_v1.0"
% Jaewon Kirk (jaewonkirk@gmail.com), 2018.4.16.
% Modified by Jiyong Yu (wldyd95@snu.ac.kr), 2019.07.27

function DAC_object = sDAC_init(Port, Reference, Polarization)

    % Serial Communication parameters must be same with arty setting.
    BaudRate = 57600;
    StopBits = 2;
    Terminator = cell(1,2);
    Terminator{1} = 'CR/LF';
    Terminator{2} = 'CR/LF';
    Timeout = 1;               
    
    % Find a serial port object
    serial_obj = instrfind('Type', 'serial', 'Port', Port);
    
    % Create the serial port object if it does not exist
    % otherwise use the serial object that was found
    if isempty(serial_obj)
        DAC_object = cell(1,3);
        DAC_object{1} = serial(Port, 'BaudRate', BaudRate, 'StopBits', StopBits, 'Terminator', Terminator, 'Timeout', Timeout);
        DAC_object{2} = Reference; % Reference voltage array for 8 chips: 7.5 or 2.5
        DAC_object{3} = Polarization; % Polarization array for 8 chips: unipolar or bipolar
    else
        fclose(serial_obj);
        fopen(serial_obj);
        DAC_object = cell(1,3);
        DAC_object{1} = serial_obj(1);
        DAC_object{2} = Reference; % Reference voltage array for 8 chips: 7.5 or 2.5
        DAC_object{3} = Polarization; % Polarization array for 8 chips: unipolar or bipolar
        
    end
     
    fclose(DAC_object{1});
    fopen(DAC_object{1});
   
    % reference = [7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5]
    % reference = [2.5 2.5 2.5 2.5 2.5 2.5 2.5 2.5]
    % polarization = {'bipolar' 'bipolar' 'bipolar' 'bipolar' 'bipolar' 'bipolar' 'bipolar' 'bipolar'}
    % polarization = {'unipolar' 'unipolar' 'unipolar' 'unipolar' 'unipolar' 'unipolar' 'unipolar' 'unipolar'}
    % dac = sDAC_init('COM5', reference, polarization)
end