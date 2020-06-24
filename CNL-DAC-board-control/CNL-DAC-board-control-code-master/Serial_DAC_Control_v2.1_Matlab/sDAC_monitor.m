function sDAC_monitor(DAC_object,Channel)

% channel 25 and 26 are reversed
if(Channel == 25 || Channel == 26) 
    Channel = 51 - Channel;
end

Chip_number = num2str(floor((Channel-1)/4));
Pin_number = num2str(mod((Channel-1),4));
r = ['M' Chip_number Pin_number 'D'];
fprintf(DAC_object{1}, r);
disp(r);

end

