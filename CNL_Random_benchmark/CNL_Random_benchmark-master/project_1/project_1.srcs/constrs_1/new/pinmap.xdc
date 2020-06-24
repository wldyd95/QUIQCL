#Clock
create_clock -period 10.000 -name clk [get_ports clk]

set_property PACKAGE_PIN R2 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

#USB_UART Bridge
set_property PACKAGE_PIN R12        [get_ports Uart_TXD]
set_property IOSTANDARD LVCMOS33    [get_ports Uart_TXD]
set_property PACKAGE_PIN V12        [get_ports Uart_RXD]
set_property IOSTANDARD LVCMOS33    [get_ports Uart_RXD]

set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports output_bit[0]];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports output_bit[1]];
set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports output_bit[2]];
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports output_bit[3]];
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports output_bit[4]];
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports output_bit[5]];
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports output_bit[6]];
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports output_bit[7]];
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports output_bit[8]];
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports output_bit[9]];
set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports output_bit[10]];
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports output_bit[11]];

set_property -dict { PACKAGE_PIN C13   IOSTANDARD LVCMOS33 } [get_ports switch[2]]; 
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports switch[1]]; 
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports switch[0]]; 
