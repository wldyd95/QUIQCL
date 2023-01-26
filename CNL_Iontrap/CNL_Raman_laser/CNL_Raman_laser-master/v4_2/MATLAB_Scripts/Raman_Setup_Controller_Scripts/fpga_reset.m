function fpga_flush(serial_port, FPGA_Name)

if nargin<2
    FPGA_Name = '';
end
flushinput(serial_port);
write_to_fpga(serial_port, '_');
fscanf(serial_port);

disp([FPGA_Name, ' FPGA Flushed'])


end

