
%% 32channel DAC (ARTY S7 - 8*DAC8734) control program
% Compatible with ARTY S7 Configuration file "Serial_DAC_Control_v1.0"
% Jaewon Kirk (jaewonkirk@gmail.com), 2018.4.16.

function sDAC_quit(DAC_object)
    fclose(DAC_object{1});
%     output = 'Serial Communication Closed. You can clear the handle object.';
%     disp(output);
end