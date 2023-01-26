function write_to_fpga(com,  command_str)

% check is still writing
while ~strcmp(get(com, 'TransferStatus'), 'idle')
end

fprintf(com, command_str, 'async');



end

