function Data_Register = Converter_dac(Reference, Voltage)
% For converting rule, see dac8734 manual page 20
    gain = 4; % gain is fixed for dac_board
    if(Voltage < 0)
       Data_Register = 65536 + (65536*Voltage)/(gain*Reference); % 2's complement
    else
       Data_Register = (65536*Voltage)/(gain*Reference);
    end
end