#Clock
create_clock -period 10.000 -name clk [get_ports clk]

set_property PACKAGE_PIN R2 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

#USB_UART Bridge
set_property PACKAGE_PIN R12        [get_ports Uart_TXD]
set_property IOSTANDARD LVCMOS33    [get_ports Uart_TXD]
set_property PACKAGE_PIN V12        [get_ports Uart_RXD]
set_property IOSTANDARD LVCMOS33    [get_ports Uart_RXD]


#SPI connection with DAC
set_property PACKAGE_PIN R17        [get_ports LDAC_OUT]
set_property IOSTANDARD LVCMOS33    [get_ports LDAC_OUT]

set_property PACKAGE_PIN U17        [get_ports CH0_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH0_nCS]
set_property PACKAGE_PIN U18        [get_ports CH0_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH0_SCLK]
set_property PACKAGE_PIN U16        [get_ports CH0_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH0_SDI]

set_property PACKAGE_PIN P13        [get_ports CH1_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH1_nCS]
set_property PACKAGE_PIN R13        [get_ports CH1_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH1_SCLK]
set_property PACKAGE_PIN V14        [get_ports CH1_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH1_SDI]

set_property PACKAGE_PIN G16        [get_ports CH2_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH2_nCS]
set_property PACKAGE_PIN K14        [get_ports CH2_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH2_SCLK]
set_property PACKAGE_PIN H17        [get_ports CH2_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH2_SDI]

set_property PACKAGE_PIN H16        [get_ports CH3_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH3_nCS]
set_property PACKAGE_PIN T15        [get_ports CH3_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH3_SCLK]
set_property PACKAGE_PIN R15        [get_ports CH3_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH3_SDI]

set_property PACKAGE_PIN R16        [get_ports CH4_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH4_nCS]
set_property PACKAGE_PIN T14        [get_ports CH4_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH4_SCLK]
set_property PACKAGE_PIN R14        [get_ports CH4_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH4_SDI]

set_property PACKAGE_PIN L16        [get_ports CH5_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH5_nCS]
set_property PACKAGE_PIN N13        [get_ports CH5_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH5_SCLK]
set_property PACKAGE_PIN L13        [get_ports CH5_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH5_SDI]

set_property PACKAGE_PIN V13        [get_ports CH6_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH6_nCS]
set_property PACKAGE_PIN T12        [get_ports CH6_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH6_SCLK]
set_property PACKAGE_PIN T13        [get_ports CH6_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH6_SDI]

set_property PACKAGE_PIN R11        [get_ports CH7_nCS]
set_property IOSTANDARD LVCMOS33    [get_ports CH7_nCS]
set_property PACKAGE_PIN T11        [get_ports CH7_SCLK]
set_property IOSTANDARD LVCMOS33    [get_ports CH7_SCLK]
set_property PACKAGE_PIN U11        [get_ports CH7_SDI]
set_property IOSTANDARD LVCMOS33    [get_ports CH7_SDI]