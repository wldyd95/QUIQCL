
%% 32channel DAC (ARTY S7 - 8*DAC8734) control program
% Compatible with ARTY S7 Configuration file "Serial_DAC_Control_v1.0"
% Jaewon Kirk (jaewonkirk@gmail.com), 2018.4.16.

function sDAC_trig(DAC_object)
    fprintf(DAC_object{1}, 'TRIGGER');
    output = fscanf(DAC_object{1});
    disp(output);
end