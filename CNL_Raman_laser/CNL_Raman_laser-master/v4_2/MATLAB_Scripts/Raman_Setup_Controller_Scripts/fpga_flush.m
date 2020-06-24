function fpga_flush(serial_port, FPGA_Name)

flushinput(serial_port);
write_to_fpga(serial_port, 'MODE?');  % random command that will generate some answer or error display
fscanf(serial_port);
disp([FPGA_Name, ' FPGA Flushed'])


end

