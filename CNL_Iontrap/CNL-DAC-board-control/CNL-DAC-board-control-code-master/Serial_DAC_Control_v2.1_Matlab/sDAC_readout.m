
%% 32channel DAC (ARTY S7 - 8*DAC8734) control program
% Compatible with ARTY S7 Configuration file "Serial_DAC_Control_v1.0"
% Jaewon Kirk (jaewonkirk@gmail.com), 2018.4.16.
% Modified by Jiyong Yu (wldyd95@snu.ac.kr), 2019.01.04, 

function output = sDAC_readout(DAC_object)

    output = zeros(32,1);
    RX = '0000';
    
    for i=0:7
        for j=0:3
            fprintf(DAC_object{1}, ['R' num2str(i) num2str(j) 'D']);
            RX = fscanf(DAC_object{1});
                if((double(RX(1))-97)<8)     % Positive
                    output(1+4*i+j) = 4096*(double(RX(1))-97) + 256*(double(RX(2))-97) + 16*(double(RX(3))-97) + (double(RX(4))-97);
                else                         % Negative
                    output(1+4*i+j) = 4096*(double(RX(1))-97) + 256*(double(RX(2))-97) + 16*(double(RX(3))-97) + (double(RX(4))-97) - 65536;
                end
        end
    end
end