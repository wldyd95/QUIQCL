-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Tue Jul 30 15:51:19 2019
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {q:/Users/swYoo/Arty
--               S7/DAC8734/test2/v1_00.srcs/sources_1/ip/jtag_axi_0/jtag_axi_0_sim_netlist.vhdl}
-- Design      : jtag_axi_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of jtag_axi_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of jtag_axi_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of jtag_axi_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of jtag_axi_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of jtag_axi_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of jtag_axi_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of jtag_axi_0_xpm_cdc_gray : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of jtag_axi_0_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of jtag_axi_0_xpm_cdc_gray : entity is "GRAY";
end jtag_axi_0_xpm_cdc_gray;

architecture STRUCTURE of jtag_axi_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair25";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(5),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(2),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(6)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__2\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair36";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(5),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(2),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(6)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__3\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__3\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__3\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair39";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(5),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(2),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(6)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__4\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__4\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__4\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair22";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(4),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => binval(5),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(1),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(2),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(6)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair15";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__parameterized0__2\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__parameterized0__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair93";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__parameterized0__3\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__parameterized0__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair94";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ : entity is "GRAY";
end \jtag_axi_0_xpm_cdc_gray__parameterized0__4\;

architecture STRUCTURE of \jtag_axi_0_xpm_cdc_gray__parameterized0__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair14";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end jtag_axi_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 5) => RD_PNTR(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12 downto 5) => WR_PNTR(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => s_dclk_o,
      CLKBWRCLK => aclk,
      DIADI(15 downto 0) => \rx_fifo_data_o_reg[31]\(15 downto 0),
      DIBDI(15 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 16),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => D(15 downto 0),
      DOBDO(15 downto 0) => D(31 downto 16),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_A,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => p_20_out,
      WEBWE(2) => p_20_out,
      WEBWE(1) => p_20_out,
      WEBWE(0) => p_20_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92\ : STD_LOGIC;
  signal doutb : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"100000",
      ADDRARDADDR(9 downto 6) => RD_PNTR(3 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 10) => B"100000",
      ADDRBWRADDR(9 downto 6) => WR_PNTR(3 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => aclk,
      CLKBWRCLK => s_dclk_o,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => \tx_fifo_dataout_reg[63]\(31 downto 0),
      DIBDI(31 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 32),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 15) => D(21 downto 5),
      DOADO(14 downto 12) => doutb(14 downto 12),
      DOADO(11) => D(4),
      DOADO(10 downto 4) => doutb(10 downto 4),
      DOADO(3 downto 0) => D(3 downto 0),
      DOBDO(31 downto 0) => D(53 downto 22),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88\,
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => p_20_out,
      WEBWE(6) => p_20_out,
      WEBWE(5) => p_20_out,
      WEBWE(4) => p_20_out,
      WEBWE(3) => p_20_out,
      WEBWE(2) => p_20_out,
      WEBWE(1) => p_20_out,
      WEBWE(0) => p_20_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0_18\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0_18\ : entity is "blk_mem_gen_prim_wrapper";
end \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0_18\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0_18\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"100000",
      ADDRARDADDR(9 downto 6) => RD_PNTR(3 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 10) => B"100000",
      ADDRBWRADDR(9 downto 6) => WR_PNTR(3 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => aclk,
      CLKBWRCLK => s_dclk_o,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => Q(31 downto 0),
      DIBDI(31 downto 0) => Q(63 downto 32),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => D(31 downto 0),
      DOBDO(31 downto 0) => D(63 downto 32),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88\,
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => p_20_out,
      WEBWE(6) => p_20_out,
      WEBWE(5) => p_20_out,
      WEBWE(4) => p_20_out,
      WEBWE(3) => p_20_out,
      WEBWE(2) => p_20_out,
      WEBWE(1) => p_20_out,
      WEBWE(0) => p_20_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_dmem is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    p_0_out_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_13_out : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc0.count_d2_reg[7]\ : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    dm_rd_en : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_dmem : entity is "dmem";
end jtag_axi_0_dmem;

architecture STRUCTURE of jtag_axi_0_dmem is
  signal RAM_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_15_17_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_18_20_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_21_23_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_24_26_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_27_29_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_30_30_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_31_31_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_30_30_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_31_31_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_15_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_18_20 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_21_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_24_26 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_27_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_9_11 : label is "";
begin
RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(0),
      DIB => \tx_fifo_dataout_reg[31]\(1),
      DIC => \tx_fifo_dataout_reg[31]\(2),
      DID => '0',
      DOA => RAM_reg_0_63_0_2_n_0,
      DOB => RAM_reg_0_63_0_2_n_1,
      DOC => RAM_reg_0_63_0_2_n_2,
      DOD => NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(12),
      DIB => \tx_fifo_dataout_reg[31]\(13),
      DIC => \tx_fifo_dataout_reg[31]\(14),
      DID => '0',
      DOA => RAM_reg_0_63_12_14_n_0,
      DOB => RAM_reg_0_63_12_14_n_1,
      DOC => RAM_reg_0_63_12_14_n_2,
      DOD => NLW_RAM_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(15),
      DIB => \tx_fifo_dataout_reg[31]\(16),
      DIC => \tx_fifo_dataout_reg[31]\(17),
      DID => '0',
      DOA => RAM_reg_0_63_15_17_n_0,
      DOB => RAM_reg_0_63_15_17_n_1,
      DOC => RAM_reg_0_63_15_17_n_2,
      DOD => NLW_RAM_reg_0_63_15_17_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(18),
      DIB => \tx_fifo_dataout_reg[31]\(19),
      DIC => \tx_fifo_dataout_reg[31]\(20),
      DID => '0',
      DOA => RAM_reg_0_63_18_20_n_0,
      DOB => RAM_reg_0_63_18_20_n_1,
      DOC => RAM_reg_0_63_18_20_n_2,
      DOD => NLW_RAM_reg_0_63_18_20_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(21),
      DIB => \tx_fifo_dataout_reg[31]\(22),
      DIC => \tx_fifo_dataout_reg[31]\(23),
      DID => '0',
      DOA => RAM_reg_0_63_21_23_n_0,
      DOB => RAM_reg_0_63_21_23_n_1,
      DOC => RAM_reg_0_63_21_23_n_2,
      DOD => NLW_RAM_reg_0_63_21_23_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(24),
      DIB => \tx_fifo_dataout_reg[31]\(25),
      DIC => \tx_fifo_dataout_reg[31]\(26),
      DID => '0',
      DOA => RAM_reg_0_63_24_26_n_0,
      DOB => RAM_reg_0_63_24_26_n_1,
      DOC => RAM_reg_0_63_24_26_n_2,
      DOD => NLW_RAM_reg_0_63_24_26_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(27),
      DIB => \tx_fifo_dataout_reg[31]\(28),
      DIC => \tx_fifo_dataout_reg[31]\(29),
      DID => '0',
      DOA => RAM_reg_0_63_27_29_n_0,
      DOB => RAM_reg_0_63_27_29_n_1,
      DOC => RAM_reg_0_63_27_29_n_2,
      DOD => NLW_RAM_reg_0_63_27_29_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(30),
      DPO => RAM_reg_0_63_30_30_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_0_63_30_30_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(31),
      DPO => RAM_reg_0_63_31_31_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_0_63_31_31_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(3),
      DIB => \tx_fifo_dataout_reg[31]\(4),
      DIC => \tx_fifo_dataout_reg[31]\(5),
      DID => '0',
      DOA => RAM_reg_0_63_3_5_n_0,
      DOB => RAM_reg_0_63_3_5_n_1,
      DOC => RAM_reg_0_63_3_5_n_2,
      DOD => NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(6),
      DIB => \tx_fifo_dataout_reg[31]\(7),
      DIC => \tx_fifo_dataout_reg[31]\(8),
      DID => '0',
      DOA => RAM_reg_0_63_6_8_n_0,
      DOB => RAM_reg_0_63_6_8_n_1,
      DOC => RAM_reg_0_63_6_8_n_2,
      DOD => NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(9),
      DIB => \tx_fifo_dataout_reg[31]\(10),
      DIC => \tx_fifo_dataout_reg[31]\(11),
      DID => '0',
      DOA => RAM_reg_0_63_9_11_n_0,
      DOB => RAM_reg_0_63_9_11_n_1,
      DOC => RAM_reg_0_63_9_11_n_2,
      DOD => NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg
    );
RAM_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(0),
      DIB => \tx_fifo_dataout_reg[31]\(1),
      DIC => \tx_fifo_dataout_reg[31]\(2),
      DID => '0',
      DOA => RAM_reg_128_191_0_2_n_0,
      DOB => RAM_reg_128_191_0_2_n_1,
      DOC => RAM_reg_128_191_0_2_n_2,
      DOD => NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(12),
      DIB => \tx_fifo_dataout_reg[31]\(13),
      DIC => \tx_fifo_dataout_reg[31]\(14),
      DID => '0',
      DOA => RAM_reg_128_191_12_14_n_0,
      DOB => RAM_reg_128_191_12_14_n_1,
      DOC => RAM_reg_128_191_12_14_n_2,
      DOD => NLW_RAM_reg_128_191_12_14_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(15),
      DIB => \tx_fifo_dataout_reg[31]\(16),
      DIC => \tx_fifo_dataout_reg[31]\(17),
      DID => '0',
      DOA => RAM_reg_128_191_15_17_n_0,
      DOB => RAM_reg_128_191_15_17_n_1,
      DOC => RAM_reg_128_191_15_17_n_2,
      DOD => NLW_RAM_reg_128_191_15_17_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(18),
      DIB => \tx_fifo_dataout_reg[31]\(19),
      DIC => \tx_fifo_dataout_reg[31]\(20),
      DID => '0',
      DOA => RAM_reg_128_191_18_20_n_0,
      DOB => RAM_reg_128_191_18_20_n_1,
      DOC => RAM_reg_128_191_18_20_n_2,
      DOD => NLW_RAM_reg_128_191_18_20_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(21),
      DIB => \tx_fifo_dataout_reg[31]\(22),
      DIC => \tx_fifo_dataout_reg[31]\(23),
      DID => '0',
      DOA => RAM_reg_128_191_21_23_n_0,
      DOB => RAM_reg_128_191_21_23_n_1,
      DOC => RAM_reg_128_191_21_23_n_2,
      DOD => NLW_RAM_reg_128_191_21_23_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(24),
      DIB => \tx_fifo_dataout_reg[31]\(25),
      DIC => \tx_fifo_dataout_reg[31]\(26),
      DID => '0',
      DOA => RAM_reg_128_191_24_26_n_0,
      DOB => RAM_reg_128_191_24_26_n_1,
      DOC => RAM_reg_128_191_24_26_n_2,
      DOD => NLW_RAM_reg_128_191_24_26_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(27),
      DIB => \tx_fifo_dataout_reg[31]\(28),
      DIC => \tx_fifo_dataout_reg[31]\(29),
      DID => '0',
      DOA => RAM_reg_128_191_27_29_n_0,
      DOB => RAM_reg_128_191_27_29_n_1,
      DOC => RAM_reg_128_191_27_29_n_2,
      DOD => NLW_RAM_reg_128_191_27_29_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(30),
      DPO => RAM_reg_128_191_30_30_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_128_191_30_30_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(31),
      DPO => RAM_reg_128_191_31_31_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_128_191_31_31_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(3),
      DIB => \tx_fifo_dataout_reg[31]\(4),
      DIC => \tx_fifo_dataout_reg[31]\(5),
      DID => '0',
      DOA => RAM_reg_128_191_3_5_n_0,
      DOB => RAM_reg_128_191_3_5_n_1,
      DOC => RAM_reg_128_191_3_5_n_2,
      DOD => NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(6),
      DIB => \tx_fifo_dataout_reg[31]\(7),
      DIC => \tx_fifo_dataout_reg[31]\(8),
      DID => '0',
      DOA => RAM_reg_128_191_6_8_n_0,
      DOB => RAM_reg_128_191_6_8_n_1,
      DOC => RAM_reg_128_191_6_8_n_2,
      DOD => NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(9),
      DIB => \tx_fifo_dataout_reg[31]\(10),
      DIC => \tx_fifo_dataout_reg[31]\(11),
      DID => '0',
      DOA => RAM_reg_128_191_9_11_n_0,
      DOB => RAM_reg_128_191_9_11_n_1,
      DOC => RAM_reg_128_191_9_11_n_2,
      DOD => NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[6]\
    );
RAM_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(0),
      DIB => \tx_fifo_dataout_reg[31]\(1),
      DIC => \tx_fifo_dataout_reg[31]\(2),
      DID => '0',
      DOA => RAM_reg_192_255_0_2_n_0,
      DOB => RAM_reg_192_255_0_2_n_1,
      DOC => RAM_reg_192_255_0_2_n_2,
      DOD => NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(12),
      DIB => \tx_fifo_dataout_reg[31]\(13),
      DIC => \tx_fifo_dataout_reg[31]\(14),
      DID => '0',
      DOA => RAM_reg_192_255_12_14_n_0,
      DOB => RAM_reg_192_255_12_14_n_1,
      DOC => RAM_reg_192_255_12_14_n_2,
      DOD => NLW_RAM_reg_192_255_12_14_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(15),
      DIB => \tx_fifo_dataout_reg[31]\(16),
      DIC => \tx_fifo_dataout_reg[31]\(17),
      DID => '0',
      DOA => RAM_reg_192_255_15_17_n_0,
      DOB => RAM_reg_192_255_15_17_n_1,
      DOC => RAM_reg_192_255_15_17_n_2,
      DOD => NLW_RAM_reg_192_255_15_17_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(18),
      DIB => \tx_fifo_dataout_reg[31]\(19),
      DIC => \tx_fifo_dataout_reg[31]\(20),
      DID => '0',
      DOA => RAM_reg_192_255_18_20_n_0,
      DOB => RAM_reg_192_255_18_20_n_1,
      DOC => RAM_reg_192_255_18_20_n_2,
      DOD => NLW_RAM_reg_192_255_18_20_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(21),
      DIB => \tx_fifo_dataout_reg[31]\(22),
      DIC => \tx_fifo_dataout_reg[31]\(23),
      DID => '0',
      DOA => RAM_reg_192_255_21_23_n_0,
      DOB => RAM_reg_192_255_21_23_n_1,
      DOC => RAM_reg_192_255_21_23_n_2,
      DOD => NLW_RAM_reg_192_255_21_23_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(24),
      DIB => \tx_fifo_dataout_reg[31]\(25),
      DIC => \tx_fifo_dataout_reg[31]\(26),
      DID => '0',
      DOA => RAM_reg_192_255_24_26_n_0,
      DOB => RAM_reg_192_255_24_26_n_1,
      DOC => RAM_reg_192_255_24_26_n_2,
      DOD => NLW_RAM_reg_192_255_24_26_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(27),
      DIB => \tx_fifo_dataout_reg[31]\(28),
      DIC => \tx_fifo_dataout_reg[31]\(29),
      DID => '0',
      DOA => RAM_reg_192_255_27_29_n_0,
      DOB => RAM_reg_192_255_27_29_n_1,
      DOC => RAM_reg_192_255_27_29_n_2,
      DOD => NLW_RAM_reg_192_255_27_29_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(30),
      DPO => RAM_reg_192_255_30_30_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_192_255_30_30_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(31),
      DPO => RAM_reg_192_255_31_31_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_192_255_31_31_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(3),
      DIB => \tx_fifo_dataout_reg[31]\(4),
      DIC => \tx_fifo_dataout_reg[31]\(5),
      DID => '0',
      DOA => RAM_reg_192_255_3_5_n_0,
      DOB => RAM_reg_192_255_3_5_n_1,
      DOC => RAM_reg_192_255_3_5_n_2,
      DOD => NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(6),
      DIB => \tx_fifo_dataout_reg[31]\(7),
      DIC => \tx_fifo_dataout_reg[31]\(8),
      DID => '0',
      DOA => RAM_reg_192_255_6_8_n_0,
      DOB => RAM_reg_192_255_6_8_n_1,
      DOC => RAM_reg_192_255_6_8_n_2,
      DOD => NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(9),
      DIB => \tx_fifo_dataout_reg[31]\(10),
      DIC => \tx_fifo_dataout_reg[31]\(11),
      DID => '0',
      DOA => RAM_reg_192_255_9_11_n_0,
      DOB => RAM_reg_192_255_9_11_n_1,
      DOC => RAM_reg_192_255_9_11_n_2,
      DOD => NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => ram_full_fb_i_reg_0
    );
RAM_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(0),
      DIB => \tx_fifo_dataout_reg[31]\(1),
      DIC => \tx_fifo_dataout_reg[31]\(2),
      DID => '0',
      DOA => RAM_reg_64_127_0_2_n_0,
      DOB => RAM_reg_64_127_0_2_n_1,
      DOC => RAM_reg_64_127_0_2_n_2,
      DOD => NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(12),
      DIB => \tx_fifo_dataout_reg[31]\(13),
      DIC => \tx_fifo_dataout_reg[31]\(14),
      DID => '0',
      DOA => RAM_reg_64_127_12_14_n_0,
      DOB => RAM_reg_64_127_12_14_n_1,
      DOC => RAM_reg_64_127_12_14_n_2,
      DOD => NLW_RAM_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(15),
      DIB => \tx_fifo_dataout_reg[31]\(16),
      DIC => \tx_fifo_dataout_reg[31]\(17),
      DID => '0',
      DOA => RAM_reg_64_127_15_17_n_0,
      DOB => RAM_reg_64_127_15_17_n_1,
      DOC => RAM_reg_64_127_15_17_n_2,
      DOD => NLW_RAM_reg_64_127_15_17_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(18),
      DIB => \tx_fifo_dataout_reg[31]\(19),
      DIC => \tx_fifo_dataout_reg[31]\(20),
      DID => '0',
      DOA => RAM_reg_64_127_18_20_n_0,
      DOB => RAM_reg_64_127_18_20_n_1,
      DOC => RAM_reg_64_127_18_20_n_2,
      DOD => NLW_RAM_reg_64_127_18_20_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(21),
      DIB => \tx_fifo_dataout_reg[31]\(22),
      DIC => \tx_fifo_dataout_reg[31]\(23),
      DID => '0',
      DOA => RAM_reg_64_127_21_23_n_0,
      DOB => RAM_reg_64_127_21_23_n_1,
      DOC => RAM_reg_64_127_21_23_n_2,
      DOD => NLW_RAM_reg_64_127_21_23_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(24),
      DIB => \tx_fifo_dataout_reg[31]\(25),
      DIC => \tx_fifo_dataout_reg[31]\(26),
      DID => '0',
      DOA => RAM_reg_64_127_24_26_n_0,
      DOB => RAM_reg_64_127_24_26_n_1,
      DOC => RAM_reg_64_127_24_26_n_2,
      DOD => NLW_RAM_reg_64_127_24_26_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(27),
      DIB => \tx_fifo_dataout_reg[31]\(28),
      DIC => \tx_fifo_dataout_reg[31]\(29),
      DID => '0',
      DOA => RAM_reg_64_127_27_29_n_0,
      DOB => RAM_reg_64_127_27_29_n_1,
      DOC => RAM_reg_64_127_27_29_n_2,
      DOD => NLW_RAM_reg_64_127_27_29_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_30_30: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(30),
      DPO => RAM_reg_64_127_30_30_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_64_127_30_30_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_31_31: unisim.vcomponents.RAM64X1D
     port map (
      A0 => p_13_out(0),
      A1 => p_13_out(1),
      A2 => p_13_out(2),
      A3 => p_13_out(3),
      A4 => p_13_out(4),
      A5 => p_13_out(5),
      D => \tx_fifo_dataout_reg[31]\(31),
      DPO => RAM_reg_64_127_31_31_n_0,
      DPRA0 => p_0_out_0(0),
      DPRA1 => p_0_out_0(1),
      DPRA2 => p_0_out_0(2),
      DPRA3 => p_0_out_0(3),
      DPRA4 => p_0_out_0(4),
      DPRA5 => p_0_out_0(5),
      SPO => NLW_RAM_reg_64_127_31_31_SPO_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(3),
      DIB => \tx_fifo_dataout_reg[31]\(4),
      DIC => \tx_fifo_dataout_reg[31]\(5),
      DID => '0',
      DOA => RAM_reg_64_127_3_5_n_0,
      DOB => RAM_reg_64_127_3_5_n_1,
      DOC => RAM_reg_64_127_3_5_n_2,
      DOD => NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(6),
      DIB => \tx_fifo_dataout_reg[31]\(7),
      DIC => \tx_fifo_dataout_reg[31]\(8),
      DID => '0',
      DOA => RAM_reg_64_127_6_8_n_0,
      DOB => RAM_reg_64_127_6_8_n_1,
      DOC => RAM_reg_64_127_6_8_n_2,
      DOD => NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
RAM_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRB(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRC(5 downto 0) => p_0_out_0(5 downto 0),
      ADDRD(5 downto 0) => p_13_out(5 downto 0),
      DIA => \tx_fifo_dataout_reg[31]\(9),
      DIB => \tx_fifo_dataout_reg[31]\(10),
      DIC => \tx_fifo_dataout_reg[31]\(11),
      DID => '0',
      DOA => RAM_reg_64_127_9_11_n_0,
      DOB => RAM_reg_64_127_9_11_n_1,
      DOC => RAM_reg_64_127_9_11_n_2,
      DOD => NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => s_dclk_o,
      WE => \gic0.gc0.count_d2_reg[7]\
    );
\gpr1.dout_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_0,
      I1 => RAM_reg_128_191_0_2_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_0_2_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_0_2_n_0,
      O => p_0_out(0)
    );
\gpr1.dout_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_1,
      I1 => RAM_reg_128_191_9_11_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_9_11_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_9_11_n_1,
      O => p_0_out(10)
    );
\gpr1.dout_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_2,
      I1 => RAM_reg_128_191_9_11_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_9_11_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_9_11_n_2,
      O => p_0_out(11)
    );
\gpr1.dout_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_0,
      I1 => RAM_reg_128_191_12_14_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_12_14_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_12_14_n_0,
      O => p_0_out(12)
    );
\gpr1.dout_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_1,
      I1 => RAM_reg_128_191_12_14_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_12_14_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_12_14_n_1,
      O => p_0_out(13)
    );
\gpr1.dout_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_12_14_n_2,
      I1 => RAM_reg_128_191_12_14_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_12_14_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_12_14_n_2,
      O => p_0_out(14)
    );
\gpr1.dout_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_0,
      I1 => RAM_reg_128_191_15_17_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_15_17_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_15_17_n_0,
      O => p_0_out(15)
    );
\gpr1.dout_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_1,
      I1 => RAM_reg_128_191_15_17_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_15_17_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_15_17_n_1,
      O => p_0_out(16)
    );
\gpr1.dout_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_15_17_n_2,
      I1 => RAM_reg_128_191_15_17_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_15_17_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_15_17_n_2,
      O => p_0_out(17)
    );
\gpr1.dout_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_0,
      I1 => RAM_reg_128_191_18_20_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_18_20_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_18_20_n_0,
      O => p_0_out(18)
    );
\gpr1.dout_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_1,
      I1 => RAM_reg_128_191_18_20_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_18_20_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_18_20_n_1,
      O => p_0_out(19)
    );
\gpr1.dout_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_1,
      I1 => RAM_reg_128_191_0_2_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_0_2_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_0_2_n_1,
      O => p_0_out(1)
    );
\gpr1.dout_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_18_20_n_2,
      I1 => RAM_reg_128_191_18_20_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_18_20_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_18_20_n_2,
      O => p_0_out(20)
    );
\gpr1.dout_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_0,
      I1 => RAM_reg_128_191_21_23_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_21_23_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_21_23_n_0,
      O => p_0_out(21)
    );
\gpr1.dout_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_1,
      I1 => RAM_reg_128_191_21_23_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_21_23_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_21_23_n_1,
      O => p_0_out(22)
    );
\gpr1.dout_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_21_23_n_2,
      I1 => RAM_reg_128_191_21_23_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_21_23_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_21_23_n_2,
      O => p_0_out(23)
    );
\gpr1.dout_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_0,
      I1 => RAM_reg_128_191_24_26_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_24_26_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_24_26_n_0,
      O => p_0_out(24)
    );
\gpr1.dout_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_1,
      I1 => RAM_reg_128_191_24_26_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_24_26_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_24_26_n_1,
      O => p_0_out(25)
    );
\gpr1.dout_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_24_26_n_2,
      I1 => RAM_reg_128_191_24_26_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_24_26_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_24_26_n_2,
      O => p_0_out(26)
    );
\gpr1.dout_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_0,
      I1 => RAM_reg_128_191_27_29_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_27_29_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_27_29_n_0,
      O => p_0_out(27)
    );
\gpr1.dout_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_1,
      I1 => RAM_reg_128_191_27_29_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_27_29_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_27_29_n_1,
      O => p_0_out(28)
    );
\gpr1.dout_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_27_29_n_2,
      I1 => RAM_reg_128_191_27_29_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_27_29_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_27_29_n_2,
      O => p_0_out(29)
    );
\gpr1.dout_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_2,
      I1 => RAM_reg_128_191_0_2_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_0_2_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_0_2_n_2,
      O => p_0_out(2)
    );
\gpr1.dout_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_30_30_n_0,
      I1 => RAM_reg_128_191_30_30_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_30_30_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_30_30_n_0,
      O => p_0_out(30)
    );
\gpr1.dout_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_31_31_n_0,
      I1 => RAM_reg_128_191_31_31_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_31_31_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_31_31_n_0,
      O => p_0_out(31)
    );
\gpr1.dout_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_0,
      I1 => RAM_reg_128_191_3_5_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_3_5_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_3_5_n_0,
      O => p_0_out(3)
    );
\gpr1.dout_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_1,
      I1 => RAM_reg_128_191_3_5_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_3_5_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_3_5_n_1,
      O => p_0_out(4)
    );
\gpr1.dout_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_2,
      I1 => RAM_reg_128_191_3_5_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_3_5_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_3_5_n_2,
      O => p_0_out(5)
    );
\gpr1.dout_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_0,
      I1 => RAM_reg_128_191_6_8_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_6_8_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_6_8_n_0,
      O => p_0_out(6)
    );
\gpr1.dout_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_1,
      I1 => RAM_reg_128_191_6_8_n_1,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_6_8_n_1,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_6_8_n_1,
      O => p_0_out(7)
    );
\gpr1.dout_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_2,
      I1 => RAM_reg_128_191_6_8_n_2,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_6_8_n_2,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_6_8_n_2,
      O => p_0_out(8)
    );
\gpr1.dout_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_0,
      I1 => RAM_reg_128_191_9_11_n_0,
      I2 => p_0_out_0(7),
      I3 => RAM_reg_64_127_9_11_n_0,
      I4 => p_0_out_0(6),
      I5 => RAM_reg_0_63_9_11_n_0,
      O => p_0_out(9)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(0),
      Q => D(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(10),
      Q => D(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(11),
      Q => D(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(12),
      Q => D(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(13),
      Q => D(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(14),
      Q => D(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(15),
      Q => D(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(16),
      Q => D(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(17),
      Q => D(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(18),
      Q => D(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(19),
      Q => D(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(1),
      Q => D(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(20),
      Q => D(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(21),
      Q => D(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(22),
      Q => D(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(23),
      Q => D(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(24),
      Q => D(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(25),
      Q => D(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(26),
      Q => D(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(27),
      Q => D(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(28),
      Q => D(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(29),
      Q => D(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(2),
      Q => D(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(30),
      Q => D(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(31),
      Q => D(31),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(3),
      Q => D(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(4),
      Q => D(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(5),
      Q => D(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(6),
      Q => D(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(7),
      Q => D(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(8),
      Q => D(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => dm_rd_en,
      D => p_0_out(9),
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_cmd_decode is
  port (
    axi_rd_done_ff : out STD_LOGIC;
    rd_cmd_fifo_read_en : out STD_LOGIC;
    axi_rd : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_done : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    axi_rd_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_cmd_decode : entity is "jtag_axi_v1_2_4_cmd_decode";
end jtag_axi_0_jtag_axi_v1_2_4_cmd_decode;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_cmd_decode is
  signal \^axi_rd\ : STD_LOGIC;
  signal \^axi_rd_done_ff\ : STD_LOGIC;
  signal \axi_tx_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_cmd_fifo_i_1__0_n_0\ : STD_LOGIC;
  signal \^rd_cmd_fifo_read_en\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
begin
  axi_rd <= \^axi_rd\;
  axi_rd_done_ff <= \^axi_rd_done_ff\;
  rd_cmd_fifo_read_en <= \^rd_cmd_fifo_read_en\;
axi_tx_done_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_rd_done,
      Q => \^axi_rd_done_ff\,
      R => SR(0)
    );
\axi_tx_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF0F00000400"
    )
        port map (
      I0 => rd_axi_en_exec_ff4,
      I1 => \out\,
      I2 => state(1),
      I3 => state(0),
      I4 => axi_rd_busy,
      I5 => \^axi_rd\,
      O => \axi_tx_i_1__0_n_0\
    );
axi_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_tx_i_1__0_n_0\,
      Q => \^axi_rd\,
      R => SR(0)
    );
\rd_cmd_fifo_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0002FF00000200"
    )
        port map (
      I0 => \out\,
      I1 => rd_axi_en_exec_ff4,
      I2 => axi_rd_busy,
      I3 => state(0),
      I4 => state(1),
      I5 => \^rd_cmd_fifo_read_en\,
      O => \rd_cmd_fifo_i_1__0_n_0\
    );
rd_cmd_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_cmd_fifo_i_1__0_n_0\,
      Q => \^rd_cmd_fifo_read_en\,
      R => SR(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEEFF0F0000"
    )
        port map (
      I0 => axi_rd_done,
      I1 => \^axi_rd_done_ff\,
      I2 => E(0),
      I3 => axi_rd_busy,
      I4 => state(0),
      I5 => state(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111100F00000"
    )
        port map (
      I0 => \^axi_rd_done_ff\,
      I1 => axi_rd_done,
      I2 => E(0),
      I3 => axi_rd_busy,
      I4 => state(0),
      I5 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      S => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_cmd_decode_0 is
  port (
    \state_reg[0]_0\ : out STD_LOGIC;
    axi_wr : out STD_LOGIC;
    wr_cmd_fifo_read_en : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wr_done : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    axi_wr_busy : in STD_LOGIC;
    cmd_valid_wr_ch : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_cmd_decode_0 : entity is "jtag_axi_v1_2_4_cmd_decode";
end jtag_axi_0_jtag_axi_v1_2_4_cmd_decode_0;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_cmd_decode_0 is
  signal axi_tx_i_1_n_0 : STD_LOGIC;
  signal \^axi_wr\ : STD_LOGIC;
  signal rd_cmd_fifo_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^wr_cmd_fifo_read_en\ : STD_LOGIC;
begin
  axi_wr <= \^axi_wr\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  wr_cmd_fifo_read_en <= \^wr_cmd_fifo_read_en\;
axi_tx_done_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_wr_done,
      Q => \^state_reg[0]_0\,
      R => SR(0)
    );
axi_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF0F00000400"
    )
        port map (
      I0 => wr_axi_en_exec_ff4,
      I1 => \out\,
      I2 => state(1),
      I3 => state(0),
      I4 => axi_wr_busy,
      I5 => \^axi_wr\,
      O => axi_tx_i_1_n_0
    );
axi_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_tx_i_1_n_0,
      Q => \^axi_wr\,
      R => SR(0)
    );
rd_cmd_fifo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0002FF00000200"
    )
        port map (
      I0 => \out\,
      I1 => wr_axi_en_exec_ff4,
      I2 => axi_wr_busy,
      I3 => state(0),
      I4 => state(1),
      I5 => \^wr_cmd_fifo_read_en\,
      O => rd_cmd_fifo_i_1_n_0
    );
rd_cmd_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_cmd_fifo_i_1_n_0,
      Q => \^wr_cmd_fifo_read_en\,
      R => SR(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEEFF0F0000"
    )
        port map (
      I0 => axi_wr_done,
      I1 => \^state_reg[0]_0\,
      I2 => cmd_valid_wr_ch,
      I3 => axi_wr_busy,
      I4 => state(0),
      I5 => state(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF111100F00000"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => axi_wr_done,
      I2 => cmd_valid_wr_ch,
      I3 => axi_wr_busy,
      I4 => state(0),
      I5 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      S => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_read_axi is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    rx_fifo_wr_en : out STD_LOGIC;
    axi_rd_done : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_busy : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    p_20_out : out STD_LOGIC;
    \rd_cmd_fifo_data_out_qid_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rd_txn_err_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    axi_rd_done_ff : in STD_LOGIC;
    rd_sts_flag_reg : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    axi_rd : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd_cmd_fifo_data_out_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \rd_cmd_fifo_data_out_reg[19]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_read_axi : entity is "jtag_axi_v1_2_4_read_axi";
end jtag_axi_0_jtag_axi_v1_2_4_read_axi;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_read_axi is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rd_busy\ : STD_LOGIC;
  signal axi_rd_busy_i_1_n_0 : STD_LOGIC;
  signal \^axi_rd_done\ : STD_LOGIC;
  signal axi_rd_done_i_1_n_0 : STD_LOGIC;
  signal axi_rd_done_i_2_n_0 : STD_LOGIC;
  signal axi_rd_resp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_rd_resp[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_resp[1]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_rd_txn_err_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_2_n_0 : STD_LOGIC;
  signal cmd_fifo_data_out_ff : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute async_reg : string;
  attribute async_reg of cmd_fifo_data_out_ff : signal is "true";
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^rx_fifo_wr_en\ : STD_LOGIC;
  signal s_rx_fifo_wr_en : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_rd_busy_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rd_done_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rd_resp[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rd_resp[1]_i_1\ : label is "soft_lutpair2";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[10]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[11]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[12]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[13]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[14]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[15]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[16]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[17]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[18]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[19]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[20]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[21]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[22]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[23]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[24]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[25]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[26]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[27]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[28]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[29]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[30]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[31]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[32]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[32]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[33]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[33]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[34]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[34]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[35]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[35]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[36]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[36]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[37]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[37]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[38]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[38]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[39]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[39]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[40]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[40]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[41]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[41]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[42]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[42]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[43]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[43]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[44]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[44]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[45]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[45]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[46]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[46]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[47]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[47]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[48]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[48]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[49]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[49]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[50]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[50]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[51]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[51]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[52]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[52]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[53]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[53]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[54]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[54]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[55]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[55]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[56]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[56]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[57]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[57]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[58]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[58]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[59]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[59]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[5]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[60]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[60]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[61]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[61]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[62]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[62]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[63]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[63]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[6]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[7]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[8]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \cmd_fifo_data_out_ff_reg[9]\ : label is std.standard.true;
  attribute KEEP of \cmd_fifo_data_out_ff_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM of \s_axi_rd_resp[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rd_resp[1]_i_2\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
  axi_rd_busy <= \^axi_rd_busy\;
  axi_rd_done <= \^axi_rd_done\;
  axi_rd_txn_err_reg(0) <= \^axi_rd_txn_err_reg\(0);
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_rready <= \^m_axi_rready\;
  \out\(41 downto 10) <= cmd_fifo_data_out_ff(63 downto 32);
  \out\(9 downto 1) <= cmd_fifo_data_out_ff(23 downto 15);
  \out\(0) <= cmd_fifo_data_out_ff(11);
  rx_fifo_wr_en <= \^rx_fifo_wr_en\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_fifo_wr_en\,
      I1 => ram_full_fb_i_reg,
      O => p_20_out
    );
axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEECFFF00220000"
    )
        port map (
      I0 => axi_rd,
      I1 => state(2),
      I2 => m_axi_arready,
      I3 => state(1),
      I4 => state(0),
      I5 => \^m_axi_arvalid\,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\,
      R => \^sr\(0)
    );
axi_rd_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF002C"
    )
        port map (
      I0 => axi_rd,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \^axi_rd_busy\,
      O => axi_rd_busy_i_1_n_0
    );
axi_rd_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_rd_busy_i_1_n_0,
      Q => \^axi_rd_busy\,
      R => \^sr\(0)
    );
axi_rd_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => state(2),
      I1 => m_axi_rlast,
      I2 => m_axi_rvalid,
      I3 => axi_rd_done_i_2_n_0,
      I4 => \^axi_rd_done\,
      O => axi_rd_done_i_1_n_0
    );
axi_rd_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0338"
    )
        port map (
      I0 => axi_rd,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => axi_rd_done_i_2_n_0
    );
axi_rd_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_rd_done_i_1_n_0,
      Q => \^axi_rd_done\,
      R => \^sr\(0)
    );
\axi_rd_resp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => m_axi_rvalid,
      I2 => \^m_axi_rready\,
      I3 => axi_rd_resp(0),
      O => \axi_rd_resp[0]_i_1_n_0\
    );
\axi_rd_resp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => m_axi_rvalid,
      I2 => \^m_axi_rready\,
      I3 => \^axi_rd_txn_err_reg\(0),
      O => \axi_rd_resp[1]_i_1_n_0\
    );
\axi_rd_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_rd_resp[0]_i_1_n_0\,
      Q => axi_rd_resp(0),
      R => \^sr\(0)
    );
\axi_rd_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_rd_resp[1]_i_1_n_0\,
      Q => \^axi_rd_txn_err_reg\(0),
      R => \^sr\(0)
    );
axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => state(2),
      I2 => m_axi_arready,
      I3 => state(1),
      I4 => axi_rready_i_2_n_0,
      I5 => \^m_axi_rready\,
      O => axi_rready_i_1_n_0
    );
axi_rready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"054A004A"
    )
        port map (
      I0 => state(0),
      I1 => m_axi_arready,
      I2 => state(1),
      I3 => state(2),
      I4 => m_axi_rvalid,
      O => axi_rready_i_2_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(0),
      Q => cmd_fifo_data_out_ff(0),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(10),
      Q => cmd_fifo_data_out_ff(10),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(11),
      Q => cmd_fifo_data_out_ff(11),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(12),
      Q => cmd_fifo_data_out_ff(12),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(13),
      Q => cmd_fifo_data_out_ff(13),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(14),
      Q => cmd_fifo_data_out_ff(14),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(15),
      Q => cmd_fifo_data_out_ff(15),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(16),
      Q => cmd_fifo_data_out_ff(16),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(17),
      Q => cmd_fifo_data_out_ff(17),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(18),
      Q => cmd_fifo_data_out_ff(18),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(19),
      Q => cmd_fifo_data_out_ff(19),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(1),
      Q => cmd_fifo_data_out_ff(1),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(20),
      Q => cmd_fifo_data_out_ff(20),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(21),
      Q => cmd_fifo_data_out_ff(21),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(22),
      Q => cmd_fifo_data_out_ff(22),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(23),
      Q => cmd_fifo_data_out_ff(23),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(24),
      Q => cmd_fifo_data_out_ff(24),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(25),
      Q => cmd_fifo_data_out_ff(25),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(26),
      Q => cmd_fifo_data_out_ff(26),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(27),
      Q => cmd_fifo_data_out_ff(27),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(28),
      Q => cmd_fifo_data_out_ff(28),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(29),
      Q => cmd_fifo_data_out_ff(29),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(2),
      Q => cmd_fifo_data_out_ff(2),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(30),
      Q => cmd_fifo_data_out_ff(30),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(31),
      Q => cmd_fifo_data_out_ff(31),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(32),
      Q => cmd_fifo_data_out_ff(32),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(33),
      Q => cmd_fifo_data_out_ff(33),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(34),
      Q => cmd_fifo_data_out_ff(34),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(35),
      Q => cmd_fifo_data_out_ff(35),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(36),
      Q => cmd_fifo_data_out_ff(36),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(37),
      Q => cmd_fifo_data_out_ff(37),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(38),
      Q => cmd_fifo_data_out_ff(38),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(39),
      Q => cmd_fifo_data_out_ff(39),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(3),
      Q => cmd_fifo_data_out_ff(3),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(40),
      Q => cmd_fifo_data_out_ff(40),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(41),
      Q => cmd_fifo_data_out_ff(41),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(42),
      Q => cmd_fifo_data_out_ff(42),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(43),
      Q => cmd_fifo_data_out_ff(43),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(44),
      Q => cmd_fifo_data_out_ff(44),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(45),
      Q => cmd_fifo_data_out_ff(45),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(46),
      Q => cmd_fifo_data_out_ff(46),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(47),
      Q => cmd_fifo_data_out_ff(47),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(48),
      Q => cmd_fifo_data_out_ff(48),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(49),
      Q => cmd_fifo_data_out_ff(49),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(4),
      Q => cmd_fifo_data_out_ff(4),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(50),
      Q => cmd_fifo_data_out_ff(50),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(51),
      Q => cmd_fifo_data_out_ff(51),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(52),
      Q => cmd_fifo_data_out_ff(52),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(53),
      Q => cmd_fifo_data_out_ff(53),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(54),
      Q => cmd_fifo_data_out_ff(54),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(55),
      Q => cmd_fifo_data_out_ff(55),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(56),
      Q => cmd_fifo_data_out_ff(56),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(57),
      Q => cmd_fifo_data_out_ff(57),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(58),
      Q => cmd_fifo_data_out_ff(58),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(59),
      Q => cmd_fifo_data_out_ff(59),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(5),
      Q => cmd_fifo_data_out_ff(5),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(60),
      Q => cmd_fifo_data_out_ff(60),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(61),
      Q => cmd_fifo_data_out_ff(61),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(62),
      Q => cmd_fifo_data_out_ff(62),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(63),
      Q => cmd_fifo_data_out_ff(63),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(6),
      Q => cmd_fifo_data_out_ff(6),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(7),
      Q => cmd_fifo_data_out_ff(7),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(8),
      Q => cmd_fifo_data_out_ff(8),
      R => \^sr\(0)
    );
\cmd_fifo_data_out_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[63]\(9),
      Q => cmd_fifo_data_out_ff(9),
      R => \^sr\(0)
    );
\len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(0),
      Q => m_axi_arlen(0),
      R => \^sr\(0)
    );
\len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(1),
      Q => m_axi_arlen(1),
      R => \^sr\(0)
    );
\len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(2),
      Q => m_axi_arlen(2),
      R => \^sr\(0)
    );
\len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(3),
      Q => m_axi_arlen(3),
      R => \^sr\(0)
    );
\len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(4),
      Q => m_axi_arlen(4),
      R => \^sr\(0)
    );
\len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(5),
      Q => m_axi_arlen(5),
      R => \^sr\(0)
    );
\len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(6),
      Q => m_axi_arlen(6),
      R => \^sr\(0)
    );
\len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd,
      D => \rd_cmd_fifo_data_out_reg[19]\(7),
      Q => m_axi_arlen(7),
      R => \^sr\(0)
    );
\rd_cmd_fifo_data_out_qid[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rd_done\,
      I1 => axi_rd_done_ff,
      O => \rd_cmd_fifo_data_out_qid_reg[3]\(0)
    );
\rx_fifo_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      R => '0'
    );
\rx_fifo_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(10),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(10),
      R => '0'
    );
\rx_fifo_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(11),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(11),
      R => '0'
    );
\rx_fifo_data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(12),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(12),
      R => '0'
    );
\rx_fifo_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(13),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(13),
      R => '0'
    );
\rx_fifo_data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(14),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(14),
      R => '0'
    );
\rx_fifo_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(15),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(15),
      R => '0'
    );
\rx_fifo_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(16),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(16),
      R => '0'
    );
\rx_fifo_data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(17),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(17),
      R => '0'
    );
\rx_fifo_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(18),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(18),
      R => '0'
    );
\rx_fifo_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(19),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(19),
      R => '0'
    );
\rx_fifo_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      R => '0'
    );
\rx_fifo_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(20),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(20),
      R => '0'
    );
\rx_fifo_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(21),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(21),
      R => '0'
    );
\rx_fifo_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(22),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(22),
      R => '0'
    );
\rx_fifo_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(23),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(23),
      R => '0'
    );
\rx_fifo_data_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(24),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(24),
      R => '0'
    );
\rx_fifo_data_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(25),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(25),
      R => '0'
    );
\rx_fifo_data_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(26),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(26),
      R => '0'
    );
\rx_fifo_data_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(27),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(27),
      R => '0'
    );
\rx_fifo_data_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(28),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(28),
      R => '0'
    );
\rx_fifo_data_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(29),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(29),
      R => '0'
    );
\rx_fifo_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      R => '0'
    );
\rx_fifo_data_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(30),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(30),
      R => '0'
    );
\rx_fifo_data_o_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(31),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31),
      R => '0'
    );
\rx_fifo_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      R => '0'
    );
\rx_fifo_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      R => '0'
    );
\rx_fifo_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      R => '0'
    );
\rx_fifo_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      R => '0'
    );
\rx_fifo_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7),
      R => '0'
    );
\rx_fifo_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8),
      R => '0'
    );
\rx_fifo_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_rdata(9),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(9),
      R => '0'
    );
rx_fifo_wr_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^m_axi_rready\,
      O => s_rx_fifo_wr_en
    );
rx_fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_rx_fifo_wr_en,
      Q => \^rx_fifo_wr_en\,
      R => '0'
    );
\s_axi_rd_resp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_rd_resp(0),
      I1 => rd_sts_flag_reg,
      O => D(0)
    );
\s_axi_rd_resp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_rd_txn_err_reg\(0),
      I1 => rd_sts_flag_reg,
      O => D(1)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC4CCC4CCC4CCC4"
    )
        port map (
      I0 => axi_rd,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => m_axi_rvalid,
      I5 => m_axi_rlast,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8800"
    )
        port map (
      I0 => axi_rd,
      I1 => state(0),
      I2 => m_axi_arready,
      I3 => \state[1]_i_2__0_n_0\,
      I4 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"16160616"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => m_axi_rvalid,
      I4 => m_axi_rlast,
      O => \state[1]_i_2__0_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC20FF20FF20FF20"
    )
        port map (
      I0 => m_axi_arready,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => m_axi_rvalid,
      I5 => m_axi_rlast,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      S => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => \^sr\(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => state(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_rxfifo2xsdb is
  port (
    xsdb_drdy_xsdb_rxfifo : out STD_LOGIC;
    select_reg : out STD_LOGIC;
    rx_fifo_rden_reg_reg_0 : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[0]_0\ : out STD_LOGIC;
    \goreg_bm.dout_i_reg[31]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_xsdbfifo_large_reg : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    xsdb_den_status : in STD_LOGIC;
    \select\ : in STD_LOGIC;
    \s_daddr_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_dwe_i : in STD_LOGIC;
    \s_daddr_i_reg[3]\ : in STD_LOGIC;
    s_den_i : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    \s_daddr_i_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_rxfifo2xsdb : entity is "jtag_axi_v1_2_4_rxfifo2xsdb";
end jtag_axi_0_jtag_axi_v1_2_4_rxfifo2xsdb;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_rxfifo2xsdb is
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal rx_fifo_datain_ff : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rx_fifo_datain_ff_reg[0]_0\ : STD_LOGIC;
  signal rx_fifo_rden_i : STD_LOGIC;
  signal rx_fifo_rden_reg : STD_LOGIC;
  signal rx_fifo_rden_reg_i_4_n_0 : STD_LOGIC;
  signal \^rx_fifo_rden_reg_reg_0\ : STD_LOGIC;
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \xsdb2read_cmdfifo/\ : STD_LOGIC;
  signal xsdb_drdy_i : STD_LOGIC;
  signal xsdb_drdy_i0 : STD_LOGIC;
  signal xsdb_drdy_i_i_2_n_0 : STD_LOGIC;
  signal xsdb_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gc0.count_d1[7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of rx_fifo_rden_reg_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rx_fifo_rden_reg_i_4 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of select_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \shift_reg[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_reg[10]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \shift_reg[11]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \shift_reg[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \shift_reg[13]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \shift_reg[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_reg[15]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_reg[16]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \shift_reg[17]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \shift_reg[18]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \shift_reg[19]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_reg[20]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \shift_reg[21]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \shift_reg[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \shift_reg[23]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \shift_reg[24]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \shift_reg[25]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \shift_reg[26]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \shift_reg[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \shift_reg[28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \shift_reg[29]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \shift_reg[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \shift_reg[30]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \shift_reg[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \shift_reg[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \shift_reg[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \shift_reg[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \shift_reg[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \shift_reg[9]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of xsdb_drdy_i_i_1 : label is "soft_lutpair50";
begin
  \rx_fifo_datain_ff_reg[0]_0\ <= \^rx_fifo_datain_ff_reg[0]_0\;
  rx_fifo_rden_reg_reg_0 <= \^rx_fifo_rden_reg_reg_0\;
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11112202"
    )
        port map (
      I0 => xsdb_rden,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(1),
      I3 => count(2),
      I4 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12123000"
    )
        port map (
      I0 => xsdb_rden,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(1),
      I3 => count(2),
      I4 => count(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13203300"
    )
        port map (
      I0 => xsdb_rden,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(1),
      I3 => count(2),
      I4 => count(0),
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => '0'
    );
\gc0.count_d1[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => \gc0.count_d1_reg[7]\
    );
\goreg_bm.dout_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => \s_daddr_i_reg[4]\,
      I1 => count(0),
      I2 => count(1),
      I3 => count(2),
      I4 => \s_daddr_i_reg[2]\,
      I5 => \out\(0),
      O => \goreg_bm.dout_i_reg[31]\
    );
\rx_fifo_datain_ff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(2),
      I1 => \^rx_fifo_datain_ff_reg[0]_0\,
      I2 => \s_daddr_i_reg[7]\(4),
      I3 => \s_daddr_i_reg[7]\(1),
      I4 => \s_daddr_i_reg[7]\(0),
      I5 => s_dwe_i,
      O => xsdb_rden
    );
\rx_fifo_datain_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(0),
      Q => rx_fifo_datain_ff(0),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(10),
      Q => rx_fifo_datain_ff(10),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(11),
      Q => rx_fifo_datain_ff(11),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(12),
      Q => rx_fifo_datain_ff(12),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(13),
      Q => rx_fifo_datain_ff(13),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(14),
      Q => rx_fifo_datain_ff(14),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(15),
      Q => rx_fifo_datain_ff(15),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(16),
      Q => rx_fifo_datain_ff(16),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(17),
      Q => rx_fifo_datain_ff(17),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(18),
      Q => rx_fifo_datain_ff(18),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(19),
      Q => rx_fifo_datain_ff(19),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(1),
      Q => rx_fifo_datain_ff(1),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(20),
      Q => rx_fifo_datain_ff(20),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(21),
      Q => rx_fifo_datain_ff(21),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(22),
      Q => rx_fifo_datain_ff(22),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(23),
      Q => rx_fifo_datain_ff(23),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(24),
      Q => rx_fifo_datain_ff(24),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(25),
      Q => rx_fifo_datain_ff(25),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(26),
      Q => rx_fifo_datain_ff(26),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(27),
      Q => rx_fifo_datain_ff(27),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(28),
      Q => rx_fifo_datain_ff(28),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(29),
      Q => rx_fifo_datain_ff(29),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(2),
      Q => rx_fifo_datain_ff(2),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(30),
      Q => rx_fifo_datain_ff(30),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(31),
      Q => rx_fifo_datain_ff(31),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(3),
      Q => rx_fifo_datain_ff(3),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(4),
      Q => rx_fifo_datain_ff(4),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(5),
      Q => rx_fifo_datain_ff(5),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(6),
      Q => rx_fifo_datain_ff(6),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(7),
      Q => rx_fifo_datain_ff(7),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(8),
      Q => rx_fifo_datain_ff(8),
      R => rst_xsdbfifo_large_reg
    );
\rx_fifo_datain_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_rden,
      D => D(9),
      Q => rx_fifo_datain_ff(9),
      R => rst_xsdbfifo_large_reg
    );
rx_fifo_rden_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_fifo_rden_reg_reg_0\,
      O => rx_fifo_rden_i
    );
rx_fifo_rden_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \s_daddr_i_reg[3]\,
      I1 => \s_daddr_i_reg[7]\(4),
      I2 => \s_daddr_i_reg[7]\(1),
      I3 => \s_daddr_i_reg[7]\(0),
      I4 => s_dwe_i,
      I5 => rx_fifo_rden_reg_i_4_n_0,
      O => \^rx_fifo_rden_reg_reg_0\
    );
rx_fifo_rden_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      O => rx_fifo_rden_reg_i_4_n_0
    );
rx_fifo_rden_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rx_fifo_rden_i,
      Q => rx_fifo_rden_reg,
      R => rst_xsdbfifo_large_reg
    );
select_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => rst_xsdbfifo_large_reg,
      I1 => xsdb_den_status,
      I2 => \select\,
      I3 => \^rx_fifo_rden_reg_reg_0\,
      O => select_reg
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(0),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[16]\,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(10),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[26]\,
      O => \shift_reg[10]_i_1_n_0\
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(11),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[27]\,
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(12),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[28]\,
      O => \shift_reg[12]_i_1_n_0\
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(13),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[29]\,
      O => \shift_reg[13]_i_1_n_0\
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(14),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[30]\,
      O => \shift_reg[14]_i_1_n_0\
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(15),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[31]\,
      O => \shift_reg[15]_i_1_n_0\
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(16),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[16]_i_1_n_0\
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(17),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[17]_i_1_n_0\
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(18),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[18]_i_1_n_0\
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(19),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[19]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(1),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[17]\,
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(20),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[20]_i_1_n_0\
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(21),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[21]_i_1_n_0\
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(22),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(23),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[23]_i_1_n_0\
    );
\shift_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(24),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[24]_i_1_n_0\
    );
\shift_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(25),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[25]_i_1_n_0\
    );
\shift_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(26),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[26]_i_1_n_0\
    );
\shift_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(27),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[27]_i_1_n_0\
    );
\shift_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(28),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[28]_i_1_n_0\
    );
\shift_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(29),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[29]_i_1_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(2),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[18]\,
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(30),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[30]_i_1_n_0\
    );
\shift_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => xsdb_drdy_i,
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[31]_i_1_n_0\
    );
\shift_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_fifo_datain_ff(31),
      I1 => rx_fifo_rden_reg,
      O => \shift_reg[31]_i_2_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(3),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[19]\,
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(4),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[20]\,
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(5),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[21]\,
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(6),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[22]\,
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(7),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[23]\,
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(8),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[24]\,
      O => \shift_reg[8]_i_1_n_0\
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_fifo_datain_ff(9),
      I1 => rx_fifo_rden_reg,
      I2 => \shift_reg_reg_n_0_[25]\,
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[10]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[11]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[12]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[13]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[14]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[15]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[16]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[17]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[18]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[19]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[20]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[21]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[22]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[23]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[23]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[24]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[24]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[25]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[25]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[26]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[26]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[27]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[27]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[28]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[28]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[29]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[29]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[30]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[30]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[31]_i_2_n_0\,
      Q => \shift_reg_reg_n_0_[31]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[6]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[7]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[8]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[9]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => rst_xsdbfifo_large_reg
    );
\xsdb_dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[0]\,
      Q => Q(0),
      R => '0'
    );
\xsdb_dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[10]\,
      Q => Q(10),
      R => '0'
    );
\xsdb_dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[11]\,
      Q => Q(11),
      R => '0'
    );
\xsdb_dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[12]\,
      Q => Q(12),
      R => '0'
    );
\xsdb_dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[13]\,
      Q => Q(13),
      R => '0'
    );
\xsdb_dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[14]\,
      Q => Q(14),
      R => '0'
    );
\xsdb_dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[15]\,
      Q => Q(15),
      R => '0'
    );
\xsdb_dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[1]\,
      Q => Q(1),
      R => '0'
    );
\xsdb_dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[2]\,
      Q => Q(2),
      R => '0'
    );
\xsdb_dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[3]\,
      Q => Q(3),
      R => '0'
    );
\xsdb_dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[4]\,
      Q => Q(4),
      R => '0'
    );
\xsdb_dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[5]\,
      Q => Q(5),
      R => '0'
    );
\xsdb_dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[6]\,
      Q => Q(6),
      R => '0'
    );
\xsdb_dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[7]\,
      Q => Q(7),
      R => '0'
    );
\xsdb_dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[8]\,
      Q => Q(8),
      R => '0'
    );
\xsdb_dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => \shift_reg_reg_n_0_[9]\,
      Q => Q(9),
      R => '0'
    );
\xsdb_drdy_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_xsdbfifo_large_reg,
      O => \xsdb2read_cmdfifo/\
    );
xsdb_drdy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => s_den_i,
      I1 => \s_daddr_i_reg[7]\(7),
      I2 => \s_daddr_i_reg[7]\(6),
      I3 => \s_daddr_i_reg[7]\(5),
      I4 => \s_daddr_i_reg[7]\(3),
      O => \^rx_fifo_datain_ff_reg[0]_0\
    );
xsdb_drdy_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5554"
    )
        port map (
      I0 => xsdb_drdy_i_i_2_n_0,
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => rx_fifo_rden_reg,
      O => xsdb_drdy_i0
    );
xsdb_drdy_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => s_dwe_i,
      I1 => \s_daddr_i_reg[7]\(0),
      I2 => \s_daddr_i_reg[7]\(1),
      I3 => \s_daddr_i_reg[7]\(4),
      I4 => \^rx_fifo_datain_ff_reg[0]_0\,
      I5 => \s_daddr_i_reg[7]\(2),
      O => xsdb_drdy_i_i_2_n_0
    );
xsdb_drdy_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => xsdb_drdy_i0,
      Q => xsdb_drdy_i,
      R => rst_xsdbfifo_large_reg
    );
xsdb_drdy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \xsdb2read_cmdfifo/\,
      D => xsdb_drdy_i,
      Q => xsdb_drdy_xsdb_rxfifo,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_write_axi is
  port (
    axi_wr_done : out STD_LOGIC;
    axi_wr_busy : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    \m_axi_awlen[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    axi_wr_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axi_awaddr[31]\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wr : in STD_LOGIC;
    aclk : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_cmd_fifo_data_out_reg[19]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wr_cmd_fifo_data_out_reg[63]\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_write_axi : entity is "jtag_axi_v1_2_4_write_axi";
end jtag_axi_0_jtag_axi_v1_2_4_write_axi;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_write_axi is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bready_ff_i_1_n_0 : STD_LOGIC;
  signal axi_bready_ff_i_2_n_0 : STD_LOGIC;
  signal \^axi_wr_busy\ : STD_LOGIC;
  signal axi_wr_busy_i_1_n_0 : STD_LOGIC;
  signal axi_wr_busy_i_2_n_0 : STD_LOGIC;
  signal \^axi_wr_done\ : STD_LOGIC;
  signal axi_wr_done_0 : STD_LOGIC;
  signal axi_wr_done_i_1_n_0 : STD_LOGIC;
  signal axi_wr_done_i_3_n_0 : STD_LOGIC;
  signal axi_wr_done_i_4_n_0 : STD_LOGIC;
  signal axi_wr_ff : STD_LOGIC;
  signal \^axi_wr_resp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_wr_resp[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wr_resp[1]_i_1_n_0\ : STD_LOGIC;
  signal burst_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \burst_count[8]_i_4_n_0\ : STD_LOGIC;
  signal burst_count_1 : STD_LOGIC;
  signal last_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \last_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \last_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \last_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \last_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \last_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \last_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_10_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_11_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_7_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_8_n_0\ : STD_LOGIC;
  signal \last_count[8]_i_9_n_0\ : STD_LOGIC;
  signal last_count_2 : STD_LOGIC;
  signal \^m_axi_awlen[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "true";
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \burst_count[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \burst_count[8]_i_4\ : label is "soft_lutpair3";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute KEEP of \state_reg[2]\ : label is "yes";
  attribute KEEP of \state_reg[3]\ : label is "yes";
begin
  Q(0) <= \^q\(0);
  axi_wr_busy <= \^axi_wr_busy\;
  axi_wr_done <= \^axi_wr_done\;
  axi_wr_resp(1 downto 0) <= \^axi_wr_resp\(1 downto 0);
  \m_axi_awlen[7]\(7 downto 0) <= \^m_axi_awlen[7]\(7 downto 0);
  m_axi_awvalid <= \^m_axi_awvalid\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_wlast <= \^m_axi_wlast\;
axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => state(3),
      I1 => axi_wr_ff,
      I2 => state(2),
      I3 => state(1),
      I4 => axi_awvalid_i_2_n_0,
      I5 => \^m_axi_awvalid\,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01011600"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => m_axi_awready,
      I4 => state(0),
      O => axi_awvalid_i_2_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => SR(0)
    );
axi_bready_ff_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => state(2),
      I1 => axi_bready_ff_i_2_n_0,
      I2 => \^m_axi_bready\,
      O => axi_bready_ff_i_1_n_0
    );
axi_bready_ff_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A000F0F30"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^q\(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => state(3),
      O => axi_bready_ff_i_2_n_0
    );
axi_bready_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_bready_ff_i_1_n_0,
      Q => \^m_axi_bready\,
      R => SR(0)
    );
axi_wr_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAAFFFFFCAA0000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => axi_wr,
      I2 => axi_wr_ff,
      I3 => state(0),
      I4 => axi_wr_busy_i_2_n_0,
      I5 => \^axi_wr_busy\,
      O => axi_wr_busy_i_1_n_0
    );
axi_wr_busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000062"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => m_axi_bvalid,
      I3 => state(2),
      I4 => state(1),
      O => axi_wr_busy_i_2_n_0
    );
axi_wr_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_wr_busy_i_1_n_0,
      Q => \^axi_wr_busy\,
      R => SR(0)
    );
axi_wr_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => state(3),
      I2 => \^q\(0),
      I3 => state(2),
      I4 => axi_wr_done_0,
      I5 => \^axi_wr_done\,
      O => axi_wr_done_i_1_n_0
    );
axi_wr_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCCFEEECCCC"
    )
        port map (
      I0 => state(1),
      I1 => axi_wr_done_i_3_n_0,
      I2 => state(0),
      I3 => axi_wr,
      I4 => \last_count[8]_i_3_n_0\,
      I5 => axi_wr_done_i_4_n_0,
      O => axi_wr_done_0
    );
axi_wr_done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => state(3),
      I1 => m_axi_bvalid,
      I2 => state(0),
      I3 => axi_wr_ff,
      I4 => \last_count[8]_i_3_n_0\,
      O => axi_wr_done_i_3_n_0
    );
axi_wr_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => \^q\(0),
      O => axi_wr_done_i_4_n_0
    );
axi_wr_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_wr_done_i_1_n_0,
      Q => \^axi_wr_done\,
      R => SR(0)
    );
axi_wr_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_wr,
      Q => axi_wr_ff,
      R => SR(0)
    );
\axi_wr_resp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => m_axi_bvalid,
      I2 => \^m_axi_bready\,
      I3 => \^axi_wr_resp\(0),
      O => \axi_wr_resp[0]_i_1_n_0\
    );
\axi_wr_resp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => m_axi_bresp(1),
      I1 => m_axi_bvalid,
      I2 => \^m_axi_bready\,
      I3 => \^axi_wr_resp\(1),
      O => \axi_wr_resp[1]_i_1_n_0\
    );
\axi_wr_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_wr_resp[0]_i_1_n_0\,
      Q => \^axi_wr_resp\(0),
      R => SR(0)
    );
\axi_wr_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_wr_resp[1]_i_1_n_0\,
      Q => \^axi_wr_resp\(1),
      R => SR(0)
    );
\burst_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => burst_count(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \^m_axi_awlen[7]\(0),
      O => \burst_count[0]_i_1_n_0\
    );
\burst_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6660666F"
    )
        port map (
      I0 => burst_count(0),
      I1 => burst_count(1),
      I2 => state(1),
      I3 => state(2),
      I4 => \^m_axi_awlen[7]\(1),
      O => \burst_count[1]_i_1_n_0\
    );
\burst_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78787800787878FF"
    )
        port map (
      I0 => burst_count(1),
      I1 => burst_count(0),
      I2 => burst_count(2),
      I3 => state(1),
      I4 => state(2),
      I5 => \^m_axi_awlen[7]\(2),
      O => \burst_count[2]_i_1_n_0\
    );
\burst_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F8000007F80FFFF"
    )
        port map (
      I0 => burst_count(2),
      I1 => burst_count(0),
      I2 => burst_count(1),
      I3 => burst_count(3),
      I4 => \burst_count[8]_i_3_n_0\,
      I5 => \^m_axi_awlen[7]\(3),
      O => \burst_count[3]_i_1_n_0\
    );
\burst_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6660666F"
    )
        port map (
      I0 => \burst_count[4]_i_2_n_0\,
      I1 => burst_count(4),
      I2 => state(1),
      I3 => state(2),
      I4 => \^m_axi_awlen[7]\(4),
      O => \burst_count[4]_i_1_n_0\
    );
\burst_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => burst_count(2),
      I1 => burst_count(0),
      I2 => burst_count(1),
      I3 => burst_count(3),
      O => \burst_count[4]_i_2_n_0\
    );
\burst_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6660666F"
    )
        port map (
      I0 => \burst_count[8]_i_4_n_0\,
      I1 => burst_count(5),
      I2 => state(1),
      I3 => state(2),
      I4 => \^m_axi_awlen[7]\(5),
      O => \burst_count[5]_i_1_n_0\
    );
\burst_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78787800787878FF"
    )
        port map (
      I0 => burst_count(5),
      I1 => \burst_count[8]_i_4_n_0\,
      I2 => burst_count(6),
      I3 => state(1),
      I4 => state(2),
      I5 => \^m_axi_awlen[7]\(6),
      O => \burst_count[6]_i_1_n_0\
    );
\burst_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F8000007F80FFFF"
    )
        port map (
      I0 => \burst_count[8]_i_4_n_0\,
      I1 => burst_count(5),
      I2 => burst_count(6),
      I3 => burst_count(7),
      I4 => \burst_count[8]_i_3_n_0\,
      I5 => \^m_axi_awlen[7]\(7),
      O => \burst_count[7]_i_1_n_0\
    );
\burst_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => state(0),
      I1 => axi_wr_ff,
      I2 => \burst_count[8]_i_3_n_0\,
      I3 => m_axi_wready,
      I4 => \^q\(0),
      I5 => \last_count[8]_i_3_n_0\,
      O => burst_count_1
    );
\burst_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => burst_count(5),
      I2 => burst_count(6),
      I3 => burst_count(7),
      I4 => \burst_count[8]_i_4_n_0\,
      I5 => \burst_count[8]_i_3_n_0\,
      O => \burst_count[8]_i_2_n_0\
    );
\burst_count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \burst_count[8]_i_3_n_0\
    );
\burst_count[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => burst_count(3),
      I1 => burst_count(1),
      I2 => burst_count(0),
      I3 => burst_count(2),
      I4 => burst_count(4),
      O => \burst_count[8]_i_4_n_0\
    );
\burst_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[0]_i_1_n_0\,
      Q => burst_count(0),
      R => SR(0)
    );
\burst_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[1]_i_1_n_0\,
      Q => burst_count(1),
      R => SR(0)
    );
\burst_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[2]_i_1_n_0\,
      Q => burst_count(2),
      R => SR(0)
    );
\burst_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[3]_i_1_n_0\,
      Q => burst_count(3),
      R => SR(0)
    );
\burst_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[4]_i_1_n_0\,
      Q => burst_count(4),
      R => SR(0)
    );
\burst_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[5]_i_1_n_0\,
      Q => burst_count(5),
      R => SR(0)
    );
\burst_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[6]_i_1_n_0\,
      Q => burst_count(6),
      R => SR(0)
    );
\burst_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[7]_i_1_n_0\,
      Q => burst_count(7),
      R => SR(0)
    );
\burst_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => burst_count_1,
      D => \burst_count[8]_i_2_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(0),
      Q => \m_axi_awaddr[31]\(0),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(1),
      Q => \m_axi_awaddr[31]\(1),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(2),
      Q => \m_axi_awaddr[31]\(2),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(3),
      Q => \m_axi_awaddr[31]\(3),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(4),
      Q => \m_axi_awaddr[31]\(4),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(5),
      Q => \m_axi_awaddr[31]\(5),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(6),
      Q => \m_axi_awaddr[31]\(6),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(7),
      Q => \m_axi_awaddr[31]\(7),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(8),
      Q => \m_axi_awaddr[31]\(8),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(9),
      Q => \m_axi_awaddr[31]\(9),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(10),
      Q => \m_axi_awaddr[31]\(10),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(11),
      Q => \m_axi_awaddr[31]\(11),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(12),
      Q => \m_axi_awaddr[31]\(12),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(13),
      Q => \m_axi_awaddr[31]\(13),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(14),
      Q => \m_axi_awaddr[31]\(14),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(15),
      Q => \m_axi_awaddr[31]\(15),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(16),
      Q => \m_axi_awaddr[31]\(16),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(17),
      Q => \m_axi_awaddr[31]\(17),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(18),
      Q => \m_axi_awaddr[31]\(18),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(19),
      Q => \m_axi_awaddr[31]\(19),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(20),
      Q => \m_axi_awaddr[31]\(20),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(21),
      Q => \m_axi_awaddr[31]\(21),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(22),
      Q => \m_axi_awaddr[31]\(22),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(23),
      Q => \m_axi_awaddr[31]\(23),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(24),
      Q => \m_axi_awaddr[31]\(24),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(25),
      Q => \m_axi_awaddr[31]\(25),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(26),
      Q => \m_axi_awaddr[31]\(26),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(27),
      Q => \m_axi_awaddr[31]\(27),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(28),
      Q => \m_axi_awaddr[31]\(28),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(29),
      Q => \m_axi_awaddr[31]\(29),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(30),
      Q => \m_axi_awaddr[31]\(30),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(31),
      Q => \m_axi_awaddr[31]\(31),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(32),
      Q => \m_axi_awaddr[31]\(32),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(33),
      Q => \m_axi_awaddr[31]\(33),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(34),
      Q => \m_axi_awaddr[31]\(34),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(35),
      Q => \m_axi_awaddr[31]\(35),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(36),
      Q => \m_axi_awaddr[31]\(36),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(37),
      Q => \m_axi_awaddr[31]\(37),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(38),
      Q => \m_axi_awaddr[31]\(38),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(39),
      Q => \m_axi_awaddr[31]\(39),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(40),
      Q => \m_axi_awaddr[31]\(40),
      R => SR(0)
    );
\cmd_fifo_data_out_ff_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[63]\(41),
      Q => \m_axi_awaddr[31]\(41),
      R => SR(0)
    );
\last_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => last_count(0),
      I1 => state(0),
      I2 => \^m_axi_awlen[7]\(0),
      I3 => state(3),
      O => \last_count[0]_i_1_n_0\
    );
\last_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8748B47"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(1),
      I1 => state(0),
      I2 => last_count(1),
      I3 => \^m_axi_awlen[7]\(0),
      I4 => last_count(0),
      I5 => state(3),
      O => \last_count[1]_i_1_n_0\
    );
\last_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(2),
      I1 => state(0),
      I2 => last_count(2),
      I3 => \last_count[2]_i_2_n_0\,
      I4 => state(3),
      O => \last_count[2]_i_1_n_0\
    );
\last_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => last_count(1),
      I1 => \^m_axi_awlen[7]\(1),
      I2 => last_count(0),
      I3 => state(0),
      I4 => \^m_axi_awlen[7]\(0),
      O => \last_count[2]_i_2_n_0\
    );
\last_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(3),
      I1 => state(0),
      I2 => last_count(3),
      I3 => \last_count[3]_i_2_n_0\,
      I4 => state(3),
      O => \last_count[3]_i_1_n_0\
    );
\last_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAEEEEFFFA"
    )
        port map (
      I0 => \last_count[3]_i_3_n_0\,
      I1 => \^m_axi_awlen[7]\(1),
      I2 => last_count(1),
      I3 => last_count(2),
      I4 => state(0),
      I5 => \^m_axi_awlen[7]\(2),
      O => \last_count[3]_i_2_n_0\
    );
\last_count[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(0),
      I1 => state(0),
      I2 => last_count(0),
      O => \last_count[3]_i_3_n_0\
    );
\last_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(4),
      I1 => state(0),
      I2 => last_count(4),
      I3 => \last_count[4]_i_2_n_0\,
      I4 => state(3),
      O => \last_count[4]_i_1_n_0\
    );
\last_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFAFFFC"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(2),
      I1 => last_count(2),
      I2 => \last_count[2]_i_2_n_0\,
      I3 => last_count(3),
      I4 => state(0),
      I5 => \^m_axi_awlen[7]\(3),
      O => \last_count[4]_i_2_n_0\
    );
\last_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(5),
      I1 => state(0),
      I2 => last_count(5),
      I3 => \last_count[5]_i_2_n_0\,
      I4 => state(3),
      O => \last_count[5]_i_1_n_0\
    );
\last_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEEEFE"
    )
        port map (
      I0 => \last_count[8]_i_10_n_0\,
      I1 => \last_count[2]_i_2_n_0\,
      I2 => last_count(2),
      I3 => state(0),
      I4 => \^m_axi_awlen[7]\(2),
      I5 => \last_count[8]_i_8_n_0\,
      O => \last_count[5]_i_2_n_0\
    );
\last_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(6),
      I1 => state(0),
      I2 => last_count(6),
      I3 => \last_count[8]_i_7_n_0\,
      I4 => state(3),
      O => \last_count[6]_i_1_n_0\
    );
\last_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8B847"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(7),
      I1 => state(0),
      I2 => last_count(7),
      I3 => \last_count[8]_i_7_n_0\,
      I4 => \last_count[8]_i_6_n_0\,
      I5 => state(3),
      O => \last_count[7]_i_1_n_0\
    );
\last_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA808080"
    )
        port map (
      I0 => \last_count[8]_i_3_n_0\,
      I1 => axi_wr_ff,
      I2 => state(0),
      I3 => m_axi_bvalid,
      I4 => state(3),
      I5 => \last_count[8]_i_4_n_0\,
      O => last_count_2
    );
\last_count[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(3),
      I1 => state(0),
      I2 => last_count(3),
      O => \last_count[8]_i_10_n_0\
    );
\last_count[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(5),
      I1 => state(0),
      I2 => last_count(5),
      O => \last_count[8]_i_11_n_0\
    );
\last_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002222222D"
    )
        port map (
      I0 => \^m_axi_wlast\,
      I1 => state(0),
      I2 => \last_count[8]_i_5_n_0\,
      I3 => \last_count[8]_i_6_n_0\,
      I4 => \last_count[8]_i_7_n_0\,
      I5 => state(3),
      O => \last_count[8]_i_2_n_0\
    );
\last_count[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \last_count[8]_i_3_n_0\
    );
\last_count[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \last_count[8]_i_3_n_0\,
      I1 => \^q\(0),
      I2 => m_axi_wready,
      I3 => state(2),
      I4 => state(1),
      O => \last_count[8]_i_4_n_0\
    );
\last_count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(7),
      I1 => state(0),
      I2 => last_count(7),
      O => \last_count[8]_i_5_n_0\
    );
\last_count[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(6),
      I1 => state(0),
      I2 => last_count(6),
      O => \last_count[8]_i_6_n_0\
    );
\last_count[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \last_count[8]_i_8_n_0\,
      I1 => \last_count[8]_i_9_n_0\,
      I2 => \last_count[2]_i_2_n_0\,
      I3 => \last_count[8]_i_10_n_0\,
      I4 => \last_count[8]_i_11_n_0\,
      O => \last_count[8]_i_7_n_0\
    );
\last_count[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(4),
      I1 => state(0),
      I2 => last_count(4),
      O => \last_count[8]_i_8_n_0\
    );
\last_count[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awlen[7]\(2),
      I1 => state(0),
      I2 => last_count(2),
      O => \last_count[8]_i_9_n_0\
    );
\last_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[0]_i_1_n_0\,
      Q => last_count(0),
      R => SR(0)
    );
\last_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[1]_i_1_n_0\,
      Q => last_count(1),
      R => SR(0)
    );
\last_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[2]_i_1_n_0\,
      Q => last_count(2),
      R => SR(0)
    );
\last_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[3]_i_1_n_0\,
      Q => last_count(3),
      R => SR(0)
    );
\last_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[4]_i_1_n_0\,
      Q => last_count(4),
      R => SR(0)
    );
\last_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[5]_i_1_n_0\,
      Q => last_count(5),
      R => SR(0)
    );
\last_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[6]_i_1_n_0\,
      Q => last_count(6),
      R => SR(0)
    );
\last_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[7]_i_1_n_0\,
      Q => last_count(7),
      R => SR(0)
    );
\last_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_count_2,
      D => \last_count[8]_i_2_n_0\,
      Q => \^m_axi_wlast\,
      R => SR(0)
    );
\len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(0),
      Q => \^m_axi_awlen[7]\(0),
      R => SR(0)
    );
\len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(1),
      Q => \^m_axi_awlen[7]\(1),
      R => SR(0)
    );
\len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(2),
      Q => \^m_axi_awlen[7]\(2),
      R => SR(0)
    );
\len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(3),
      Q => \^m_axi_awlen[7]\(3),
      R => SR(0)
    );
\len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(4),
      Q => \^m_axi_awlen[7]\(4),
      R => SR(0)
    );
\len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(5),
      Q => \^m_axi_awlen[7]\(5),
      R => SR(0)
    );
\len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(6),
      Q => \^m_axi_awlen[7]\(6),
      R => SR(0)
    );
\len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_wr,
      D => \wr_cmd_fifo_data_out_reg[19]\(7),
      Q => \^m_axi_awlen[7]\(7),
      R => SR(0)
    );
\ram_empty_i_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^q\(0),
      I2 => \gpregsm1.curr_fwft_state_reg[0]\(0),
      O => ram_empty_i_reg
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF700FFFFD500"
    )
        port map (
      I0 => axi_wr_ff,
      I1 => \^q\(0),
      I2 => state(2),
      I3 => state(0),
      I4 => \state[0]_i_2_n_0\,
      I5 => \state[0]_i_3_n_0\,
      O => \state__0\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(3),
      I1 => m_axi_bvalid,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => m_axi_wready,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBAAEAAAFFAA"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => state(2),
      I3 => state(1),
      I4 => m_axi_awready,
      I5 => m_axi_wready,
      O => \state__0\(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => axi_wr_ff,
      O => \state[1]_i_2_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC8C840"
    )
        port map (
      I0 => m_axi_wready,
      I1 => state(1),
      I2 => m_axi_awready,
      I3 => \^q\(0),
      I4 => state(2),
      O => \state__0\(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2A2A2A2F2F2F2F2"
    )
        port map (
      I0 => state(2),
      I1 => \^q\(0),
      I2 => state(3),
      I3 => m_axi_wready,
      I4 => state(1),
      I5 => m_axi_bvalid,
      O => \state__0\(3)
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \state[3]_i_1_n_0\,
      D => \state__0\(0),
      Q => state(0),
      S => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state[3]_i_1_n_0\,
      D => \state__0\(1),
      Q => state(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state[3]_i_1_n_0\,
      D => \state__0\(2),
      Q => state(2),
      R => SR(0)
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state[3]_i_1_n_0\,
      D => \state__0\(3),
      Q => state(3),
      R => SR(0)
    );
\wr_cmd_fifo_data_out_qid[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_wr_done\,
      I1 => axi_wr_done_ff,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo is
  port (
    xsdb_drdy_xsdb_txfifo : out STD_LOGIC;
    tx_fifo_wr : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_xsdbfifo_large_reg : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_den_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo : entity is "jtag_axi_v1_2_4_xsdb2txfifo";
end jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo is
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal shift_en : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tx_fifo_dataout[31]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal tx_fifowr_en : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair70";
begin
  tx_fifo_wr <= \^tx_fifo_wr\;
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11112022"
    )
        port map (
      I0 => shift_en,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(2),
      I3 => count(1),
      I4 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11223000"
    )
        port map (
      I0 => shift_en,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(2),
      I3 => count(1),
      I4 => count(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12303030"
    )
        port map (
      I0 => shift_en,
      I1 => rst_xsdbfifo_large_reg,
      I2 => count(2),
      I3 => count(1),
      I4 => count(0),
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => '0'
    );
\gic0.gc0.count_d1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_fifo_wr\,
      I1 => ram_full_fb_i_reg,
      O => \gic0.gc0.count_d1_reg[7]\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(16),
      Q => shift_reg(0),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(26),
      Q => shift_reg(10),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(27),
      Q => shift_reg(11),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(28),
      Q => shift_reg(12),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(29),
      Q => shift_reg(13),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(30),
      Q => shift_reg(14),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(31),
      Q => shift_reg(15),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(0),
      Q => shift_reg(16),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(1),
      Q => shift_reg(17),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(2),
      Q => shift_reg(18),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(3),
      Q => shift_reg(19),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(17),
      Q => shift_reg(1),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(4),
      Q => shift_reg(20),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(5),
      Q => shift_reg(21),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(6),
      Q => shift_reg(22),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(7),
      Q => shift_reg(23),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(8),
      Q => shift_reg(24),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(9),
      Q => shift_reg(25),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(10),
      Q => shift_reg(26),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(11),
      Q => shift_reg(27),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(12),
      Q => shift_reg(28),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(13),
      Q => shift_reg(29),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(18),
      Q => shift_reg(2),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(14),
      Q => shift_reg(30),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => Q(15),
      Q => shift_reg(31),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(19),
      Q => shift_reg(3),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(20),
      Q => shift_reg(4),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(21),
      Q => shift_reg(5),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(22),
      Q => shift_reg(6),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(23),
      Q => shift_reg(7),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(24),
      Q => shift_reg(8),
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => shift_en,
      D => shift_reg(25),
      Q => shift_reg(9),
      R => rst_xsdbfifo_large_reg
    );
\tx_fifo_dataout[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      I2 => rst_xsdbfifo_large_reg,
      I3 => count(2),
      O => \tx_fifo_dataout[31]_i_1_n_0\
    );
\tx_fifo_dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(0),
      Q => \gpr1.dout_i_reg[31]\(0),
      R => '0'
    );
\tx_fifo_dataout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(10),
      Q => \gpr1.dout_i_reg[31]\(10),
      R => '0'
    );
\tx_fifo_dataout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(11),
      Q => \gpr1.dout_i_reg[31]\(11),
      R => '0'
    );
\tx_fifo_dataout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(12),
      Q => \gpr1.dout_i_reg[31]\(12),
      R => '0'
    );
\tx_fifo_dataout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(13),
      Q => \gpr1.dout_i_reg[31]\(13),
      R => '0'
    );
\tx_fifo_dataout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(14),
      Q => \gpr1.dout_i_reg[31]\(14),
      R => '0'
    );
\tx_fifo_dataout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(15),
      Q => \gpr1.dout_i_reg[31]\(15),
      R => '0'
    );
\tx_fifo_dataout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(16),
      Q => \gpr1.dout_i_reg[31]\(16),
      R => '0'
    );
\tx_fifo_dataout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(17),
      Q => \gpr1.dout_i_reg[31]\(17),
      R => '0'
    );
\tx_fifo_dataout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(18),
      Q => \gpr1.dout_i_reg[31]\(18),
      R => '0'
    );
\tx_fifo_dataout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(19),
      Q => \gpr1.dout_i_reg[31]\(19),
      R => '0'
    );
\tx_fifo_dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(1),
      Q => \gpr1.dout_i_reg[31]\(1),
      R => '0'
    );
\tx_fifo_dataout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(20),
      Q => \gpr1.dout_i_reg[31]\(20),
      R => '0'
    );
\tx_fifo_dataout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(21),
      Q => \gpr1.dout_i_reg[31]\(21),
      R => '0'
    );
\tx_fifo_dataout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(22),
      Q => \gpr1.dout_i_reg[31]\(22),
      R => '0'
    );
\tx_fifo_dataout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(23),
      Q => \gpr1.dout_i_reg[31]\(23),
      R => '0'
    );
\tx_fifo_dataout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(24),
      Q => \gpr1.dout_i_reg[31]\(24),
      R => '0'
    );
\tx_fifo_dataout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(25),
      Q => \gpr1.dout_i_reg[31]\(25),
      R => '0'
    );
\tx_fifo_dataout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(26),
      Q => \gpr1.dout_i_reg[31]\(26),
      R => '0'
    );
\tx_fifo_dataout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(27),
      Q => \gpr1.dout_i_reg[31]\(27),
      R => '0'
    );
\tx_fifo_dataout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(28),
      Q => \gpr1.dout_i_reg[31]\(28),
      R => '0'
    );
\tx_fifo_dataout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(29),
      Q => \gpr1.dout_i_reg[31]\(29),
      R => '0'
    );
\tx_fifo_dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(2),
      Q => \gpr1.dout_i_reg[31]\(2),
      R => '0'
    );
\tx_fifo_dataout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(30),
      Q => \gpr1.dout_i_reg[31]\(30),
      R => '0'
    );
\tx_fifo_dataout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(31),
      Q => \gpr1.dout_i_reg[31]\(31),
      R => '0'
    );
\tx_fifo_dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(3),
      Q => \gpr1.dout_i_reg[31]\(3),
      R => '0'
    );
\tx_fifo_dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(4),
      Q => \gpr1.dout_i_reg[31]\(4),
      R => '0'
    );
\tx_fifo_dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(5),
      Q => \gpr1.dout_i_reg[31]\(5),
      R => '0'
    );
\tx_fifo_dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(6),
      Q => \gpr1.dout_i_reg[31]\(6),
      R => '0'
    );
\tx_fifo_dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(7),
      Q => \gpr1.dout_i_reg[31]\(7),
      R => '0'
    );
\tx_fifo_dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(8),
      Q => \gpr1.dout_i_reg[31]\(8),
      R => '0'
    );
\tx_fifo_dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[31]_i_1_n_0\,
      D => shift_reg(9),
      Q => \gpr1.dout_i_reg[31]\(9),
      R => '0'
    );
tx_fifowren_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => tx_fifowr_en(0)
    );
tx_fifowren_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => tx_fifowr_en(0),
      Q => \^tx_fifo_wr\,
      R => rst_xsdbfifo_large_reg
    );
\xsdb_drdy_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_dwe_i,
      I1 => \s_daddr_i_reg[4]\(0),
      I2 => \s_daddr_i_reg[4]\(1),
      I3 => \s_daddr_i_reg[4]\(3),
      I4 => s_den_i_reg,
      I5 => \s_daddr_i_reg[4]\(2),
      O => shift_en
    );
xsdb_drdy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => shift_en,
      Q => xsdb_drdy_xsdb_txfifo,
      R => rst_xsdbfifo_large_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0\ is
  port (
    \sl_oport_o[0]_INST_0\ : out STD_LOGIC;
    rd_cmd_fifowren_i : out STD_LOGIC;
    p_20_out_0 : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst_xsdbfifo_large_reg : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_den_i_reg : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0\ : entity is "jtag_axi_v1_2_4_xsdb2txfifo";
end \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0\ is
  signal \count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_cmd_fifowren_i\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[32]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[33]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[34]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[35]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[36]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[37]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[38]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[39]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[40]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[41]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[42]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[43]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[44]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[45]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[46]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[47]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[48]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[49]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[50]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[51]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[52]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[53]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[54]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[55]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[56]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[57]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[58]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[59]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[60]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[61]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[62]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[63]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \tx_fifo_dataout[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \tx_fifowren_i_1__1_n_0\ : STD_LOGIC;
  signal xsdb_drdy_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count[3]_i_2__0\ : label is "soft_lutpair68";
begin
  rd_cmd_fifowren_i <= \^rd_cmd_fifowren_i\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rd_cmd_fifowren_i\,
      I1 => ram_full_fb_i_reg,
      O => p_20_out_0
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(3),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(1),
      I4 => rst_xsdbfifo_large_reg,
      O => \count[3]_i_1__0_n_0\
    );
\count[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \p_0_in__0\(0),
      Q => \count_reg__0\(0),
      R => \count[3]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \p_0_in__0\(1),
      Q => \count_reg__0\(1),
      R => \count[3]_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \p_0_in__0\(2),
      Q => \count_reg__0\(2),
      R => \count[3]_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \p_0_in__0\(3),
      Q => \count_reg__0\(3),
      R => \count[3]_i_1__0_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[16]\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[26]\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[27]\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[28]\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[29]\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[30]\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[31]\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[32]\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[33]\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[34]\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[35]\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[17]\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[36]\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[37]\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[38]\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[39]\,
      Q => \shift_reg_reg_n_0_[23]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[40]\,
      Q => \shift_reg_reg_n_0_[24]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[41]\,
      Q => \shift_reg_reg_n_0_[25]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[42]\,
      Q => \shift_reg_reg_n_0_[26]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[43]\,
      Q => \shift_reg_reg_n_0_[27]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[44]\,
      Q => \shift_reg_reg_n_0_[28]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[45]\,
      Q => \shift_reg_reg_n_0_[29]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[18]\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[46]\,
      Q => \shift_reg_reg_n_0_[30]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[47]\,
      Q => \shift_reg_reg_n_0_[31]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[48]\,
      Q => \shift_reg_reg_n_0_[32]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[49]\,
      Q => \shift_reg_reg_n_0_[33]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[50]\,
      Q => \shift_reg_reg_n_0_[34]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[51]\,
      Q => \shift_reg_reg_n_0_[35]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[52]\,
      Q => \shift_reg_reg_n_0_[36]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[53]\,
      Q => \shift_reg_reg_n_0_[37]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[54]\,
      Q => \shift_reg_reg_n_0_[38]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[55]\,
      Q => \shift_reg_reg_n_0_[39]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[19]\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[56]\,
      Q => \shift_reg_reg_n_0_[40]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[57]\,
      Q => \shift_reg_reg_n_0_[41]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[58]\,
      Q => \shift_reg_reg_n_0_[42]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[59]\,
      Q => \shift_reg_reg_n_0_[43]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[60]\,
      Q => \shift_reg_reg_n_0_[44]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[61]\,
      Q => \shift_reg_reg_n_0_[45]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[62]\,
      Q => \shift_reg_reg_n_0_[46]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[63]\,
      Q => \shift_reg_reg_n_0_[47]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(0),
      Q => \shift_reg_reg_n_0_[48]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(1),
      Q => \shift_reg_reg_n_0_[49]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[20]\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(2),
      Q => \shift_reg_reg_n_0_[50]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(3),
      Q => \shift_reg_reg_n_0_[51]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(4),
      Q => \shift_reg_reg_n_0_[52]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(5),
      Q => \shift_reg_reg_n_0_[53]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(6),
      Q => \shift_reg_reg_n_0_[54]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(7),
      Q => \shift_reg_reg_n_0_[55]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(8),
      Q => \shift_reg_reg_n_0_[56]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(9),
      Q => \shift_reg_reg_n_0_[57]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(10),
      Q => \shift_reg_reg_n_0_[58]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(11),
      Q => \shift_reg_reg_n_0_[59]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[21]\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(12),
      Q => \shift_reg_reg_n_0_[60]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(13),
      Q => \shift_reg_reg_n_0_[61]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(14),
      Q => \shift_reg_reg_n_0_[62]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => Q(15),
      Q => \shift_reg_reg_n_0_[63]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[22]\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[23]\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[24]\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => xsdb_drdy_i_1_n_0,
      D => \shift_reg_reg_n_0_[25]\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => rst_xsdbfifo_large_reg
    );
\tx_fifo_dataout[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(2),
      I2 => \count_reg__0\(1),
      I3 => rst_xsdbfifo_large_reg,
      I4 => \count_reg__0\(3),
      O => \tx_fifo_dataout[63]_i_1__0_n_0\
    );
\tx_fifo_dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[0]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(0),
      R => '0'
    );
\tx_fifo_dataout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[10]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(10),
      R => '0'
    );
\tx_fifo_dataout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[11]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(11),
      R => '0'
    );
\tx_fifo_dataout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[12]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(12),
      R => '0'
    );
\tx_fifo_dataout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[13]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(13),
      R => '0'
    );
\tx_fifo_dataout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[14]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(14),
      R => '0'
    );
\tx_fifo_dataout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[15]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(15),
      R => '0'
    );
\tx_fifo_dataout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[16]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(16),
      R => '0'
    );
\tx_fifo_dataout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[17]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(17),
      R => '0'
    );
\tx_fifo_dataout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[18]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(18),
      R => '0'
    );
\tx_fifo_dataout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[19]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(19),
      R => '0'
    );
\tx_fifo_dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[1]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(1),
      R => '0'
    );
\tx_fifo_dataout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[20]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(20),
      R => '0'
    );
\tx_fifo_dataout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[21]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(21),
      R => '0'
    );
\tx_fifo_dataout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[22]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(22),
      R => '0'
    );
\tx_fifo_dataout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[23]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(23),
      R => '0'
    );
\tx_fifo_dataout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[24]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(24),
      R => '0'
    );
\tx_fifo_dataout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[25]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(25),
      R => '0'
    );
\tx_fifo_dataout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[26]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(26),
      R => '0'
    );
\tx_fifo_dataout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[27]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(27),
      R => '0'
    );
\tx_fifo_dataout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[28]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(28),
      R => '0'
    );
\tx_fifo_dataout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[29]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(29),
      R => '0'
    );
\tx_fifo_dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[2]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(2),
      R => '0'
    );
\tx_fifo_dataout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[30]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(30),
      R => '0'
    );
\tx_fifo_dataout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[31]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(31),
      R => '0'
    );
\tx_fifo_dataout_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[32]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(32),
      R => '0'
    );
\tx_fifo_dataout_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[33]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(33),
      R => '0'
    );
\tx_fifo_dataout_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[34]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(34),
      R => '0'
    );
\tx_fifo_dataout_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[35]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(35),
      R => '0'
    );
\tx_fifo_dataout_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[36]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(36),
      R => '0'
    );
\tx_fifo_dataout_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[37]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(37),
      R => '0'
    );
\tx_fifo_dataout_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[38]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(38),
      R => '0'
    );
\tx_fifo_dataout_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[39]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(39),
      R => '0'
    );
\tx_fifo_dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[3]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3),
      R => '0'
    );
\tx_fifo_dataout_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[40]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(40),
      R => '0'
    );
\tx_fifo_dataout_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[41]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(41),
      R => '0'
    );
\tx_fifo_dataout_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[42]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(42),
      R => '0'
    );
\tx_fifo_dataout_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[43]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(43),
      R => '0'
    );
\tx_fifo_dataout_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[44]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(44),
      R => '0'
    );
\tx_fifo_dataout_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[45]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(45),
      R => '0'
    );
\tx_fifo_dataout_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[46]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(46),
      R => '0'
    );
\tx_fifo_dataout_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[47]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(47),
      R => '0'
    );
\tx_fifo_dataout_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[48]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(48),
      R => '0'
    );
\tx_fifo_dataout_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[49]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(49),
      R => '0'
    );
\tx_fifo_dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[4]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(4),
      R => '0'
    );
\tx_fifo_dataout_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[50]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(50),
      R => '0'
    );
\tx_fifo_dataout_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[51]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(51),
      R => '0'
    );
\tx_fifo_dataout_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[52]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(52),
      R => '0'
    );
\tx_fifo_dataout_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[53]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(53),
      R => '0'
    );
\tx_fifo_dataout_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[54]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(54),
      R => '0'
    );
\tx_fifo_dataout_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[55]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(55),
      R => '0'
    );
\tx_fifo_dataout_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[56]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(56),
      R => '0'
    );
\tx_fifo_dataout_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[57]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(57),
      R => '0'
    );
\tx_fifo_dataout_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[58]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(58),
      R => '0'
    );
\tx_fifo_dataout_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[59]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(59),
      R => '0'
    );
\tx_fifo_dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[5]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(5),
      R => '0'
    );
\tx_fifo_dataout_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[60]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(60),
      R => '0'
    );
\tx_fifo_dataout_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[61]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(61),
      R => '0'
    );
\tx_fifo_dataout_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[62]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(62),
      R => '0'
    );
\tx_fifo_dataout_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[63]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63),
      R => '0'
    );
\tx_fifo_dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[6]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(6),
      R => '0'
    );
\tx_fifo_dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[7]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(7),
      R => '0'
    );
\tx_fifo_dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[8]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8),
      R => '0'
    );
\tx_fifo_dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => \tx_fifo_dataout[63]_i_1__0_n_0\,
      D => \shift_reg_reg_n_0_[9]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(9),
      R => '0'
    );
\tx_fifowren_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(2),
      O => \tx_fifowren_i_1__1_n_0\
    );
tx_fifowren_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \tx_fifowren_i_1__1_n_0\,
      Q => \^rd_cmd_fifowren_i\,
      R => rst_xsdbfifo_large_reg
    );
xsdb_drdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_dwe_i,
      I1 => \s_daddr_i_reg[4]\(1),
      I2 => \s_daddr_i_reg[4]\(0),
      I3 => \s_daddr_i_reg[4]\(3),
      I4 => s_den_i_reg,
      I5 => \s_daddr_i_reg[4]\(2),
      O => xsdb_drdy_i_1_n_0
    );
xsdb_drdy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => xsdb_drdy_i_1_n_0,
      Q => \sl_oport_o[0]_INST_0\,
      R => rst_xsdbfifo_large_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0_1\ is
  port (
    \sl_oport_o[0]_INST_0\ : out STD_LOGIC;
    wr_cmd_fifowren_i : out STD_LOGIC;
    p_20_out : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst_xsdbfifo_large_reg : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dwe_i : in STD_LOGIC;
    s_den_i_reg : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0_1\ : entity is "jtag_axi_v1_2_4_xsdb2txfifo";
end \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0_1\;

architecture STRUCTURE of \jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0_1\ is
  signal clear : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[32]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[33]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[34]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[35]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[36]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[37]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[38]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[39]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[40]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[41]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[42]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[43]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[44]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[45]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[46]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[47]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[48]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[49]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[50]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[51]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[52]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[53]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[54]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[55]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[56]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[57]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[58]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[59]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[60]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[61]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[62]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[63]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal tx_fifo_dataout : STD_LOGIC;
  signal \tx_fifowren_i_1__0_n_0\ : STD_LOGIC;
  signal \^wr_cmd_fifowren_i\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair71";
begin
  wr_cmd_fifowren_i <= \^wr_cmd_fifowren_i\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^wr_cmd_fifowren_i\,
      I1 => ram_full_fb_i_reg,
      O => p_20_out
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(3),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(1),
      I4 => rst_xsdbfifo_large_reg,
      O => clear
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      O => p_0_in(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => p_0_in(0),
      Q => \count_reg__0\(0),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => p_0_in(1),
      Q => \count_reg__0\(1),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => p_0_in(2),
      Q => \count_reg__0\(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => p_0_in(3),
      Q => \count_reg__0\(3),
      R => clear
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[16]\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[26]\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[27]\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[28]\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[29]\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[30]\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[31]\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[32]\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[33]\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[34]\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[35]\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[17]\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[36]\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[37]\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[38]\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[39]\,
      Q => \shift_reg_reg_n_0_[23]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[40]\,
      Q => \shift_reg_reg_n_0_[24]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[41]\,
      Q => \shift_reg_reg_n_0_[25]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[42]\,
      Q => \shift_reg_reg_n_0_[26]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[43]\,
      Q => \shift_reg_reg_n_0_[27]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[44]\,
      Q => \shift_reg_reg_n_0_[28]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[45]\,
      Q => \shift_reg_reg_n_0_[29]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[18]\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[46]\,
      Q => \shift_reg_reg_n_0_[30]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[47]\,
      Q => \shift_reg_reg_n_0_[31]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[48]\,
      Q => \shift_reg_reg_n_0_[32]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[49]\,
      Q => \shift_reg_reg_n_0_[33]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[50]\,
      Q => \shift_reg_reg_n_0_[34]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[51]\,
      Q => \shift_reg_reg_n_0_[35]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[52]\,
      Q => \shift_reg_reg_n_0_[36]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[53]\,
      Q => \shift_reg_reg_n_0_[37]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[54]\,
      Q => \shift_reg_reg_n_0_[38]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[55]\,
      Q => \shift_reg_reg_n_0_[39]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[19]\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[56]\,
      Q => \shift_reg_reg_n_0_[40]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[57]\,
      Q => \shift_reg_reg_n_0_[41]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[58]\,
      Q => \shift_reg_reg_n_0_[42]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[59]\,
      Q => \shift_reg_reg_n_0_[43]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[60]\,
      Q => \shift_reg_reg_n_0_[44]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[61]\,
      Q => \shift_reg_reg_n_0_[45]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[62]\,
      Q => \shift_reg_reg_n_0_[46]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[63]\,
      Q => \shift_reg_reg_n_0_[47]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(0),
      Q => \shift_reg_reg_n_0_[48]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(1),
      Q => \shift_reg_reg_n_0_[49]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[20]\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(2),
      Q => \shift_reg_reg_n_0_[50]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(3),
      Q => \shift_reg_reg_n_0_[51]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(4),
      Q => \shift_reg_reg_n_0_[52]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(5),
      Q => \shift_reg_reg_n_0_[53]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(6),
      Q => \shift_reg_reg_n_0_[54]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(7),
      Q => \shift_reg_reg_n_0_[55]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(8),
      Q => \shift_reg_reg_n_0_[56]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(9),
      Q => \shift_reg_reg_n_0_[57]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(10),
      Q => \shift_reg_reg_n_0_[58]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(11),
      Q => \shift_reg_reg_n_0_[59]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[21]\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(12),
      Q => \shift_reg_reg_n_0_[60]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(13),
      Q => \shift_reg_reg_n_0_[61]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(14),
      Q => \shift_reg_reg_n_0_[62]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => Q(15),
      Q => \shift_reg_reg_n_0_[63]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[22]\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[23]\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[24]\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => rst_xsdbfifo_large_reg
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => sel,
      D => \shift_reg_reg_n_0_[25]\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => rst_xsdbfifo_large_reg
    );
\tx_fifo_dataout[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(2),
      I2 => \count_reg__0\(1),
      I3 => rst_xsdbfifo_large_reg,
      I4 => \count_reg__0\(3),
      O => tx_fifo_dataout
    );
\tx_fifo_dataout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[0]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(0),
      R => '0'
    );
\tx_fifo_dataout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[10]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(10),
      R => '0'
    );
\tx_fifo_dataout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[11]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(11),
      R => '0'
    );
\tx_fifo_dataout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[12]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(12),
      R => '0'
    );
\tx_fifo_dataout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[13]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(13),
      R => '0'
    );
\tx_fifo_dataout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[14]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(14),
      R => '0'
    );
\tx_fifo_dataout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[15]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(15),
      R => '0'
    );
\tx_fifo_dataout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[16]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(16),
      R => '0'
    );
\tx_fifo_dataout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[17]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(17),
      R => '0'
    );
\tx_fifo_dataout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[18]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(18),
      R => '0'
    );
\tx_fifo_dataout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[19]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(19),
      R => '0'
    );
\tx_fifo_dataout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[1]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(1),
      R => '0'
    );
\tx_fifo_dataout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[20]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(20),
      R => '0'
    );
\tx_fifo_dataout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[21]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(21),
      R => '0'
    );
\tx_fifo_dataout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[22]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(22),
      R => '0'
    );
\tx_fifo_dataout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[23]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(23),
      R => '0'
    );
\tx_fifo_dataout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[24]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(24),
      R => '0'
    );
\tx_fifo_dataout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[25]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(25),
      R => '0'
    );
\tx_fifo_dataout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[26]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(26),
      R => '0'
    );
\tx_fifo_dataout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[27]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(27),
      R => '0'
    );
\tx_fifo_dataout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[28]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(28),
      R => '0'
    );
\tx_fifo_dataout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[29]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(29),
      R => '0'
    );
\tx_fifo_dataout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[2]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(2),
      R => '0'
    );
\tx_fifo_dataout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[30]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(30),
      R => '0'
    );
\tx_fifo_dataout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[31]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(31),
      R => '0'
    );
\tx_fifo_dataout_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[32]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(32),
      R => '0'
    );
\tx_fifo_dataout_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[33]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(33),
      R => '0'
    );
\tx_fifo_dataout_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[34]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(34),
      R => '0'
    );
\tx_fifo_dataout_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[35]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(35),
      R => '0'
    );
\tx_fifo_dataout_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[36]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(36),
      R => '0'
    );
\tx_fifo_dataout_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[37]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(37),
      R => '0'
    );
\tx_fifo_dataout_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[38]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(38),
      R => '0'
    );
\tx_fifo_dataout_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[39]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(39),
      R => '0'
    );
\tx_fifo_dataout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[3]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3),
      R => '0'
    );
\tx_fifo_dataout_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[40]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(40),
      R => '0'
    );
\tx_fifo_dataout_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[41]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(41),
      R => '0'
    );
\tx_fifo_dataout_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[42]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(42),
      R => '0'
    );
\tx_fifo_dataout_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[43]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(43),
      R => '0'
    );
\tx_fifo_dataout_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[44]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(44),
      R => '0'
    );
\tx_fifo_dataout_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[45]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(45),
      R => '0'
    );
\tx_fifo_dataout_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[46]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(46),
      R => '0'
    );
\tx_fifo_dataout_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[47]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(47),
      R => '0'
    );
\tx_fifo_dataout_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[48]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(48),
      R => '0'
    );
\tx_fifo_dataout_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[49]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(49),
      R => '0'
    );
\tx_fifo_dataout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[4]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(4),
      R => '0'
    );
\tx_fifo_dataout_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[50]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(50),
      R => '0'
    );
\tx_fifo_dataout_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[51]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(51),
      R => '0'
    );
\tx_fifo_dataout_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[52]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(52),
      R => '0'
    );
\tx_fifo_dataout_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[53]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(53),
      R => '0'
    );
\tx_fifo_dataout_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[54]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(54),
      R => '0'
    );
\tx_fifo_dataout_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[55]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(55),
      R => '0'
    );
\tx_fifo_dataout_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[56]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(56),
      R => '0'
    );
\tx_fifo_dataout_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[57]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(57),
      R => '0'
    );
\tx_fifo_dataout_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[58]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(58),
      R => '0'
    );
\tx_fifo_dataout_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[59]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(59),
      R => '0'
    );
\tx_fifo_dataout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[5]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(5),
      R => '0'
    );
\tx_fifo_dataout_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[60]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(60),
      R => '0'
    );
\tx_fifo_dataout_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[61]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(61),
      R => '0'
    );
\tx_fifo_dataout_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[62]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(62),
      R => '0'
    );
\tx_fifo_dataout_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[63]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63),
      R => '0'
    );
\tx_fifo_dataout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[6]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(6),
      R => '0'
    );
\tx_fifo_dataout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[7]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(7),
      R => '0'
    );
\tx_fifo_dataout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[8]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8),
      R => '0'
    );
\tx_fifo_dataout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => tx_fifo_dataout,
      D => \shift_reg_reg_n_0_[9]\,
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(9),
      R => '0'
    );
\tx_fifowren_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(2),
      O => \tx_fifowren_i_1__0_n_0\
    );
tx_fifowren_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \tx_fifowren_i_1__0_n_0\,
      Q => \^wr_cmd_fifowren_i\,
      R => rst_xsdbfifo_large_reg
    );
\xsdb_drdy_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \s_daddr_i_reg[4]\(0),
      I1 => \s_daddr_i_reg[4]\(1),
      I2 => s_dwe_i,
      I3 => \s_daddr_i_reg[4]\(3),
      I4 => s_den_i_reg,
      I5 => \s_daddr_i_reg[4]\(2),
      O => sel
    );
xsdb_drdy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => sel,
      Q => \sl_oport_o[0]_INST_0\,
      R => rst_xsdbfifo_large_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_bin_cntr is
  port (
    \gc0.count_d1_reg[4]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[1]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    p_0_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \burst_count_reg[8]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[4]\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_bin_cntr : entity is "rd_bin_cntr";
end jtag_axi_0_rd_bin_cntr;

architecture STRUCTURE of jtag_axi_0_rd_bin_cntr is
  signal \gc0.count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[1]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[2]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[4]_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_empty_i_i_7__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_8__0_n_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gc0.count[6]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \ram_empty_i_i_8__0\ : label is "soft_lutpair43";
begin
  \gc0.count_d1_reg[1]_0\ <= \^gc0.count_d1_reg[1]_0\;
  \gc0.count_d1_reg[2]_0\ <= \^gc0.count_d1_reg[2]_0\;
  \gc0.count_d1_reg[3]_0\ <= \^gc0.count_d1_reg[3]_0\;
  \gc0.count_d1_reg[4]_0\ <= \^gc0.count_d1_reg[4]_0\;
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => \^gc0.count_d1_reg[1]_0\,
      O => plusOp(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^gc0.count_d1_reg[1]_0\,
      I1 => rd_pntr_plus1(0),
      I2 => \^gc0.count_d1_reg[2]_0\,
      O => plusOp(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gc0.count_d1_reg[2]_0\,
      I1 => rd_pntr_plus1(0),
      I2 => \^gc0.count_d1_reg[1]_0\,
      I3 => \^gc0.count_d1_reg[3]_0\,
      O => plusOp(3)
    );
\gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\,
      I1 => \^gc0.count_d1_reg[1]_0\,
      I2 => rd_pntr_plus1(0),
      I3 => \^gc0.count_d1_reg[2]_0\,
      I4 => \^gc0.count_d1_reg[4]_0\,
      O => plusOp(4)
    );
\gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[4]_0\,
      I1 => \^gc0.count_d1_reg[2]_0\,
      I2 => rd_pntr_plus1(0),
      I3 => \^gc0.count_d1_reg[1]_0\,
      I4 => \^gc0.count_d1_reg[3]_0\,
      I5 => rd_pntr_plus1(5),
      O => plusOp(5)
    );
\gc0.count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gc0.count[7]_i_2__0_n_0\,
      I1 => \^gc0.count_d1_reg[4]_0\,
      I2 => rd_pntr_plus1(5),
      I3 => rd_pntr_plus1(6),
      O => plusOp(6)
    );
\gc0.count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gc0.count[7]_i_2__0_n_0\,
      I1 => rd_pntr_plus1(6),
      I2 => rd_pntr_plus1(5),
      I3 => \^gc0.count_d1_reg[4]_0\,
      I4 => rd_pntr_plus1(7),
      O => plusOp(7)
    );
\gc0.count[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[2]_0\,
      I1 => rd_pntr_plus1(0),
      I2 => \^gc0.count_d1_reg[1]_0\,
      I3 => \^gc0.count_d1_reg[3]_0\,
      O => \gc0.count[7]_i_2__0_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => rd_pntr_plus1(0),
      Q => p_0_out_0(0),
      R => '0'
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => \^gc0.count_d1_reg[1]_0\,
      Q => p_0_out_0(1),
      R => '0'
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => \^gc0.count_d1_reg[2]_0\,
      Q => p_0_out_0(2),
      R => '0'
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => \^gc0.count_d1_reg[3]_0\,
      Q => p_0_out_0(3),
      R => '0'
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => \^gc0.count_d1_reg[4]_0\,
      Q => p_0_out_0(4),
      R => '0'
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => rd_pntr_plus1(5),
      Q => p_0_out_0(5),
      R => '0'
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => rd_pntr_plus1(6),
      Q => p_0_out_0(6),
      R => '0'
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => rd_pntr_plus1(7),
      Q => p_0_out_0(7),
      R => '0'
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(0),
      Q => rd_pntr_plus1(0),
      R => '0'
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(1),
      Q => \^gc0.count_d1_reg[1]_0\,
      R => '0'
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(2),
      Q => \^gc0.count_d1_reg[2]_0\,
      R => '0'
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(3),
      Q => \^gc0.count_d1_reg[3]_0\,
      R => '0'
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(4),
      Q => \^gc0.count_d1_reg[4]_0\,
      R => '0'
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(5),
      Q => rd_pntr_plus1(5),
      R => '0'
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(6),
      Q => rd_pntr_plus1(6),
      R => '0'
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\,
      D => plusOp(7),
      Q => rd_pntr_plus1(7),
      R => '0'
    );
\ram_empty_i_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000000000000000"
    )
        port map (
      I0 => \burst_count_reg[8]\,
      I1 => \out\(0),
      I2 => \ram_empty_i_i_7__0_n_0\,
      I3 => \ram_empty_i_i_8__0_n_0\,
      I4 => \dest_out_bin_ff_reg[4]\,
      I5 => \dest_out_bin_ff_reg[2]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(5),
      I1 => WR_PNTR_RD(1),
      I2 => rd_pntr_plus1(7),
      I3 => WR_PNTR_RD(3),
      I4 => WR_PNTR_RD(2),
      I5 => rd_pntr_plus1(6),
      O => \ram_empty_i_i_7__0_n_0\
    );
\ram_empty_i_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => rd_pntr_plus1(0),
      I2 => ram_empty_fb_i_reg,
      O => \ram_empty_i_i_8__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_bin_cntr_9 is
  port (
    \gc0.count_d1_reg[4]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[0]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[1]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[3]_0\ : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_8_out : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_bin_cntr_9 : entity is "rd_bin_cntr";
end jtag_axi_0_rd_bin_cntr_9;

architecture STRUCTURE of jtag_axi_0_rd_bin_cntr_9 is
  signal \gc0.count[7]_i_2_n_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[0]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[1]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[2]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[3]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[4]_0\ : STD_LOGIC;
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gc0.count[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_2\ : label is "soft_lutpair27";
begin
  \gc0.count_d1_reg[0]_0\ <= \^gc0.count_d1_reg[0]_0\;
  \gc0.count_d1_reg[1]_0\ <= \^gc0.count_d1_reg[1]_0\;
  \gc0.count_d1_reg[2]_0\ <= \^gc0.count_d1_reg[2]_0\;
  \gc0.count_d1_reg[3]_0\ <= \^gc0.count_d1_reg[3]_0\;
  \gc0.count_d1_reg[4]_0\ <= \^gc0.count_d1_reg[4]_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gc0.count_d1_reg[0]_0\,
      O => \plusOp__4\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gc0.count_d1_reg[0]_0\,
      I1 => \^gc0.count_d1_reg[1]_0\,
      O => \plusOp__4\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^gc0.count_d1_reg[1]_0\,
      I1 => \^gc0.count_d1_reg[0]_0\,
      I2 => \^gc0.count_d1_reg[2]_0\,
      O => \plusOp__4\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gc0.count_d1_reg[2]_0\,
      I1 => \^gc0.count_d1_reg[0]_0\,
      I2 => \^gc0.count_d1_reg[1]_0\,
      I3 => \^gc0.count_d1_reg[3]_0\,
      O => \plusOp__4\(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[3]_0\,
      I1 => \^gc0.count_d1_reg[1]_0\,
      I2 => \^gc0.count_d1_reg[0]_0\,
      I3 => \^gc0.count_d1_reg[2]_0\,
      I4 => \^gc0.count_d1_reg[4]_0\,
      O => \plusOp__4\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[4]_0\,
      I1 => \^gc0.count_d1_reg[2]_0\,
      I2 => \^gc0.count_d1_reg[0]_0\,
      I3 => \^gc0.count_d1_reg[1]_0\,
      I4 => \^gc0.count_d1_reg[3]_0\,
      I5 => rd_pntr_plus1(5),
      O => \plusOp__4\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gc0.count[7]_i_2_n_0\,
      I1 => \^gc0.count_d1_reg[4]_0\,
      I2 => rd_pntr_plus1(5),
      I3 => rd_pntr_plus1(6),
      O => \plusOp__4\(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gc0.count[7]_i_2_n_0\,
      I1 => rd_pntr_plus1(6),
      I2 => rd_pntr_plus1(5),
      I3 => \^gc0.count_d1_reg[4]_0\,
      I4 => rd_pntr_plus1(7),
      O => \plusOp__4\(7)
    );
\gc0.count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^gc0.count_d1_reg[2]_0\,
      I1 => \^gc0.count_d1_reg[0]_0\,
      I2 => \^gc0.count_d1_reg[1]_0\,
      I3 => \^gc0.count_d1_reg[3]_0\,
      O => \gc0.count[7]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \^gc0.count_d1_reg[0]_0\,
      Q => RD_PNTR(0),
      R => '0'
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \^gc0.count_d1_reg[1]_0\,
      Q => RD_PNTR(1),
      R => '0'
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \^gc0.count_d1_reg[2]_0\,
      Q => RD_PNTR(2),
      R => '0'
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \^gc0.count_d1_reg[3]_0\,
      Q => RD_PNTR(3),
      R => '0'
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \^gc0.count_d1_reg[4]_0\,
      Q => RD_PNTR(4),
      R => '0'
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => rd_pntr_plus1(5),
      Q => RD_PNTR(5),
      R => '0'
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => rd_pntr_plus1(6),
      Q => RD_PNTR(6),
      R => '0'
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => rd_pntr_plus1(7),
      Q => RD_PNTR(7),
      R => '0'
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(0),
      Q => \^gc0.count_d1_reg[0]_0\,
      R => '0'
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(1),
      Q => \^gc0.count_d1_reg[1]_0\,
      R => '0'
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(2),
      Q => \^gc0.count_d1_reg[2]_0\,
      R => '0'
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(3),
      Q => \^gc0.count_d1_reg[3]_0\,
      R => '0'
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(4),
      Q => \^gc0.count_d1_reg[4]_0\,
      R => '0'
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(5),
      Q => rd_pntr_plus1(5),
      R => '0'
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(6),
      Q => rd_pntr_plus1(6),
      R => '0'
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_8_out,
      D => \plusOp__4\(7),
      Q => rd_pntr_plus1(7),
      R => '0'
    );
ram_empty_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(5),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus1(7),
      I3 => WR_PNTR_RD(2),
      I4 => WR_PNTR_RD(1),
      I5 => rd_pntr_plus1(6),
      O => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_bin_cntr__parameterized0\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \jtag_axi_0_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_rd_bin_cntr__parameterized0\ is
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_4__1_n_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[0]_i_1__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \ram_empty_i_i_3__0\ : label is "soft_lutpair95";
begin
\gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__1\(0)
    );
\gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__1\(1)
    );
\gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      O => \plusOp__1\(2)
    );
\gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => \plusOp__1\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(0),
      Q => RD_PNTR(0),
      R => '0'
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(1),
      Q => RD_PNTR(1),
      R => '0'
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(2),
      Q => RD_PNTR(2),
      R => '0'
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(3),
      Q => RD_PNTR(3),
      R => '0'
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__1\(0),
      Q => rd_pntr_plus1(0),
      R => '0'
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__1\(1),
      Q => rd_pntr_plus1(1),
      R => '0'
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__1\(2),
      Q => rd_pntr_plus1(2),
      R => '0'
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__1\(3),
      Q => rd_pntr_plus1(3),
      R => '0'
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000000"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => rd_pntr_plus1(0),
      I2 => \out\,
      I3 => \ram_empty_i_i_4__1_n_0\,
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => WR_PNTR_RD(1),
      I2 => rd_pntr_plus1(3),
      I3 => WR_PNTR_RD(3),
      I4 => WR_PNTR_RD(2),
      I5 => rd_pntr_plus1(2),
      O => \ram_empty_i_i_4__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_bin_cntr__parameterized0_23\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_bin_cntr__parameterized0_23\ : entity is "rd_bin_cntr";
end \jtag_axi_0_rd_bin_cntr__parameterized0_23\;

architecture STRUCTURE of \jtag_axi_0_rd_bin_cntr__parameterized0_23\ is
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_4__2_n_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[0]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ram_empty_i_i_3__1\ : label is "soft_lutpair16";
begin
\gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__2\(0)
    );
\gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__2\(1)
    );
\gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      O => \plusOp__2\(2)
    );
\gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => \plusOp__2\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(0),
      Q => RD_PNTR(0),
      R => '0'
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(1),
      Q => RD_PNTR(1),
      R => '0'
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(2),
      Q => RD_PNTR(2),
      R => '0'
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => rd_pntr_plus1(3),
      Q => RD_PNTR(3),
      R => '0'
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__2\(0),
      Q => rd_pntr_plus1(0),
      R => '0'
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__2\(1),
      Q => rd_pntr_plus1(1),
      R => '0'
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__2\(2),
      Q => rd_pntr_plus1(2),
      R => '0'
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_8_out,
      D => \plusOp__2\(3),
      Q => rd_pntr_plus1(3),
      R => '0'
    );
\ram_empty_i_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000000"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => rd_pntr_plus1(0),
      I2 => \out\,
      I3 => \ram_empty_i_i_4__2_n_0\,
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => WR_PNTR_RD(1),
      I2 => rd_pntr_plus1(3),
      I3 => WR_PNTR_RD(3),
      I4 => WR_PNTR_RD(2),
      I5 => rd_pntr_plus1(2),
      O => \ram_empty_i_i_4__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_fwft is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    \wr_qid_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_fwft : entity is "rd_fwft";
end jtag_axi_0_rd_fwft;

architecture STRUCTURE of jtag_axi_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^cmd_valid_wr_ch\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  cmd_valid_wr_ch <= \^cmd_valid_wr_ch\;
  \out\ <= user_valid;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5155"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(0),
      I2 => wr_cmd_fifo_read_en,
      I3 => curr_fwft_state(1),
      I4 => ENB_dly_D,
      O => ENB_I
    );
\aempty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => wr_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_i,
      R => '0'
    );
cmd_valid_wr_ch_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F002F00FFD02F00"
    )
        port map (
      I0 => fifo_rst_ff3,
      I1 => fifo_rst_ff4,
      I2 => aresetn,
      I3 => cmd_valid_wr_ch_d,
      I4 => user_valid,
      I5 => wr_axi_en_exec_ff4,
      O => cmd_valid_wr_ch_d_reg
    );
\empty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => wr_cmd_fifo_read_en,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => wr_cmd_fifo_read_en,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      R => '0'
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => wr_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => p_8_out
    );
\goreg_bm.dout_i[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => wr_cmd_fifo_read_en,
      I2 => curr_fwft_state(1),
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => wr_cmd_fifo_read_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => wr_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => '0'
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => '0'
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => '0'
    );
\ram_empty_i_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => wr_cmd_fifo_read_en,
      I2 => curr_fwft_state(1),
      O => ram_empty_i_reg
    );
\s_axi_wr_resp[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0222200002222"
    )
        port map (
      I0 => \^cmd_valid_wr_ch\,
      I1 => cmd_valid_wr_ch_d,
      I2 => axi_wr_done,
      I3 => axi_wr_done_ff,
      I4 => wr_sts_flag_reg_0,
      I5 => axi_wr_resp(0),
      O => \s_axi_wr_resp_reg[0]\
    );
\wr_cmd_fifo_data_out[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => user_valid,
      I1 => wr_axi_en_exec_ff4,
      O => \^cmd_valid_wr_ch\
    );
\wr_qid[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => cmd_valid_wr_ch_d,
      I1 => user_valid,
      I2 => wr_axi_en_exec_ff4,
      I3 => wr_sts_flag_reg_0,
      O => \wr_qid_reg[0]\(0)
    );
wr_sts_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F2222FFFF2222"
    )
        port map (
      I0 => \^cmd_valid_wr_ch\,
      I1 => cmd_valid_wr_ch_d,
      I2 => axi_wr_done,
      I3 => axi_wr_done_ff,
      I4 => wr_sts_flag_reg_0,
      I5 => axi_wr_resp(0),
      O => wr_sts_flag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_fwft_2 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_fwft_2 : entity is "rd_fwft";
end jtag_axi_0_rd_fwft_2;

architecture STRUCTURE of jtag_axi_0_rd_fwft_2 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEBEBEB80000000"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => Q(0),
      I4 => m_axi_wready,
      I5 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_i,
      R => '0'
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA2222"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_wready,
      I3 => Q(0),
      I4 => curr_fwft_state(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA2222"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => m_axi_wready,
      I3 => Q(0),
      I4 => curr_fwft_state(0),
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      R => '0'
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D5FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => Q(0),
      I3 => curr_fwft_state(0),
      I4 => ram_empty_fb_i_reg,
      O => \gc0.count_reg[0]\
    );
\goreg_dm.dout_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => Q(0),
      I2 => m_axi_wready,
      I3 => curr_fwft_state(1),
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => m_axi_wready,
      I1 => Q(0),
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7000FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => '0'
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => '0'
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_fwft_21 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    \rd_qid_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_fwft_21 : entity is "rd_fwft";
end jtag_axi_0_rd_fwft_21;

architecture STRUCTURE of jtag_axi_0_rd_fwft_21 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\ <= user_valid;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5155"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(0),
      I2 => rd_cmd_fifo_read_en,
      I3 => curr_fwft_state(1),
      I4 => ENB_dly_D,
      O => ENB_I
    );
\aempty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => rd_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_i,
      R => '0'
    );
cmd_valid_rd_ch_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => user_valid,
      I1 => rd_axi_en_exec_ff4,
      O => \rd_cmd_fifo_data_out_reg[0]\(0)
    );
\empty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_cmd_fifo_read_en,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_cmd_fifo_read_en,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      R => '0'
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => p_8_out
    );
\goreg_bm.dout_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_cmd_fifo_read_en,
      I2 => curr_fwft_state(1),
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_cmd_fifo_read_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_cmd_fifo_read_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => '0'
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => '0'
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => '0'
    );
\ram_empty_i_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_cmd_fifo_read_en,
      I2 => curr_fwft_state(1),
      O => ram_empty_i_reg
    );
rd_sts_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD0000DDDD00F0"
    )
        port map (
      I0 => \axi_rd_resp_reg[1]\(0),
      I1 => axi_rd_txn_err,
      I2 => user_valid,
      I3 => rd_axi_en_exec_ff4,
      I4 => rd_sts_flag_reg_0,
      I5 => cmd_valid_rd_ch_d,
      O => rd_sts_flag_reg
    );
\s_axi_rd_resp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => cmd_valid_rd_ch_d,
      I1 => user_valid,
      I2 => rd_axi_en_exec_ff4,
      I3 => rd_sts_flag_reg_0,
      O => \rd_qid_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_fwft_7 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    \s_daddr_i_reg[4]_0\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    \s_daddr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_fwft_7 : entity is "rd_fwft";
end jtag_axi_0_rd_fwft_7;

architecture STRUCTURE of jtag_axi_0_rd_fwft_7 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^p_8_out\ : STD_LOGIC;
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
  p_8_out <= \^p_8_out\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^p_8_out\,
      I1 => ENB_dly_D,
      O => ENB_I
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFBB0800"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(1),
      I2 => \s_daddr_i_reg[4]\,
      I3 => curr_fwft_state(0),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => aempty_fwft_i0,
      Q => aempty_fwft_i,
      R => '0'
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2B2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \s_daddr_i_reg[4]\,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2B2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \s_daddr_i_reg[4]\,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      R => '0'
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => empty_fwft_i0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D555FFFF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \s_daddr_i_reg[4]_0\,
      I2 => \count_reg[2]\,
      I3 => \s_daddr_i_reg[2]\,
      I4 => curr_fwft_state(0),
      I5 => ram_empty_fb_i_reg,
      O => \^p_8_out\
    );
\goreg_bm.dout_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SR(0),
      I1 => curr_fwft_state(1),
      I2 => \count_reg[0]\,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \s_daddr_i_reg[4]\,
      I2 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \s_daddr_i_reg[4]\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => '0'
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => '0'
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => '0'
    );
rx_fifo_rden_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(4),
      I4 => s_den_i,
      I5 => Q(0),
      O => rx_fifo_rden_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[6]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_status_flags_as : entity is "rd_status_flags_as";
end jtag_axi_0_rd_status_flags_as;

architecture STRUCTURE of jtag_axi_0_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[6]\,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[6]\,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_status_flags_as_8 is
  port (
    \out\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_dwe_i : in STD_LOGIC;
    s_den_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_status_flags_as_8 : entity is "rd_status_flags_as";
end jtag_axi_0_rd_status_flags_as_8;

architecture STRUCTURE of jtag_axi_0_rd_status_flags_as_8 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
\gc0.count_d1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => Q(6),
      I4 => s_dwe_i,
      I5 => Q(7),
      O => \gc0.count_d1_reg[7]\
    );
\gc0.count_d1[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_den_i,
      O => \gc0.count_d1_reg[7]_0\
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gpregsm1.curr_fwft_state_reg[1]\,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gpregsm1.curr_fwft_state_reg[1]\,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_status_flags_as__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_status_flags_as__parameterized0\ : entity is "rd_status_flags_as";
end \jtag_axi_0_rd_status_flags_as__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_rd_status_flags_as__parameterized0\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_status_flags_as__parameterized0_22\ is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_status_flags_as__parameterized0_22\ : entity is "rd_status_flags_as";
end \jtag_axi_0_rd_status_flags_as__parameterized0_22\;

architecture STRUCTURE of \jtag_axi_0_rd_status_flags_as__parameterized0_22\ is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_bin_cntr is
  port (
    ram_full_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC;
    \src_gray_ff_reg[6]\ : out STD_LOGIC;
    \src_gray_ff_reg[7]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    p_13_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC;
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_bin_cntr : entity is "wr_bin_cntr";
end jtag_axi_0_wr_bin_cntr;

architecture STRUCTURE of jtag_axi_0_wr_bin_cntr is
  signal \gic0.gc0.count[7]_i_2_n_0\ : STD_LOGIC;
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal \ram_full_i_i_3__1_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_4__1_n_0\ : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal ram_full_i_i_8_n_0 : STD_LOGIC;
  signal ram_full_i_i_9_n_0 : STD_LOGIC;
  signal \^src_gray_ff_reg[6]\ : STD_LOGIC;
  signal \^src_gray_ff_reg[7]\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gic0.gc0.count[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of ram_full_i_i_9 : label is "soft_lutpair47";
begin
  \src_gray_ff_reg[6]\ <= \^src_gray_ff_reg[6]\;
  \src_gray_ff_reg[7]\ <= \^src_gray_ff_reg[7]\;
RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \out\,
      I1 => tx_fifo_wr,
      I2 => \^src_gray_ff_reg[6]\,
      I3 => \^src_gray_ff_reg[7]\,
      O => \gpr1.dout_i_reg[31]\
    );
RAM_reg_128_191_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^src_gray_ff_reg[6]\,
      I1 => \^src_gray_ff_reg[7]\,
      I2 => tx_fifo_wr,
      I3 => \out\,
      O => \gpr1.dout_i_reg[31]_1\
    );
RAM_reg_192_255_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \out\,
      I1 => tx_fifo_wr,
      I2 => \^src_gray_ff_reg[6]\,
      I3 => \^src_gray_ff_reg[7]\,
      O => \gpr1.dout_i_reg[31]_2\
    );
RAM_reg_64_127_0_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^src_gray_ff_reg[7]\,
      I1 => \^src_gray_ff_reg[6]\,
      I2 => tx_fifo_wr,
      I3 => \out\,
      O => \gpr1.dout_i_reg[31]_0\
    );
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__3\(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__3\(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(2),
      O => \plusOp__3\(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(3),
      O => \plusOp__3\(3)
    );
\gic0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(2),
      I4 => wr_pntr_plus2(4),
      O => \plusOp__3\(4)
    );
\gic0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus2(4),
      I1 => wr_pntr_plus2(2),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => wr_pntr_plus2(3),
      I5 => wr_pntr_plus2(5),
      O => \plusOp__3\(5)
    );
\gic0.gc0.count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gic0.gc0.count[7]_i_2_n_0\,
      I1 => wr_pntr_plus2(4),
      I2 => wr_pntr_plus2(5),
      I3 => wr_pntr_plus2(6),
      O => \plusOp__3\(6)
    );
\gic0.gc0.count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gic0.gc0.count[7]_i_2_n_0\,
      I1 => wr_pntr_plus2(6),
      I2 => wr_pntr_plus2(5),
      I3 => wr_pntr_plus2(4),
      I4 => wr_pntr_plus2(7),
      O => \plusOp__3\(7)
    );
\gic0.gc0.count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(3),
      O => \gic0.gc0.count[7]_i_2_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      R => '0'
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => '0'
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => '0'
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => '0'
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(4),
      Q => p_14_out(4),
      R => '0'
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(5),
      Q => p_14_out(5),
      R => '0'
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(6),
      Q => p_14_out(6),
      R => '0'
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => wr_pntr_plus2(7),
      Q => p_14_out(7),
      R => '0'
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(0),
      Q => p_13_out(0),
      R => '0'
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(1),
      Q => p_13_out(1),
      R => '0'
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(2),
      Q => p_13_out(2),
      R => '0'
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(3),
      Q => p_13_out(3),
      R => '0'
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(4),
      Q => p_13_out(4),
      R => '0'
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(5),
      Q => p_13_out(5),
      R => '0'
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(6),
      Q => \^src_gray_ff_reg[6]\,
      R => '0'
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => p_14_out(7),
      Q => \^src_gray_ff_reg[7]\,
      R => '0'
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(0),
      Q => wr_pntr_plus2(0),
      R => '0'
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(1),
      Q => wr_pntr_plus2(1),
      R => '0'
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(2),
      Q => wr_pntr_plus2(2),
      R => '0'
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(3),
      Q => wr_pntr_plus2(3),
      R => '0'
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(4),
      Q => wr_pntr_plus2(4),
      R => '0'
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(5),
      Q => wr_pntr_plus2(5),
      R => '0'
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(6),
      Q => wr_pntr_plus2(6),
      R => '0'
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => tx_fifowren_reg,
      D => \plusOp__3\(7),
      Q => wr_pntr_plus2(7),
      R => '0'
    );
\ram_full_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => \ram_full_i_i_3__1_n_0\,
      I2 => \ram_full_i_i_4__1_n_0\,
      I3 => ram_full_i_i_5_n_0,
      O => ram_full_i_reg
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ram_full_i_i_6_n_0,
      I1 => p_14_out(5),
      I2 => RD_PNTR_WR(5),
      I3 => p_14_out(4),
      I4 => RD_PNTR_WR(4),
      I5 => ram_full_i_i_7_n_0,
      O => ram_full_i_i_2_n_0
    );
\ram_full_i_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(6),
      I1 => RD_PNTR_WR(6),
      I2 => p_14_out(7),
      I3 => RD_PNTR_WR(7),
      O => \ram_full_i_i_3__1_n_0\
    );
\ram_full_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ram_full_i_i_8_n_0,
      I1 => wr_pntr_plus2(5),
      I2 => RD_PNTR_WR(5),
      I3 => wr_pntr_plus2(4),
      I4 => RD_PNTR_WR(4),
      I5 => ram_full_i_i_9_n_0,
      O => \ram_full_i_i_4__1_n_0\
    );
ram_full_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => \out\,
      I1 => tx_fifo_wr,
      I2 => RD_PNTR_WR(7),
      I3 => wr_pntr_plus2(7),
      I4 => RD_PNTR_WR(6),
      I5 => wr_pntr_plus2(6),
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(3),
      I1 => RD_PNTR_WR(3),
      I2 => p_14_out(2),
      I3 => RD_PNTR_WR(2),
      O => ram_full_i_i_6_n_0
    );
ram_full_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(1),
      I1 => RD_PNTR_WR(1),
      I2 => p_14_out(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_i_i_7_n_0
    );
ram_full_i_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => RD_PNTR_WR(3),
      I2 => wr_pntr_plus2(2),
      I3 => RD_PNTR_WR(2),
      O => ram_full_i_i_8_n_0
    );
ram_full_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => RD_PNTR_WR(1),
      I2 => wr_pntr_plus2(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_i_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_bin_cntr_6 is
  port (
    ram_full_i_reg : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_20_out : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_bin_cntr_6 : entity is "wr_bin_cntr";
end jtag_axi_0_wr_bin_cntr_6;

architecture STRUCTURE of jtag_axi_0_wr_bin_cntr_6 is
  signal \gic0.gc0.count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_full_i_i_2__2_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_3__2_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_4__2_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_5__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_6__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_7__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_8__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_9__0_n_0\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[1]_i_1__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gic0.gc0.count[6]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_2__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ram_full_i_i_9__0\ : label is "soft_lutpair32";
begin
\gic0.gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gic0.gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gic0.gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gic0.gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gic0.gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(2),
      I4 => wr_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gic0.gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus2(4),
      I1 => wr_pntr_plus2(2),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => wr_pntr_plus2(3),
      I5 => wr_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gic0.gc0.count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \gic0.gc0.count[7]_i_2__0_n_0\,
      I1 => wr_pntr_plus2(4),
      I2 => wr_pntr_plus2(5),
      I3 => wr_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gic0.gc0.count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \gic0.gc0.count[7]_i_2__0_n_0\,
      I1 => wr_pntr_plus2(6),
      I2 => wr_pntr_plus2(5),
      I3 => wr_pntr_plus2(4),
      I4 => wr_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gic0.gc0.count[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wr_pntr_plus2(2),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => wr_pntr_plus2(3),
      O => \gic0.gc0.count[7]_i_2__0_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      R => '0'
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => '0'
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => '0'
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => '0'
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(4),
      Q => p_14_out(4),
      R => '0'
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(5),
      Q => p_14_out(5),
      R => '0'
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(6),
      Q => p_14_out(6),
      R => '0'
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => wr_pntr_plus2(7),
      Q => p_14_out(7),
      R => '0'
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(0),
      Q => WR_PNTR(0),
      R => '0'
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(1),
      Q => WR_PNTR(1),
      R => '0'
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(2),
      Q => WR_PNTR(2),
      R => '0'
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(3),
      Q => WR_PNTR(3),
      R => '0'
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(4),
      Q => WR_PNTR(4),
      R => '0'
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(5),
      Q => WR_PNTR(5),
      R => '0'
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(6),
      Q => WR_PNTR(6),
      R => '0'
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => p_14_out(7),
      Q => WR_PNTR(7),
      R => '0'
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(0),
      Q => wr_pntr_plus2(0),
      R => '0'
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(1),
      Q => wr_pntr_plus2(1),
      R => '0'
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(2),
      Q => wr_pntr_plus2(2),
      R => '0'
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(3),
      Q => wr_pntr_plus2(3),
      R => '0'
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(4),
      Q => wr_pntr_plus2(4),
      R => '0'
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(5),
      Q => wr_pntr_plus2(5),
      R => '0'
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(6),
      Q => wr_pntr_plus2(6),
      R => '0'
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_20_out,
      D => \plusOp__0\(7),
      Q => wr_pntr_plus2(7),
      R => '0'
    );
\ram_full_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_full_i_i_2__2_n_0\,
      I1 => \ram_full_i_i_3__2_n_0\,
      I2 => \ram_full_i_i_4__2_n_0\,
      I3 => \ram_full_i_i_5__0_n_0\,
      O => ram_full_i_reg
    );
\ram_full_i_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => \ram_full_i_i_6__0_n_0\,
      I1 => p_14_out(5),
      I2 => RD_PNTR_WR(5),
      I3 => p_14_out(4),
      I4 => RD_PNTR_WR(4),
      I5 => \ram_full_i_i_7__0_n_0\,
      O => \ram_full_i_i_2__2_n_0\
    );
\ram_full_i_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(6),
      I1 => RD_PNTR_WR(6),
      I2 => p_14_out(7),
      I3 => RD_PNTR_WR(7),
      O => \ram_full_i_i_3__2_n_0\
    );
\ram_full_i_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => \ram_full_i_i_8__0_n_0\,
      I1 => wr_pntr_plus2(5),
      I2 => RD_PNTR_WR(5),
      I3 => wr_pntr_plus2(4),
      I4 => RD_PNTR_WR(4),
      I5 => \ram_full_i_i_9__0_n_0\,
      O => \ram_full_i_i_4__2_n_0\
    );
\ram_full_i_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => ram_full_fb_i_reg,
      I1 => rx_fifo_wr_en,
      I2 => RD_PNTR_WR(7),
      I3 => wr_pntr_plus2(7),
      I4 => RD_PNTR_WR(6),
      I5 => wr_pntr_plus2(6),
      O => \ram_full_i_i_5__0_n_0\
    );
\ram_full_i_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(3),
      I1 => RD_PNTR_WR(3),
      I2 => p_14_out(2),
      I3 => RD_PNTR_WR(2),
      O => \ram_full_i_i_6__0_n_0\
    );
\ram_full_i_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(1),
      I1 => RD_PNTR_WR(1),
      I2 => p_14_out(0),
      I3 => RD_PNTR_WR(0),
      O => \ram_full_i_i_7__0_n_0\
    );
\ram_full_i_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(3),
      I1 => RD_PNTR_WR(3),
      I2 => wr_pntr_plus2(2),
      I3 => RD_PNTR_WR(2),
      O => \ram_full_i_i_8__0_n_0\
    );
\ram_full_i_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => RD_PNTR_WR(1),
      I2 => wr_pntr_plus2(0),
      I3 => RD_PNTR_WR(0),
      O => \ram_full_i_i_9__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_bin_cntr__parameterized0\ is
  port (
    ram_full_i_reg : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    p_20_out : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \jtag_axi_0_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_wr_bin_cntr__parameterized0\ is
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_2__0_n_0\ : STD_LOGIC;
  signal ram_full_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[1]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of ram_full_i_i_3 : label is "soft_lutpair97";
begin
\gic0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__5\(0)
    );
\gic0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__5\(1)
    );
\gic0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(2),
      O => \plusOp__5\(2)
    );
\gic0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(2),
      I3 => wr_pntr_plus2(3),
      O => \plusOp__5\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      R => '0'
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => '0'
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => '0'
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => '0'
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(0),
      Q => WR_PNTR(0),
      R => '0'
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(1),
      Q => WR_PNTR(1),
      R => '0'
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(2),
      Q => WR_PNTR(2),
      R => '0'
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(3),
      Q => WR_PNTR(3),
      R => '0'
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__5\(0),
      Q => wr_pntr_plus2(0),
      R => '0'
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__5\(1),
      Q => wr_pntr_plus2(1),
      R => '0'
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__5\(2),
      Q => wr_pntr_plus2(2),
      R => '0'
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__5\(3),
      Q => wr_pntr_plus2(3),
      R => '0'
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_full_i_i_2__0_n_0\,
      I1 => p_14_out(2),
      I2 => RD_PNTR_WR(2),
      I3 => p_14_out(3),
      I4 => RD_PNTR_WR(3),
      I5 => ram_full_i_i_3_n_0,
      O => ram_full_i_reg
    );
\ram_full_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(1),
      I1 => RD_PNTR_WR(1),
      I2 => p_14_out(0),
      I3 => RD_PNTR_WR(0),
      O => \ram_full_i_i_2__0_n_0\
    );
ram_full_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => ram_full_i_i_4_n_0,
      I1 => RD_PNTR_WR(0),
      I2 => wr_pntr_plus2(0),
      I3 => RD_PNTR_WR(1),
      I4 => wr_pntr_plus2(1),
      O => ram_full_i_i_3_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => ram_full_fb_i_reg,
      I1 => wr_cmd_fifowren_i,
      I2 => RD_PNTR_WR(3),
      I3 => wr_pntr_plus2(3),
      I4 => RD_PNTR_WR(2),
      I5 => wr_pntr_plus2(2),
      O => ram_full_i_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_bin_cntr__parameterized0_20\ is
  port (
    ram_full_i_reg : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    p_20_out : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_bin_cntr__parameterized0_20\ : entity is "wr_bin_cntr";
end \jtag_axi_0_wr_bin_cntr__parameterized0_20\;

architecture STRUCTURE of \jtag_axi_0_wr_bin_cntr__parameterized0_20\ is
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_full_i_i_2__1_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_3__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_4__0_n_0\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[1]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ram_full_i_i_3__0\ : label is "soft_lutpair18";
begin
\gic0.gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__6\(0)
    );
\gic0.gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__6\(1)
    );
\gic0.gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(2),
      O => \plusOp__6\(2)
    );
\gic0.gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(2),
      I3 => wr_pntr_plus2(3),
      O => \plusOp__6\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(0),
      Q => p_14_out(0),
      R => '0'
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(1),
      Q => p_14_out(1),
      R => '0'
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(2),
      Q => p_14_out(2),
      R => '0'
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => wr_pntr_plus2(3),
      Q => p_14_out(3),
      R => '0'
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(0),
      Q => WR_PNTR(0),
      R => '0'
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(1),
      Q => WR_PNTR(1),
      R => '0'
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(2),
      Q => WR_PNTR(2),
      R => '0'
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => p_14_out(3),
      Q => WR_PNTR(3),
      R => '0'
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__6\(0),
      Q => wr_pntr_plus2(0),
      R => '0'
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__6\(1),
      Q => wr_pntr_plus2(1),
      R => '0'
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__6\(2),
      Q => wr_pntr_plus2(2),
      R => '0'
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => p_20_out,
      D => \plusOp__6\(3),
      Q => wr_pntr_plus2(3),
      R => '0'
    );
\ram_full_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_full_i_i_2__1_n_0\,
      I1 => p_14_out(2),
      I2 => RD_PNTR_WR(2),
      I3 => p_14_out(3),
      I4 => RD_PNTR_WR(3),
      I5 => \ram_full_i_i_3__0_n_0\,
      O => ram_full_i_reg
    );
\ram_full_i_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_14_out(1),
      I1 => RD_PNTR_WR(1),
      I2 => p_14_out(0),
      I3 => RD_PNTR_WR(0),
      O => \ram_full_i_i_2__1_n_0\
    );
\ram_full_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \ram_full_i_i_4__0_n_0\,
      I1 => RD_PNTR_WR(0),
      I2 => wr_pntr_plus2(0),
      I3 => RD_PNTR_WR(1),
      I4 => wr_pntr_plus2(1),
      O => \ram_full_i_i_3__0_n_0\
    );
\ram_full_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => ram_full_fb_i_reg,
      I1 => rd_cmd_fifowren_i,
      I2 => RD_PNTR_WR(3),
      I3 => wr_pntr_plus2(3),
      I4 => RD_PNTR_WR(2),
      I5 => wr_pntr_plus2(2),
      O => \ram_full_i_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[5]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_status_flags_as : entity is "wr_status_flags_as";
end jtag_axi_0_wr_status_flags_as;

architecture STRUCTURE of jtag_axi_0_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[5]\,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[5]\,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_status_flags_as_5 is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[5]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_status_flags_as_5 : entity is "wr_status_flags_as";
end jtag_axi_0_wr_status_flags_as_5;

architecture STRUCTURE of jtag_axi_0_wr_status_flags_as_5 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => rx_fifo_wr_en,
      I2 => ENB_dly_D_0,
      O => ENA_I
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[5]\,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[5]\,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_status_flags_as__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_status_flags_as__parameterized0\ : entity is "wr_status_flags_as";
end \jtag_axi_0_wr_status_flags_as__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_wr_status_flags_as__parameterized0\ is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => wr_cmd_fifowren_i,
      I2 => ENB_dly_D_0,
      O => ENA_I
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[2]\,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[2]\,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_status_flags_as__parameterized0_19\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_status_flags_as__parameterized0_19\ : entity is "wr_status_flags_as";
end \jtag_axi_0_wr_status_flags_as__parameterized0_19\;

architecture STRUCTURE of \jtag_axi_0_wr_status_flags_as__parameterized0_19\ is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => rd_cmd_fifowren_i,
      I2 => ENB_dly_D_0,
      O => ENA_I
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[2]\,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[2]\,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_xsdbs_v1_0_2_xsdbs is
  port (
    s_rst_o : out STD_LOGIC;
    s_dclk_o : out STD_LOGIC;
    s_den_o : out STD_LOGIC;
    s_dwe_o : out STD_LOGIC;
    s_daddr_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_di_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sl_oport_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_do_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sl_iport_i : in STD_LOGIC_VECTOR ( 36 downto 0 );
    s_drdy_i : in STD_LOGIC
  );
  attribute C_BUILD_REVISION : integer;
  attribute C_BUILD_REVISION of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 0;
  attribute C_CORE_INFO1 : string;
  attribute C_CORE_INFO1 of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_INFO2 : string;
  attribute C_CORE_INFO2 of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_MAJOR_VER : integer;
  attribute C_CORE_MAJOR_VER of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 1;
  attribute C_CORE_MINOR_VER : integer;
  attribute C_CORE_MINOR_VER of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 2;
  attribute C_CORE_TYPE : integer;
  attribute C_CORE_TYPE of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 7;
  attribute C_CSE_DRV_VER : integer;
  attribute C_CSE_DRV_VER of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 1;
  attribute C_MAJOR_VERSION : integer;
  attribute C_MAJOR_VERSION of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 2016;
  attribute C_MINOR_VERSION : integer;
  attribute C_MINOR_VERSION of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 3;
  attribute C_NEXT_SLAVE : integer;
  attribute C_NEXT_SLAVE of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 0;
  attribute C_PIPE_IFACE : integer;
  attribute C_PIPE_IFACE of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 0;
  attribute C_USE_TEST_REG : integer;
  attribute C_USE_TEST_REG of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "artix7";
  attribute C_XSDB_SLAVE_TYPE : string;
  attribute C_XSDB_SLAVE_TYPE of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "16'b0000000001110001";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "xsdbs_v1_0_2_xsdbs";
  attribute dont_touch : string;
  attribute dont_touch of jtag_axi_0_xsdbs_v1_0_2_xsdbs : entity is "true";
end jtag_axi_0_xsdbs_v1_0_2_xsdbs;

architecture STRUCTURE of jtag_axi_0_xsdbs_v1_0_2_xsdbs is
  signal reg_do : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_do[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[10]_i_5_n_0\ : STD_LOGIC;
  signal \reg_do[11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_do[15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_do[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[6]_i_5_n_0\ : STD_LOGIC;
  signal \reg_do[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do[8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_do[9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_do[9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_do[9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_do_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_drdy : STD_LOGIC;
  signal reg_drdy_i_1_n_0 : STD_LOGIC;
  signal reg_test : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_test0 : STD_LOGIC;
  signal s_den_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^sl_iport_i\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal uuid_stamp : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of uuid_stamp : signal is std.standard.true;
  attribute UUID : string;
  attribute UUID of uuid_stamp : signal is "1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_do[10]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_do[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_do[15]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_do[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sl_oport_o[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sl_oport_o[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sl_oport_o[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sl_oport_o[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sl_oport_o[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sl_oport_o[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sl_oport_o[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sl_oport_o[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sl_oport_o[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sl_oport_o[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sl_oport_o[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sl_oport_o[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sl_oport_o[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sl_oport_o[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sl_oport_o[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sl_oport_o[9]_INST_0\ : label is "soft_lutpair9";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \uuid_stamp_reg[0]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[0]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[100]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[100]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[100]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[101]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[101]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[101]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[102]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[102]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[102]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[103]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[103]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[103]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[104]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[104]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[104]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[105]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[105]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[105]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[106]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[106]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[106]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[107]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[107]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[107]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[108]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[108]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[108]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[109]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[109]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[109]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[10]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[10]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[10]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[110]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[110]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[110]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[111]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[111]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[111]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[112]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[112]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[112]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[113]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[113]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[113]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[114]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[114]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[114]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[115]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[115]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[115]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[116]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[116]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[116]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[117]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[117]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[117]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[118]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[118]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[118]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[119]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[119]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[119]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[11]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[11]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[11]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[120]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[120]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[120]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[121]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[121]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[121]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[122]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[122]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[122]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[123]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[123]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[123]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[124]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[124]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[124]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[125]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[125]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[125]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[126]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[126]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[126]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[127]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[127]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[127]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[12]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[12]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[12]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[13]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[13]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[13]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[14]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[14]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[14]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[15]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[15]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[15]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[16]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[16]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[16]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[17]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[17]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[17]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[18]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[18]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[18]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[19]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[19]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[19]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[1]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[1]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[1]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[20]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[20]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[20]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[21]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[21]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[21]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[22]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[22]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[22]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[23]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[23]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[23]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[24]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[24]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[24]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[25]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[25]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[25]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[26]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[26]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[26]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[27]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[27]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[27]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[28]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[28]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[28]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[29]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[29]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[29]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[2]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[2]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[2]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[30]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[30]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[30]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[31]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[31]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[31]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[32]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[32]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[32]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[33]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[33]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[33]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[34]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[34]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[34]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[35]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[35]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[35]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[36]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[36]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[36]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[37]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[37]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[37]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[38]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[38]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[38]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[39]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[39]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[39]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[3]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[3]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[3]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[40]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[40]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[40]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[41]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[41]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[41]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[42]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[42]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[42]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[43]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[43]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[43]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[44]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[44]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[44]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[45]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[45]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[45]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[46]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[46]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[46]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[47]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[47]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[47]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[48]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[48]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[48]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[49]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[49]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[49]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[4]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[4]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[4]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[50]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[50]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[50]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[51]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[51]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[51]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[52]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[52]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[52]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[53]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[53]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[53]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[54]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[54]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[54]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[55]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[55]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[55]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[56]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[56]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[56]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[57]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[57]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[57]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[58]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[58]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[58]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[59]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[59]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[59]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[5]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[5]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[5]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[60]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[60]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[60]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[61]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[61]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[61]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[62]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[62]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[62]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[63]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[63]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[63]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[64]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[64]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[64]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[65]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[65]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[65]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[66]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[66]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[66]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[67]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[67]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[67]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[68]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[68]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[68]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[69]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[69]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[69]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[6]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[6]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[6]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[70]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[70]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[70]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[71]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[71]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[71]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[72]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[72]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[72]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[73]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[73]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[73]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[74]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[74]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[74]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[75]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[75]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[75]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[76]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[76]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[76]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[77]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[77]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[77]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[78]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[78]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[78]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[79]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[79]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[79]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[7]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[7]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[7]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[80]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[80]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[80]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[81]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[81]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[81]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[82]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[82]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[82]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[83]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[83]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[83]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[84]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[84]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[84]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[85]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[85]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[85]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[86]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[86]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[86]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[87]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[87]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[87]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[88]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[88]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[88]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[89]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[89]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[89]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[8]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[8]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[8]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[90]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[90]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[90]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[91]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[91]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[91]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[92]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[92]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[92]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[93]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[93]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[93]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[94]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[94]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[94]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[95]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[95]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[95]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[96]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[96]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[96]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[97]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[97]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[97]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[98]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[98]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[98]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[99]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[99]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[99]\ : label is "1";
  attribute DONT_TOUCH_boolean of \uuid_stamp_reg[9]\ : label is std.standard.true;
  attribute KEEP of \uuid_stamp_reg[9]\ : label is "yes";
  attribute UUID of \uuid_stamp_reg[9]\ : label is "1";
begin
  \^sl_iport_i\(36 downto 0) <= sl_iport_i(36 downto 0);
  s_daddr_o(16 downto 0) <= \^sl_iport_i\(20 downto 4);
  s_dclk_o <= \^sl_iport_i\(1);
  s_di_o(15 downto 0) <= \^sl_iport_i\(36 downto 21);
  s_dwe_o <= \^sl_iport_i\(3);
  s_rst_o <= \^sl_iport_i\(0);
\reg_do[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A0A02AAAAAAAA"
    )
        port map (
      I0 => \reg_do[0]_i_2_n_0\,
      I1 => \^sl_iport_i\(5),
      I2 => \^sl_iport_i\(4),
      I3 => reg_test(0),
      I4 => \reg_do[8]_i_2_n_0\,
      I5 => \reg_do[10]_i_2_n_0\,
      O => reg_do(0)
    );
\reg_do[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \reg_do[6]_i_3_n_0\,
      I1 => \^sl_iport_i\(8),
      I2 => \^sl_iport_i\(7),
      I3 => \reg_do[0]_i_3_n_0\,
      I4 => \^sl_iport_i\(6),
      I5 => \reg_do[0]_i_4_n_0\,
      O => \reg_do[0]_i_2_n_0\
    );
\reg_do[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(48),
      I1 => uuid_stamp(32),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(16),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(0),
      O => \reg_do[0]_i_3_n_0\
    );
\reg_do[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(112),
      I1 => uuid_stamp(96),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(80),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(64),
      O => \reg_do[0]_i_4_n_0\
    );
\reg_do[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00808800"
    )
        port map (
      I0 => \^sl_iport_i\(6),
      I1 => \reg_do[10]_i_2_n_0\,
      I2 => reg_test(10),
      I3 => \^sl_iport_i\(4),
      I4 => \^sl_iport_i\(5),
      I5 => \reg_do[10]_i_3_n_0\,
      O => reg_do(10)
    );
\reg_do[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \^sl_iport_i\(11),
      I1 => \^sl_iport_i\(7),
      I2 => \^sl_iport_i\(8),
      I3 => \^sl_iport_i\(9),
      I4 => \^sl_iport_i\(10),
      O => \reg_do[10]_i_2_n_0\
    );
\reg_do[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFBAA08"
    )
        port map (
      I0 => \reg_do[10]_i_4_n_0\,
      I1 => \^sl_iport_i\(6),
      I2 => \^sl_iport_i\(7),
      I3 => \^sl_iport_i\(8),
      I4 => \reg_do[10]_i_5_n_0\,
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[10]_i_3_n_0\
    );
\reg_do[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(122),
      I1 => uuid_stamp(106),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(90),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(74),
      O => \reg_do[10]_i_4_n_0\
    );
\reg_do[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(58),
      I1 => uuid_stamp(42),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(26),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(10),
      O => \reg_do[10]_i_5_n_0\
    );
\reg_do[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \reg_do[15]_i_4_n_0\,
      I1 => \reg_do[11]_i_2_n_0\,
      I2 => \reg_do[15]_i_2_n_0\,
      I3 => \reg_do[11]_i_3_n_0\,
      I4 => \reg_do[15]_i_6_n_0\,
      I5 => reg_test(11),
      O => reg_do(11)
    );
\reg_do[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(59),
      I1 => uuid_stamp(43),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(27),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(11),
      O => \reg_do[11]_i_2_n_0\
    );
\reg_do[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(123),
      I1 => uuid_stamp(107),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(91),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(75),
      O => \reg_do[11]_i_3_n_0\
    );
\reg_do[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404FFFF54045404"
    )
        port map (
      I0 => \reg_do[15]_i_4_n_0\,
      I1 => \reg_do[12]_i_2_n_0\,
      I2 => \reg_do[15]_i_2_n_0\,
      I3 => \reg_do[12]_i_3_n_0\,
      I4 => \reg_do[15]_i_6_n_0\,
      I5 => reg_test(12),
      O => reg_do(12)
    );
\reg_do[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(124),
      I1 => uuid_stamp(108),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(92),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(76),
      O => \reg_do[12]_i_2_n_0\
    );
\reg_do[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(60),
      I1 => uuid_stamp(44),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(28),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(12),
      O => \reg_do[12]_i_3_n_0\
    );
\reg_do[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \reg_do[15]_i_4_n_0\,
      I1 => \reg_do[13]_i_2_n_0\,
      I2 => \reg_do[15]_i_2_n_0\,
      I3 => \reg_do[13]_i_3_n_0\,
      I4 => \reg_do[15]_i_6_n_0\,
      I5 => reg_test(13),
      O => reg_do(13)
    );
\reg_do[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(61),
      I1 => uuid_stamp(45),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(29),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(13),
      O => \reg_do[13]_i_2_n_0\
    );
\reg_do[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(125),
      I1 => uuid_stamp(109),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(93),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(77),
      O => \reg_do[13]_i_3_n_0\
    );
\reg_do[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => \reg_do[15]_i_4_n_0\,
      I1 => \reg_do[14]_i_2_n_0\,
      I2 => \reg_do[15]_i_2_n_0\,
      I3 => \reg_do[14]_i_3_n_0\,
      I4 => \reg_do[15]_i_6_n_0\,
      I5 => reg_test(14),
      O => reg_do(14)
    );
\reg_do[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(62),
      I1 => uuid_stamp(46),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(30),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(14),
      O => \reg_do[14]_i_2_n_0\
    );
\reg_do[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(126),
      I1 => uuid_stamp(110),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(94),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(78),
      O => \reg_do[14]_i_3_n_0\
    );
\reg_do[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B01FFFF0B010B01"
    )
        port map (
      I0 => \reg_do[15]_i_2_n_0\,
      I1 => \reg_do[15]_i_3_n_0\,
      I2 => \reg_do[15]_i_4_n_0\,
      I3 => \reg_do[15]_i_5_n_0\,
      I4 => \reg_do[15]_i_6_n_0\,
      I5 => reg_test(15),
      O => reg_do(15)
    );
\reg_do[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^sl_iport_i\(8),
      I1 => \^sl_iport_i\(7),
      I2 => \^sl_iport_i\(6),
      O => \reg_do[15]_i_2_n_0\
    );
\reg_do[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => uuid_stamp(127),
      I1 => uuid_stamp(111),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(95),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(79),
      O => \reg_do[15]_i_3_n_0\
    );
\reg_do[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^sl_iport_i\(7),
      I1 => \^sl_iport_i\(8),
      I2 => \^sl_iport_i\(9),
      I3 => \^sl_iport_i\(11),
      I4 => \^sl_iport_i\(10),
      O => \reg_do[15]_i_4_n_0\
    );
\reg_do[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(63),
      I1 => uuid_stamp(47),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(31),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(15),
      O => \reg_do[15]_i_5_n_0\
    );
\reg_do[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \^sl_iport_i\(7),
      I1 => \^sl_iport_i\(6),
      I2 => \^sl_iport_i\(4),
      I3 => \^sl_iport_i\(5),
      I4 => \reg_do[10]_i_2_n_0\,
      O => \reg_do[15]_i_6_n_0\
    );
\reg_do[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \reg_do[1]_i_2_n_0\,
      I1 => \reg_do[10]_i_2_n_0\,
      I2 => \reg_do[15]_i_4_n_0\,
      I3 => \reg_do[1]_i_3_n_0\,
      I4 => \reg_do[15]_i_2_n_0\,
      I5 => \reg_do[1]_i_4_n_0\,
      O => reg_do(1)
    );
\reg_do[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75007575FF8AFF8A"
    )
        port map (
      I0 => \^sl_iport_i\(8),
      I1 => \^sl_iport_i\(7),
      I2 => \^sl_iport_i\(6),
      I3 => \^sl_iport_i\(4),
      I4 => reg_test(1),
      I5 => \^sl_iport_i\(5),
      O => \reg_do[1]_i_2_n_0\
    );
\reg_do[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(113),
      I1 => uuid_stamp(97),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(81),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(65),
      O => \reg_do[1]_i_3_n_0\
    );
\reg_do[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(49),
      I1 => uuid_stamp(33),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(17),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(1),
      O => \reg_do[1]_i_4_n_0\
    );
\reg_do[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEAAAAAA"
    )
        port map (
      I0 => \reg_do[2]_i_2_n_0\,
      I1 => reg_test(2),
      I2 => \reg_do[8]_i_2_n_0\,
      I3 => \reg_do[10]_i_2_n_0\,
      I4 => \^sl_iport_i\(5),
      I5 => \^sl_iport_i\(4),
      O => reg_do(2)
    );
\reg_do[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAE00A2"
    )
        port map (
      I0 => \reg_do[2]_i_3_n_0\,
      I1 => \^sl_iport_i\(6),
      I2 => \^sl_iport_i\(7),
      I3 => \^sl_iport_i\(8),
      I4 => \reg_do[2]_i_4_n_0\,
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[2]_i_2_n_0\
    );
\reg_do[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(50),
      I1 => uuid_stamp(34),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(18),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(2),
      O => \reg_do[2]_i_3_n_0\
    );
\reg_do[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(114),
      I1 => uuid_stamp(98),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(82),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(66),
      O => \reg_do[2]_i_4_n_0\
    );
\reg_do[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAAAAAA"
    )
        port map (
      I0 => \reg_do[3]_i_2_n_0\,
      I1 => \reg_do[8]_i_2_n_0\,
      I2 => reg_test(3),
      I3 => \reg_do[10]_i_2_n_0\,
      I4 => \^sl_iport_i\(5),
      I5 => \^sl_iport_i\(4),
      O => reg_do(3)
    );
\reg_do[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA33A3"
    )
        port map (
      I0 => \reg_do[3]_i_3_n_0\,
      I1 => \reg_do[3]_i_4_n_0\,
      I2 => \^sl_iport_i\(6),
      I3 => \^sl_iport_i\(7),
      I4 => \^sl_iport_i\(8),
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[3]_i_2_n_0\
    );
\reg_do[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(115),
      I1 => uuid_stamp(99),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(83),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(67),
      O => \reg_do[3]_i_3_n_0\
    );
\reg_do[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => uuid_stamp(51),
      I1 => uuid_stamp(35),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(19),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(3),
      O => \reg_do[3]_i_4_n_0\
    );
\reg_do[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02022000AAAAAAAA"
    )
        port map (
      I0 => \reg_do[4]_i_2_n_0\,
      I1 => \^sl_iport_i\(4),
      I2 => \^sl_iport_i\(5),
      I3 => reg_test(4),
      I4 => \reg_do[8]_i_2_n_0\,
      I5 => \reg_do[10]_i_2_n_0\,
      O => reg_do(4)
    );
\reg_do[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \reg_do[6]_i_3_n_0\,
      I1 => \^sl_iport_i\(8),
      I2 => \^sl_iport_i\(7),
      I3 => \reg_do[4]_i_3_n_0\,
      I4 => \^sl_iport_i\(6),
      I5 => \reg_do[4]_i_4_n_0\,
      O => \reg_do[4]_i_2_n_0\
    );
\reg_do[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(52),
      I1 => uuid_stamp(36),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(20),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(4),
      O => \reg_do[4]_i_3_n_0\
    );
\reg_do[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(116),
      I1 => uuid_stamp(100),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(84),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(68),
      O => \reg_do[4]_i_4_n_0\
    );
\reg_do[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00222088AAAAAAAA"
    )
        port map (
      I0 => \reg_do[5]_i_2_n_0\,
      I1 => \reg_do[8]_i_2_n_0\,
      I2 => reg_test(5),
      I3 => \^sl_iport_i\(5),
      I4 => \^sl_iport_i\(4),
      I5 => \reg_do[10]_i_2_n_0\,
      O => reg_do(5)
    );
\reg_do[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \reg_do[6]_i_3_n_0\,
      I1 => \^sl_iport_i\(8),
      I2 => \^sl_iport_i\(7),
      I3 => \reg_do[5]_i_3_n_0\,
      I4 => \^sl_iport_i\(6),
      I5 => \reg_do[5]_i_4_n_0\,
      O => \reg_do[5]_i_2_n_0\
    );
\reg_do[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(53),
      I1 => uuid_stamp(37),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(21),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(5),
      O => \reg_do[5]_i_3_n_0\
    );
\reg_do[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(117),
      I1 => uuid_stamp(101),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(85),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(69),
      O => \reg_do[5]_i_4_n_0\
    );
\reg_do[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00222088AAAAAAAA"
    )
        port map (
      I0 => \reg_do[6]_i_2_n_0\,
      I1 => \reg_do[8]_i_2_n_0\,
      I2 => reg_test(6),
      I3 => \^sl_iport_i\(5),
      I4 => \^sl_iport_i\(4),
      I5 => \reg_do[10]_i_2_n_0\,
      O => reg_do(6)
    );
\reg_do[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAAAAAABAA"
    )
        port map (
      I0 => \reg_do[6]_i_3_n_0\,
      I1 => \^sl_iport_i\(8),
      I2 => \^sl_iport_i\(7),
      I3 => \reg_do[6]_i_4_n_0\,
      I4 => \^sl_iport_i\(6),
      I5 => \reg_do[6]_i_5_n_0\,
      O => \reg_do[6]_i_2_n_0\
    );
\reg_do[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sl_iport_i\(10),
      I1 => \^sl_iport_i\(11),
      I2 => \^sl_iport_i\(9),
      I3 => \^sl_iport_i\(8),
      O => \reg_do[6]_i_3_n_0\
    );
\reg_do[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(54),
      I1 => uuid_stamp(38),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(22),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(6),
      O => \reg_do[6]_i_4_n_0\
    );
\reg_do[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(118),
      I1 => uuid_stamp(102),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(86),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(70),
      O => \reg_do[6]_i_5_n_0\
    );
\reg_do[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF62000000"
    )
        port map (
      I0 => \^sl_iport_i\(4),
      I1 => \^sl_iport_i\(5),
      I2 => reg_test(7),
      I3 => \^sl_iport_i\(6),
      I4 => \reg_do[10]_i_2_n_0\,
      I5 => \reg_do[7]_i_2_n_0\,
      O => reg_do(7)
    );
\reg_do[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003333AA3A"
    )
        port map (
      I0 => \reg_do[7]_i_3_n_0\,
      I1 => \reg_do[7]_i_4_n_0\,
      I2 => \^sl_iport_i\(6),
      I3 => \^sl_iport_i\(7),
      I4 => \^sl_iport_i\(8),
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[7]_i_2_n_0\
    );
\reg_do[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(55),
      I1 => uuid_stamp(39),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(23),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(7),
      O => \reg_do[7]_i_3_n_0\
    );
\reg_do[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => uuid_stamp(87),
      I1 => uuid_stamp(71),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(119),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(103),
      O => \reg_do[7]_i_4_n_0\
    );
\reg_do[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC02F0000"
    )
        port map (
      I0 => reg_test(8),
      I1 => \^sl_iport_i\(4),
      I2 => \^sl_iport_i\(5),
      I3 => \reg_do[8]_i_2_n_0\,
      I4 => \reg_do[10]_i_2_n_0\,
      I5 => \reg_do[8]_i_3_n_0\,
      O => reg_do(8)
    );
\reg_do[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^sl_iport_i\(8),
      I1 => \^sl_iport_i\(7),
      I2 => \^sl_iport_i\(6),
      O => \reg_do[8]_i_2_n_0\
    );
\reg_do[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFBAA08"
    )
        port map (
      I0 => \reg_do[8]_i_4_n_0\,
      I1 => \^sl_iport_i\(6),
      I2 => \^sl_iport_i\(7),
      I3 => \^sl_iport_i\(8),
      I4 => \reg_do[8]_i_5_n_0\,
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[8]_i_3_n_0\
    );
\reg_do[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(120),
      I1 => uuid_stamp(104),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(88),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(72),
      O => \reg_do[8]_i_4_n_0\
    );
\reg_do[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(56),
      I1 => uuid_stamp(40),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(24),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(8),
      O => \reg_do[8]_i_5_n_0\
    );
\reg_do[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF62000000"
    )
        port map (
      I0 => \^sl_iport_i\(4),
      I1 => \^sl_iport_i\(5),
      I2 => reg_test(9),
      I3 => \^sl_iport_i\(6),
      I4 => \reg_do[10]_i_2_n_0\,
      I5 => \reg_do[9]_i_2_n_0\,
      O => reg_do(9)
    );
\reg_do[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFBAA08"
    )
        port map (
      I0 => \reg_do[9]_i_3_n_0\,
      I1 => \^sl_iport_i\(6),
      I2 => \^sl_iport_i\(7),
      I3 => \^sl_iport_i\(8),
      I4 => \reg_do[9]_i_4_n_0\,
      I5 => \reg_do[15]_i_4_n_0\,
      O => \reg_do[9]_i_2_n_0\
    );
\reg_do[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(121),
      I1 => uuid_stamp(105),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(89),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(73),
      O => \reg_do[9]_i_3_n_0\
    );
\reg_do[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => uuid_stamp(57),
      I1 => uuid_stamp(41),
      I2 => \^sl_iport_i\(5),
      I3 => uuid_stamp(25),
      I4 => \^sl_iport_i\(4),
      I5 => uuid_stamp(9),
      O => \reg_do[9]_i_4_n_0\
    );
\reg_do_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(0),
      Q => \reg_do_reg_n_0_[0]\,
      R => '0'
    );
\reg_do_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(10),
      Q => \reg_do_reg_n_0_[10]\,
      R => '0'
    );
\reg_do_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(11),
      Q => \reg_do_reg_n_0_[11]\,
      R => '0'
    );
\reg_do_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(12),
      Q => \reg_do_reg_n_0_[12]\,
      R => '0'
    );
\reg_do_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(13),
      Q => \reg_do_reg_n_0_[13]\,
      R => '0'
    );
\reg_do_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(14),
      Q => \reg_do_reg_n_0_[14]\,
      R => '0'
    );
\reg_do_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(15),
      Q => \reg_do_reg_n_0_[15]\,
      R => '0'
    );
\reg_do_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(1),
      Q => \reg_do_reg_n_0_[1]\,
      R => '0'
    );
\reg_do_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(2),
      Q => \reg_do_reg_n_0_[2]\,
      R => '0'
    );
\reg_do_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(3),
      Q => \reg_do_reg_n_0_[3]\,
      R => '0'
    );
\reg_do_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(4),
      Q => \reg_do_reg_n_0_[4]\,
      R => '0'
    );
\reg_do_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(5),
      Q => \reg_do_reg_n_0_[5]\,
      R => '0'
    );
\reg_do_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(6),
      Q => \reg_do_reg_n_0_[6]\,
      R => '0'
    );
\reg_do_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(7),
      Q => \reg_do_reg_n_0_[7]\,
      R => '0'
    );
\reg_do_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(8),
      Q => \reg_do_reg_n_0_[8]\,
      R => '0'
    );
\reg_do_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_do(9),
      Q => \reg_do_reg_n_0_[9]\,
      R => '0'
    );
reg_drdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_den_o_INST_0_i_1_n_0,
      I1 => \^sl_iport_i\(12),
      I2 => \^sl_iport_i\(13),
      I3 => \^sl_iport_i\(14),
      I4 => \^sl_iport_i\(0),
      I5 => \^sl_iport_i\(2),
      O => reg_drdy_i_1_n_0
    );
reg_drdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => reg_drdy_i_1_n_0,
      Q => reg_drdy,
      R => '0'
    );
\reg_test[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_den_o_INST_0_i_1_n_0,
      I1 => \^sl_iport_i\(12),
      I2 => \^sl_iport_i\(13),
      I3 => \^sl_iport_i\(14),
      I4 => \^sl_iport_i\(3),
      I5 => \^sl_iport_i\(2),
      O => reg_test0
    );
\reg_test_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(21),
      Q => reg_test(0),
      R => '0'
    );
\reg_test_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(31),
      Q => reg_test(10),
      R => '0'
    );
\reg_test_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(32),
      Q => reg_test(11),
      R => '0'
    );
\reg_test_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(33),
      Q => reg_test(12),
      R => '0'
    );
\reg_test_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(34),
      Q => reg_test(13),
      R => '0'
    );
\reg_test_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(35),
      Q => reg_test(14),
      R => '0'
    );
\reg_test_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(36),
      Q => reg_test(15),
      R => '0'
    );
\reg_test_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(22),
      Q => reg_test(1),
      R => '0'
    );
\reg_test_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(23),
      Q => reg_test(2),
      R => '0'
    );
\reg_test_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(24),
      Q => reg_test(3),
      R => '0'
    );
\reg_test_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(25),
      Q => reg_test(4),
      R => '0'
    );
\reg_test_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(26),
      Q => reg_test(5),
      R => '0'
    );
\reg_test_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(27),
      Q => reg_test(6),
      R => '0'
    );
\reg_test_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(28),
      Q => reg_test(7),
      R => '0'
    );
\reg_test_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(29),
      Q => reg_test(8),
      R => '0'
    );
\reg_test_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^sl_iport_i\(1),
      CE => reg_test0,
      D => \^sl_iport_i\(30),
      Q => reg_test(9),
      R => '0'
    );
s_den_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => s_den_o_INST_0_i_1_n_0,
      I1 => \^sl_iport_i\(12),
      I2 => \^sl_iport_i\(13),
      I3 => \^sl_iport_i\(14),
      I4 => \^sl_iport_i\(2),
      O => s_den_o
    );
s_den_o_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^sl_iport_i\(15),
      I1 => \^sl_iport_i\(16),
      I2 => \^sl_iport_i\(17),
      I3 => \^sl_iport_i\(18),
      I4 => \^sl_iport_i\(20),
      I5 => \^sl_iport_i\(19),
      O => s_den_o_INST_0_i_1_n_0
    );
\sl_oport_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reg_drdy,
      I1 => s_drdy_i,
      O => sl_oport_o(0)
    );
\sl_oport_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[9]\,
      I1 => reg_drdy,
      I2 => s_do_i(9),
      O => sl_oport_o(10)
    );
\sl_oport_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[10]\,
      I1 => reg_drdy,
      I2 => s_do_i(10),
      O => sl_oport_o(11)
    );
\sl_oport_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[11]\,
      I1 => reg_drdy,
      I2 => s_do_i(11),
      O => sl_oport_o(12)
    );
\sl_oport_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[12]\,
      I1 => reg_drdy,
      I2 => s_do_i(12),
      O => sl_oport_o(13)
    );
\sl_oport_o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[13]\,
      I1 => reg_drdy,
      I2 => s_do_i(13),
      O => sl_oport_o(14)
    );
\sl_oport_o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[14]\,
      I1 => reg_drdy,
      I2 => s_do_i(14),
      O => sl_oport_o(15)
    );
\sl_oport_o[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[15]\,
      I1 => reg_drdy,
      I2 => s_do_i(15),
      O => sl_oport_o(16)
    );
\sl_oport_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[0]\,
      I1 => reg_drdy,
      I2 => s_do_i(0),
      O => sl_oport_o(1)
    );
\sl_oport_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[1]\,
      I1 => reg_drdy,
      I2 => s_do_i(1),
      O => sl_oport_o(2)
    );
\sl_oport_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[2]\,
      I1 => reg_drdy,
      I2 => s_do_i(2),
      O => sl_oport_o(3)
    );
\sl_oport_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[3]\,
      I1 => reg_drdy,
      I2 => s_do_i(3),
      O => sl_oport_o(4)
    );
\sl_oport_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[4]\,
      I1 => reg_drdy,
      I2 => s_do_i(4),
      O => sl_oport_o(5)
    );
\sl_oport_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[5]\,
      I1 => reg_drdy,
      I2 => s_do_i(5),
      O => sl_oport_o(6)
    );
\sl_oport_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[6]\,
      I1 => reg_drdy,
      I2 => s_do_i(6),
      O => sl_oport_o(7)
    );
\sl_oport_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[7]\,
      I1 => reg_drdy,
      I2 => s_do_i(7),
      O => sl_oport_o(8)
    );
\sl_oport_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_do_reg_n_0_[8]\,
      I1 => reg_drdy,
      I2 => s_do_i(8),
      O => sl_oport_o(9)
    );
\uuid_stamp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(0),
      Q => uuid_stamp(0),
      R => '0'
    );
\uuid_stamp_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(100),
      Q => uuid_stamp(100),
      R => '0'
    );
\uuid_stamp_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(101),
      Q => uuid_stamp(101),
      R => '0'
    );
\uuid_stamp_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(102),
      Q => uuid_stamp(102),
      R => '0'
    );
\uuid_stamp_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(103),
      Q => uuid_stamp(103),
      R => '0'
    );
\uuid_stamp_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(104),
      Q => uuid_stamp(104),
      R => '0'
    );
\uuid_stamp_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(105),
      Q => uuid_stamp(105),
      R => '0'
    );
\uuid_stamp_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(106),
      Q => uuid_stamp(106),
      R => '0'
    );
\uuid_stamp_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(107),
      Q => uuid_stamp(107),
      R => '0'
    );
\uuid_stamp_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(108),
      Q => uuid_stamp(108),
      R => '0'
    );
\uuid_stamp_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(109),
      Q => uuid_stamp(109),
      R => '0'
    );
\uuid_stamp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(10),
      Q => uuid_stamp(10),
      R => '0'
    );
\uuid_stamp_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(110),
      Q => uuid_stamp(110),
      R => '0'
    );
\uuid_stamp_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(111),
      Q => uuid_stamp(111),
      R => '0'
    );
\uuid_stamp_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(112),
      Q => uuid_stamp(112),
      R => '0'
    );
\uuid_stamp_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(113),
      Q => uuid_stamp(113),
      R => '0'
    );
\uuid_stamp_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(114),
      Q => uuid_stamp(114),
      R => '0'
    );
\uuid_stamp_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(115),
      Q => uuid_stamp(115),
      R => '0'
    );
\uuid_stamp_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(116),
      Q => uuid_stamp(116),
      R => '0'
    );
\uuid_stamp_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(117),
      Q => uuid_stamp(117),
      R => '0'
    );
\uuid_stamp_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(118),
      Q => uuid_stamp(118),
      R => '0'
    );
\uuid_stamp_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(119),
      Q => uuid_stamp(119),
      R => '0'
    );
\uuid_stamp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(11),
      Q => uuid_stamp(11),
      R => '0'
    );
\uuid_stamp_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(120),
      Q => uuid_stamp(120),
      R => '0'
    );
\uuid_stamp_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(121),
      Q => uuid_stamp(121),
      R => '0'
    );
\uuid_stamp_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(122),
      Q => uuid_stamp(122),
      R => '0'
    );
\uuid_stamp_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(123),
      Q => uuid_stamp(123),
      R => '0'
    );
\uuid_stamp_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(124),
      Q => uuid_stamp(124),
      R => '0'
    );
\uuid_stamp_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(125),
      Q => uuid_stamp(125),
      R => '0'
    );
\uuid_stamp_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(126),
      Q => uuid_stamp(126),
      R => '0'
    );
\uuid_stamp_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(127),
      Q => uuid_stamp(127),
      R => '0'
    );
\uuid_stamp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(12),
      Q => uuid_stamp(12),
      R => '0'
    );
\uuid_stamp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(13),
      Q => uuid_stamp(13),
      R => '0'
    );
\uuid_stamp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(14),
      Q => uuid_stamp(14),
      R => '0'
    );
\uuid_stamp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(15),
      Q => uuid_stamp(15),
      R => '0'
    );
\uuid_stamp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(16),
      Q => uuid_stamp(16),
      R => '0'
    );
\uuid_stamp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(17),
      Q => uuid_stamp(17),
      R => '0'
    );
\uuid_stamp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(18),
      Q => uuid_stamp(18),
      R => '0'
    );
\uuid_stamp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(19),
      Q => uuid_stamp(19),
      R => '0'
    );
\uuid_stamp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(1),
      Q => uuid_stamp(1),
      R => '0'
    );
\uuid_stamp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(20),
      Q => uuid_stamp(20),
      R => '0'
    );
\uuid_stamp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(21),
      Q => uuid_stamp(21),
      R => '0'
    );
\uuid_stamp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(22),
      Q => uuid_stamp(22),
      R => '0'
    );
\uuid_stamp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(23),
      Q => uuid_stamp(23),
      R => '0'
    );
\uuid_stamp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(24),
      Q => uuid_stamp(24),
      R => '0'
    );
\uuid_stamp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(25),
      Q => uuid_stamp(25),
      R => '0'
    );
\uuid_stamp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(26),
      Q => uuid_stamp(26),
      R => '0'
    );
\uuid_stamp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(27),
      Q => uuid_stamp(27),
      R => '0'
    );
\uuid_stamp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(28),
      Q => uuid_stamp(28),
      R => '0'
    );
\uuid_stamp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(29),
      Q => uuid_stamp(29),
      R => '0'
    );
\uuid_stamp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(2),
      Q => uuid_stamp(2),
      R => '0'
    );
\uuid_stamp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(30),
      Q => uuid_stamp(30),
      R => '0'
    );
\uuid_stamp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(31),
      Q => uuid_stamp(31),
      R => '0'
    );
\uuid_stamp_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(32),
      Q => uuid_stamp(32),
      R => '0'
    );
\uuid_stamp_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(33),
      Q => uuid_stamp(33),
      R => '0'
    );
\uuid_stamp_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(34),
      Q => uuid_stamp(34),
      R => '0'
    );
\uuid_stamp_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(35),
      Q => uuid_stamp(35),
      R => '0'
    );
\uuid_stamp_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(36),
      Q => uuid_stamp(36),
      R => '0'
    );
\uuid_stamp_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(37),
      Q => uuid_stamp(37),
      R => '0'
    );
\uuid_stamp_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(38),
      Q => uuid_stamp(38),
      R => '0'
    );
\uuid_stamp_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(39),
      Q => uuid_stamp(39),
      R => '0'
    );
\uuid_stamp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(3),
      Q => uuid_stamp(3),
      R => '0'
    );
\uuid_stamp_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(40),
      Q => uuid_stamp(40),
      R => '0'
    );
\uuid_stamp_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(41),
      Q => uuid_stamp(41),
      R => '0'
    );
\uuid_stamp_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(42),
      Q => uuid_stamp(42),
      R => '0'
    );
\uuid_stamp_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(43),
      Q => uuid_stamp(43),
      R => '0'
    );
\uuid_stamp_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(44),
      Q => uuid_stamp(44),
      R => '0'
    );
\uuid_stamp_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(45),
      Q => uuid_stamp(45),
      R => '0'
    );
\uuid_stamp_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(46),
      Q => uuid_stamp(46),
      R => '0'
    );
\uuid_stamp_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(47),
      Q => uuid_stamp(47),
      R => '0'
    );
\uuid_stamp_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(48),
      Q => uuid_stamp(48),
      R => '0'
    );
\uuid_stamp_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(49),
      Q => uuid_stamp(49),
      R => '0'
    );
\uuid_stamp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(4),
      Q => uuid_stamp(4),
      R => '0'
    );
\uuid_stamp_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(50),
      Q => uuid_stamp(50),
      R => '0'
    );
\uuid_stamp_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(51),
      Q => uuid_stamp(51),
      R => '0'
    );
\uuid_stamp_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(52),
      Q => uuid_stamp(52),
      R => '0'
    );
\uuid_stamp_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(53),
      Q => uuid_stamp(53),
      R => '0'
    );
\uuid_stamp_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(54),
      Q => uuid_stamp(54),
      R => '0'
    );
\uuid_stamp_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(55),
      Q => uuid_stamp(55),
      R => '0'
    );
\uuid_stamp_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(56),
      Q => uuid_stamp(56),
      R => '0'
    );
\uuid_stamp_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(57),
      Q => uuid_stamp(57),
      R => '0'
    );
\uuid_stamp_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(58),
      Q => uuid_stamp(58),
      R => '0'
    );
\uuid_stamp_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(59),
      Q => uuid_stamp(59),
      R => '0'
    );
\uuid_stamp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(5),
      Q => uuid_stamp(5),
      R => '0'
    );
\uuid_stamp_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(60),
      Q => uuid_stamp(60),
      R => '0'
    );
\uuid_stamp_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(61),
      Q => uuid_stamp(61),
      R => '0'
    );
\uuid_stamp_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(62),
      Q => uuid_stamp(62),
      R => '0'
    );
\uuid_stamp_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(63),
      Q => uuid_stamp(63),
      R => '0'
    );
\uuid_stamp_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(64),
      Q => uuid_stamp(64),
      R => '0'
    );
\uuid_stamp_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(65),
      Q => uuid_stamp(65),
      R => '0'
    );
\uuid_stamp_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(66),
      Q => uuid_stamp(66),
      R => '0'
    );
\uuid_stamp_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(67),
      Q => uuid_stamp(67),
      R => '0'
    );
\uuid_stamp_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(68),
      Q => uuid_stamp(68),
      R => '0'
    );
\uuid_stamp_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(69),
      Q => uuid_stamp(69),
      R => '0'
    );
\uuid_stamp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(6),
      Q => uuid_stamp(6),
      R => '0'
    );
\uuid_stamp_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(70),
      Q => uuid_stamp(70),
      R => '0'
    );
\uuid_stamp_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(71),
      Q => uuid_stamp(71),
      R => '0'
    );
\uuid_stamp_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(72),
      Q => uuid_stamp(72),
      R => '0'
    );
\uuid_stamp_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(73),
      Q => uuid_stamp(73),
      R => '0'
    );
\uuid_stamp_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(74),
      Q => uuid_stamp(74),
      R => '0'
    );
\uuid_stamp_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(75),
      Q => uuid_stamp(75),
      R => '0'
    );
\uuid_stamp_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(76),
      Q => uuid_stamp(76),
      R => '0'
    );
\uuid_stamp_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(77),
      Q => uuid_stamp(77),
      R => '0'
    );
\uuid_stamp_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(78),
      Q => uuid_stamp(78),
      R => '0'
    );
\uuid_stamp_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(79),
      Q => uuid_stamp(79),
      R => '0'
    );
\uuid_stamp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(7),
      Q => uuid_stamp(7),
      R => '0'
    );
\uuid_stamp_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(80),
      Q => uuid_stamp(80),
      R => '0'
    );
\uuid_stamp_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(81),
      Q => uuid_stamp(81),
      R => '0'
    );
\uuid_stamp_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(82),
      Q => uuid_stamp(82),
      R => '0'
    );
\uuid_stamp_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(83),
      Q => uuid_stamp(83),
      R => '0'
    );
\uuid_stamp_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(84),
      Q => uuid_stamp(84),
      R => '0'
    );
\uuid_stamp_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(85),
      Q => uuid_stamp(85),
      R => '0'
    );
\uuid_stamp_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(86),
      Q => uuid_stamp(86),
      R => '0'
    );
\uuid_stamp_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(87),
      Q => uuid_stamp(87),
      R => '0'
    );
\uuid_stamp_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(88),
      Q => uuid_stamp(88),
      R => '0'
    );
\uuid_stamp_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(89),
      Q => uuid_stamp(89),
      R => '0'
    );
\uuid_stamp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(8),
      Q => uuid_stamp(8),
      R => '0'
    );
\uuid_stamp_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(90),
      Q => uuid_stamp(90),
      R => '0'
    );
\uuid_stamp_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(91),
      Q => uuid_stamp(91),
      R => '0'
    );
\uuid_stamp_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(92),
      Q => uuid_stamp(92),
      R => '0'
    );
\uuid_stamp_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(93),
      Q => uuid_stamp(93),
      R => '0'
    );
\uuid_stamp_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(94),
      Q => uuid_stamp(94),
      R => '0'
    );
\uuid_stamp_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(95),
      Q => uuid_stamp(95),
      R => '0'
    );
\uuid_stamp_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(96),
      Q => uuid_stamp(96),
      R => '0'
    );
\uuid_stamp_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(97),
      Q => uuid_stamp(97),
      R => '0'
    );
\uuid_stamp_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(98),
      Q => uuid_stamp(98),
      R => '0'
    );
\uuid_stamp_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(99),
      Q => uuid_stamp(99),
      R => '0'
    );
\uuid_stamp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^sl_iport_i\(1),
      CE => '1',
      D => uuid_stamp(9),
      Q => uuid_stamp(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end jtag_axi_0_blk_mem_gen_prim_width;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_prim_width is
  signal ENB_dly : STD_LOGIC;
begin
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => POR_A,
      Q => ENB_dly,
      R => '0'
    );
\prim_noinit.ram\: entity work.jtag_axi_0_blk_mem_gen_prim_wrapper
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_prim_width__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \jtag_axi_0_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_prim_width__parameterized0\ is
  signal ENB_dly : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.POR_A_i_1_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.POR_B_i_1_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4]\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "inst/\jtag_axi_engine_u/wr_cmd_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "inst/\jtag_axi_engine_u/wr_cmd_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\jtag_axi_engine_u/wr_cmd_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\jtag_axi_engine_u/wr_cmd_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_B <= \^por_b\;
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_A_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4]\,
      I1 => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0]\,
      O => \SAFETY_CKT_GEN.POR_A_i_1_n_0\
    );
\SAFETY_CKT_GEN.POR_A_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \SAFETY_CKT_GEN.POR_A_i_1_n_0\,
      Q => POR_A,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\,
      I1 => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
      O => \SAFETY_CKT_GEN.POR_B_i_1_n_0\
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.POR_B_i_1_n_0\,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => '1',
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0]\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_dclk_o,
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0]\,
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4]\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\,
      R => '0'
    );
\prim_noinit.ram\: entity work.\jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      D(53 downto 0) => D(53 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => \^por_b\,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_prim_width__parameterized0_17\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_prim_width__parameterized0_17\ : entity is "blk_mem_gen_prim_width";
end \jtag_axi_0_blk_mem_gen_prim_width__parameterized0_17\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_prim_width__parameterized0_17\ is
begin
\prim_noinit.ram\: entity work.\jtag_axi_0_blk_mem_gen_prim_wrapper__parameterized0_18\
     port map (
      D(63 downto 0) => D(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_clk_x_pntrs is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i_reg_0 : out STD_LOGIC;
    ram_empty_i_reg_1 : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_0_out_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    rd_pntr_plus1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dclk_o : in STD_LOGIC;
    p_13_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_clk_x_pntrs : entity is "clk_x_pntrs";
end jtag_axi_0_clk_x_pntrs;

architecture STRUCTURE of jtag_axi_0_clk_x_pntrs is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \ram_empty_i_i_2__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_4__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_5__2_n_0\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 8;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 8;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
ram_empty_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => rd_pntr_plus1(1),
      I2 => p_24_out(1),
      I3 => rd_pntr_plus1(0),
      O => ram_empty_i_reg_0
    );
\ram_empty_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_empty_i_i_2__0_n_0\,
      I1 => \^wr_pntr_rd\(2),
      I2 => p_0_out_0(6),
      I3 => \^wr_pntr_rd\(3),
      I4 => p_0_out_0(7),
      I5 => \gpregsm1.curr_fwft_state_reg[1]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => \ram_empty_i_i_4__0_n_0\,
      I1 => \^wr_pntr_rd\(1),
      I2 => p_0_out_0(5),
      I3 => p_24_out(4),
      I4 => p_0_out_0(4),
      I5 => \ram_empty_i_i_5__2_n_0\,
      O => \ram_empty_i_i_2__0_n_0\
    );
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(3),
      I1 => p_0_out_0(3),
      I2 => p_24_out(2),
      I3 => p_0_out_0(2),
      O => \ram_empty_i_i_4__0_n_0\
    );
\ram_empty_i_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(1),
      I1 => p_0_out_0(1),
      I2 => \^wr_pntr_rd\(0),
      I3 => p_0_out_0(0),
      O => \ram_empty_i_i_5__2_n_0\
    );
\ram_empty_i_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(4),
      I1 => rd_pntr_plus1(3),
      I2 => p_24_out(3),
      I3 => rd_pntr_plus1(2),
      O => ram_empty_i_reg_1
    );
rd_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__3\
     port map (
      dest_clk => s_dclk_o,
      dest_out_bin(7 downto 0) => RD_PNTR_WR(7 downto 0),
      src_clk => aclk,
      src_in_bin(7 downto 0) => p_0_out_0(7 downto 0)
    );
wr_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__2\
     port map (
      dest_clk => aclk,
      dest_out_bin(7 downto 5) => \^wr_pntr_rd\(3 downto 1),
      dest_out_bin(4 downto 1) => p_24_out(4 downto 1),
      dest_out_bin(0) => \^wr_pntr_rd\(0),
      src_clk => s_dclk_o,
      src_in_bin(7 downto 0) => p_13_out(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_clk_x_pntrs__parameterized0\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[0]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_clk_x_pntrs__parameterized0\ : entity is "clk_x_pntrs";
end \jtag_axi_0_clk_x_pntrs__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_clk_x_pntrs__parameterized0\ is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__1_n_0\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_empty_i_i_2__1_n_0\,
      I1 => \^wr_pntr_rd\(2),
      I2 => RD_PNTR(2),
      I3 => \^wr_pntr_rd\(3),
      I4 => RD_PNTR(3),
      I5 => \dest_out_bin_ff_reg[0]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => RD_PNTR(1),
      I2 => \^wr_pntr_rd\(0),
      I3 => RD_PNTR(0),
      O => \ram_empty_i_i_2__1_n_0\
    );
rd_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__parameterized0__3\
     port map (
      dest_clk => s_dclk_o,
      dest_out_bin(3 downto 0) => RD_PNTR_WR(3 downto 0),
      src_clk => aclk,
      src_in_bin(3 downto 0) => RD_PNTR(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__parameterized0__2\
     port map (
      dest_clk => aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => s_dclk_o,
      src_in_bin(3 downto 0) => WR_PNTR(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_clk_x_pntrs__parameterized0__xdcDup__1\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[0]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_clk_x_pntrs__parameterized0__xdcDup__1\ : entity is "clk_x_pntrs";
end \jtag_axi_0_clk_x_pntrs__parameterized0__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_clk_x_pntrs__parameterized0__xdcDup__1\ is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_empty_i_i_2__2_n_0\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  WR_PNTR_RD(3 downto 0) <= \^wr_pntr_rd\(3 downto 0);
\ram_empty_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82000082"
    )
        port map (
      I0 => \ram_empty_i_i_2__2_n_0\,
      I1 => \^wr_pntr_rd\(2),
      I2 => RD_PNTR(2),
      I3 => \^wr_pntr_rd\(3),
      I4 => RD_PNTR(3),
      I5 => \dest_out_bin_ff_reg[0]\,
      O => ram_empty_i_reg
    );
\ram_empty_i_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => RD_PNTR(1),
      I2 => \^wr_pntr_rd\(0),
      I3 => RD_PNTR(0),
      O => \ram_empty_i_i_2__2_n_0\
    );
rd_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => s_dclk_o,
      dest_out_bin(3 downto 0) => RD_PNTR_WR(3 downto 0),
      src_clk => aclk,
      src_in_bin(3 downto 0) => RD_PNTR(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__parameterized0__4\
     port map (
      dest_clk => aclk,
      dest_out_bin(3 downto 0) => \^wr_pntr_rd\(3 downto 0),
      src_clk => s_dclk_o,
      src_in_bin(3 downto 0) => WR_PNTR(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_clk_x_pntrs__xdcDup__1\ is
  port (
    ram_empty_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_reg[5]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_pntr_plus1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_dclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_clk_x_pntrs__xdcDup__1\ : entity is "clk_x_pntrs";
end \jtag_axi_0_clk_x_pntrs__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_clk_x_pntrs__xdcDup__1\ is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_i_i_6_n_0 : STD_LOGIC;
  signal ram_empty_i_i_7_n_0 : STD_LOGIC;
  signal ram_empty_i_i_8_n_0 : STD_LOGIC;
  signal ram_empty_i_i_9_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 8;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 8;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  WR_PNTR_RD(2 downto 0) <= \^wr_pntr_rd\(2 downto 0);
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8888888F888"
    )
        port map (
      I0 => ram_empty_i_i_2_n_0,
      I1 => ram_empty_i_i_3_n_0,
      I2 => ram_empty_i_i_4_n_0,
      I3 => \gc0.count_reg[5]\,
      I4 => \out\(0),
      I5 => \count_reg[0]\,
      O => ram_empty_i_reg
    );
ram_empty_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ram_empty_i_i_6_n_0,
      I1 => \^wr_pntr_rd\(0),
      I2 => RD_PNTR(5),
      I3 => p_24_out(4),
      I4 => RD_PNTR(4),
      I5 => ram_empty_i_i_7_n_0,
      O => ram_empty_i_i_2_n_0
    );
ram_empty_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => RD_PNTR(6),
      I2 => \^wr_pntr_rd\(2),
      I3 => RD_PNTR(7),
      O => ram_empty_i_i_3_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000008"
    )
        port map (
      I0 => ram_empty_i_i_8_n_0,
      I1 => ram_empty_i_i_9_n_0,
      I2 => ram_empty_fb_i_reg,
      I3 => rd_pntr_plus1(0),
      I4 => p_24_out(0),
      O => ram_empty_i_i_4_n_0
    );
ram_empty_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(3),
      I1 => RD_PNTR(3),
      I2 => p_24_out(2),
      I3 => RD_PNTR(2),
      O => ram_empty_i_i_6_n_0
    );
ram_empty_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(1),
      I1 => RD_PNTR(1),
      I2 => p_24_out(0),
      I3 => RD_PNTR(0),
      O => ram_empty_i_i_7_n_0
    );
ram_empty_i_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => rd_pntr_plus1(2),
      I2 => p_24_out(1),
      I3 => rd_pntr_plus1(1),
      O => ram_empty_i_i_8_n_0
    );
ram_empty_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(4),
      I1 => rd_pntr_plus1(4),
      I2 => p_24_out(3),
      I3 => rd_pntr_plus1(3),
      O => ram_empty_i_i_9_n_0
    );
rd_pntr_cdc_inst: entity work.jtag_axi_0_xpm_cdc_gray
     port map (
      dest_clk => aclk,
      dest_out_bin(7 downto 0) => RD_PNTR_WR(7 downto 0),
      src_clk => s_dclk_o,
      src_in_bin(7 downto 0) => RD_PNTR(7 downto 0)
    );
wr_pntr_cdc_inst: entity work.\jtag_axi_0_xpm_cdc_gray__4\
     port map (
      dest_clk => s_dclk_o,
      dest_out_bin(7 downto 5) => \^wr_pntr_rd\(2 downto 0),
      dest_out_bin(4 downto 0) => p_24_out(4 downto 0),
      src_clk => aclk,
      src_in_bin(7 downto 0) => WR_PNTR(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_axi_bridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fifo_wr_en : out STD_LOGIC;
    axi_wr_done : out STD_LOGIC;
    axi_rd_done : out STD_LOGIC;
    axi_rd_busy : out STD_LOGIC;
    axi_wr_busy : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    p_20_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    \rd_cmd_fifo_data_out_qid_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rd_txn_err_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awlen[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    axi_wr_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axi_awaddr[31]\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_wr : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_done_ff : in STD_LOGIC;
    rd_sts_flag_reg : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    axi_rd : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \wr_cmd_fifo_data_out_reg[19]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wr_cmd_fifo_data_out_reg[63]\ : in STD_LOGIC_VECTOR ( 41 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd_cmd_fifo_data_out_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \rd_cmd_fifo_data_out_reg[19]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_axi_bridge : entity is "jtag_axi_v1_2_4_axi_bridge";
end jtag_axi_0_jtag_axi_v1_2_4_axi_bridge;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_axi_bridge is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
read_axi_full_u: entity work.jtag_axi_0_jtag_axi_v1_2_4_read_axi
     port map (
      D(1 downto 0) => D(1 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => aresetn,
      axi_rd => axi_rd,
      axi_rd_busy => axi_rd_busy,
      axi_rd_done => axi_rd_done,
      axi_rd_done_ff => axi_rd_done_ff,
      axi_rd_txn_err_reg(0) => axi_rd_txn_err_reg(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\(41 downto 0) => \out\(41 downto 0),
      p_20_out => p_20_out,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      \rd_cmd_fifo_data_out_qid_reg[3]\(0) => \rd_cmd_fifo_data_out_qid_reg[3]\(0),
      \rd_cmd_fifo_data_out_reg[19]\(7 downto 0) => \rd_cmd_fifo_data_out_reg[19]\(7 downto 0),
      \rd_cmd_fifo_data_out_reg[63]\(63 downto 0) => \rd_cmd_fifo_data_out_reg[63]\(63 downto 0),
      rd_sts_flag_reg => rd_sts_flag_reg,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
write_axi_full_u: entity work.jtag_axi_0_jtag_axi_v1_2_4_write_axi
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      axi_wr => axi_wr,
      axi_wr_busy => axi_wr_busy,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(1 downto 0) => axi_wr_resp(1 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => \gpregsm1.curr_fwft_state_reg[0]\(0),
      \m_axi_awaddr[31]\(41 downto 0) => \m_axi_awaddr[31]\(41 downto 0),
      \m_axi_awlen[7]\(7 downto 0) => \m_axi_awlen[7]\(7 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      ram_empty_i_reg => ram_empty_i_reg,
      \wr_cmd_fifo_data_out_reg[19]\(7 downto 0) => \wr_cmd_fifo_data_out_reg[19]\(7 downto 0),
      \wr_cmd_fifo_data_out_reg[63]\(41 downto 0) => \wr_cmd_fifo_data_out_reg[63]\(41 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_xsdb_fifo_interface is
  port (
    fifo_rst_xsdb : out STD_LOGIC;
    tx_fifo_wr : out STD_LOGIC;
    wr_cmd_fifowren_i : out STD_LOGIC;
    rd_cmd_fifowren_i : out STD_LOGIC;
    wr_axi_en : out STD_LOGIC;
    rd_axi_en : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    \goreg_bm.dout_i_reg[31]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    p_20_out : out STD_LOGIC;
    p_20_out_0 : out STD_LOGIC;
    s_drdy_i : out STD_LOGIC;
    s_do_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_dwe_i : in STD_LOGIC;
    s_den_i : in STD_LOGIC;
    \s_daddr_i_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \s_daddr_i_reg[3]\ : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    \s_daddr_i_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    ram_full_fb_i_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \status_reg_datain_ff4_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_xsdb_fifo_interface : entity is "jtag_axi_v1_2_4_xsdb_fifo_interface";
end jtag_axi_0_jtag_axi_v1_2_4_xsdb_fifo_interface;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_xsdb_fifo_interface is
  signal U_XSDB_SLAVE_i_18_n_0 : STD_LOGIC;
  signal axi_has_burst : STD_LOGIC;
  signal \^fifo_rst_xsdb\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \^rd_axi_en\ : STD_LOGIC;
  signal rd_axi_en_i_1_n_0 : STD_LOGIC;
  signal rst_xsdbfifo_large_i_1_n_0 : STD_LOGIC;
  signal rst_xsdbfifo_reg1 : STD_LOGIC;
  signal rst_xsdbfifo_reg10 : STD_LOGIC;
  signal rst_xsdbfifo_reg1_i_1_n_0 : STD_LOGIC;
  signal rst_xsdbfifo_reg2 : STD_LOGIC;
  signal rst_xsdbfifo_reg3 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_1 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_10 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_11 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_12 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_13 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_14 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_15 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_16 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_17 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_18 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_19 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_20 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_21 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_3 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_6 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_7 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_8 : STD_LOGIC;
  signal rxfifo2xsdb_i_n_9 : STD_LOGIC;
  signal \select\ : STD_LOGIC;
  signal status_reg_datain_ff : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sts_flag_reg : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \sts_flag_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sts_flag_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sts_flag_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sts_flag_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sts_flag_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \sts_flag_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \^wr_axi_en\ : STD_LOGIC;
  signal wr_axi_en_i_1_n_0 : STD_LOGIC;
  signal wr_axi_en_i_2_n_0 : STD_LOGIC;
  signal wr_axi_en_i_3_n_0 : STD_LOGIC;
  signal xsdb2read_cmdfifo_n_0 : STD_LOGIC;
  signal xsdb2write_cmdfifo_n_0 : STD_LOGIC;
  signal xsdb_den_status : STD_LOGIC;
  signal xsdb_drdy_ctrl : STD_LOGIC;
  signal xsdb_drdy_reset : STD_LOGIC;
  signal xsdb_drdy_reset_i_1_n_0 : STD_LOGIC;
  signal xsdb_drdy_status_reg : STD_LOGIC;
  signal xsdb_drdy_status_reg_ff : STD_LOGIC;
  signal xsdb_drdy_xsdb_rxfifo : STD_LOGIC;
  signal xsdb_drdy_xsdb_txfifo : STD_LOGIC;
  signal xsdb_status_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \xsdb_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \xsdb_status_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_10 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_11 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_12 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_13 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_14 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_15 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_16 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_2 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_3 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_4 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_5 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_6 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_7 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_8 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of U_XSDB_SLAVE_i_9 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of rst_xsdbfifo_reg1_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sts_flag_reg[0]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \sts_flag_reg[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sts_flag_reg[3]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of wr_axi_en_i_3 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of xsdb_drdy_ctrl_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of xsdb_drdy_reset_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of xsdb_drdy_status_reg_ff_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \xsdb_status_reg[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \xsdb_status_reg[10]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \xsdb_status_reg[11]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \xsdb_status_reg[12]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \xsdb_status_reg[13]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \xsdb_status_reg[14]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \xsdb_status_reg[15]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \xsdb_status_reg[15]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \xsdb_status_reg[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \xsdb_status_reg[2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \xsdb_status_reg[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \xsdb_status_reg[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \xsdb_status_reg[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \xsdb_status_reg[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \xsdb_status_reg[8]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \xsdb_status_reg[9]_i_1\ : label is "soft_lutpair78";
begin
  fifo_rst_xsdb <= \^fifo_rst_xsdb\;
  rd_axi_en <= \^rd_axi_en\;
  wr_axi_en <= \^wr_axi_en\;
U_XSDB_SLAVE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(15),
      I1 => rxfifo2xsdb_i_n_6,
      I2 => \select\,
      O => s_do_i(15)
    );
U_XSDB_SLAVE_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(6),
      I1 => rxfifo2xsdb_i_n_15,
      I2 => \select\,
      O => s_do_i(6)
    );
U_XSDB_SLAVE_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(5),
      I1 => rxfifo2xsdb_i_n_16,
      I2 => \select\,
      O => s_do_i(5)
    );
U_XSDB_SLAVE_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(4),
      I1 => rxfifo2xsdb_i_n_17,
      I2 => \select\,
      O => s_do_i(4)
    );
U_XSDB_SLAVE_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(3),
      I1 => rxfifo2xsdb_i_n_18,
      I2 => \select\,
      O => s_do_i(3)
    );
U_XSDB_SLAVE_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(2),
      I1 => rxfifo2xsdb_i_n_19,
      I2 => \select\,
      O => s_do_i(2)
    );
U_XSDB_SLAVE_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(1),
      I1 => rxfifo2xsdb_i_n_20,
      I2 => \select\,
      O => s_do_i(1)
    );
U_XSDB_SLAVE_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(0),
      I1 => rxfifo2xsdb_i_n_21,
      I2 => \select\,
      O => s_do_i(0)
    );
U_XSDB_SLAVE_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => U_XSDB_SLAVE_i_18_n_0,
      I1 => xsdb_drdy_xsdb_txfifo,
      I2 => xsdb2write_cmdfifo_n_0,
      I3 => xsdb_drdy_xsdb_rxfifo,
      O => s_drdy_i
    );
U_XSDB_SLAVE_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => xsdb2read_cmdfifo_n_0,
      I1 => xsdb_drdy_status_reg,
      I2 => xsdb_drdy_ctrl,
      I3 => xsdb_drdy_reset,
      O => U_XSDB_SLAVE_i_18_n_0
    );
U_XSDB_SLAVE_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(14),
      I1 => rxfifo2xsdb_i_n_7,
      I2 => \select\,
      O => s_do_i(14)
    );
U_XSDB_SLAVE_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(13),
      I1 => rxfifo2xsdb_i_n_8,
      I2 => \select\,
      O => s_do_i(13)
    );
U_XSDB_SLAVE_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(12),
      I1 => rxfifo2xsdb_i_n_9,
      I2 => \select\,
      O => s_do_i(12)
    );
U_XSDB_SLAVE_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(11),
      I1 => rxfifo2xsdb_i_n_10,
      I2 => \select\,
      O => s_do_i(11)
    );
U_XSDB_SLAVE_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(10),
      I1 => rxfifo2xsdb_i_n_11,
      I2 => \select\,
      O => s_do_i(10)
    );
U_XSDB_SLAVE_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(9),
      I1 => rxfifo2xsdb_i_n_12,
      I2 => \select\,
      O => s_do_i(9)
    );
U_XSDB_SLAVE_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(8),
      I1 => rxfifo2xsdb_i_n_13,
      I2 => \select\,
      O => s_do_i(8)
    );
U_XSDB_SLAVE_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => xsdb_status_reg(7),
      I1 => rxfifo2xsdb_i_n_14,
      I2 => \select\,
      O => s_do_i(7)
    );
axi_has_burst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => '1',
      Q => axi_has_burst,
      R => \^fifo_rst_xsdb\
    );
rd_axi_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(0),
      I1 => wr_axi_en_i_2_n_0,
      I2 => \sts_flag_reg[1]_i_1_n_0\,
      I3 => s_dwe_i,
      I4 => wr_axi_en_i_3_n_0,
      I5 => \^rd_axi_en\,
      O => rd_axi_en_i_1_n_0
    );
rd_axi_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rd_axi_en_i_1_n_0,
      Q => \^rd_axi_en\,
      R => \^fifo_rst_xsdb\
    );
rst_xsdbfifo_large_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_xsdbfifo_reg1,
      I1 => rst_xsdbfifo_reg3,
      I2 => rst_xsdbfifo_reg2,
      O => rst_xsdbfifo_large_i_1_n_0
    );
rst_xsdbfifo_large_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rst_xsdbfifo_large_i_1_n_0,
      Q => \^fifo_rst_xsdb\,
      R => '0'
    );
rst_xsdbfifo_reg1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(0),
      I1 => s_den_i,
      I2 => s_dwe_i,
      I3 => rst_xsdbfifo_reg10,
      O => rst_xsdbfifo_reg1_i_1_n_0
    );
rst_xsdbfifo_reg1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(7),
      I1 => \s_daddr_i_reg[7]\(6),
      I2 => \s_daddr_i_reg[7]\(5),
      I3 => wr_axi_en_i_2_n_0,
      I4 => \s_daddr_i_reg[7]\(1),
      I5 => \s_daddr_i_reg[7]\(0),
      O => rst_xsdbfifo_reg10
    );
rst_xsdbfifo_reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rst_xsdbfifo_reg1_i_1_n_0,
      Q => rst_xsdbfifo_reg1,
      R => '0'
    );
rst_xsdbfifo_reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rst_xsdbfifo_reg1,
      Q => rst_xsdbfifo_reg2,
      R => '0'
    );
rst_xsdbfifo_reg3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rst_xsdbfifo_reg2,
      Q => rst_xsdbfifo_reg3,
      R => '0'
    );
rxfifo2xsdb_i: entity work.jtag_axi_0_jtag_axi_v1_2_4_rxfifo2xsdb
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(15) => rxfifo2xsdb_i_n_6,
      Q(14) => rxfifo2xsdb_i_n_7,
      Q(13) => rxfifo2xsdb_i_n_8,
      Q(12) => rxfifo2xsdb_i_n_9,
      Q(11) => rxfifo2xsdb_i_n_10,
      Q(10) => rxfifo2xsdb_i_n_11,
      Q(9) => rxfifo2xsdb_i_n_12,
      Q(8) => rxfifo2xsdb_i_n_13,
      Q(7) => rxfifo2xsdb_i_n_14,
      Q(6) => rxfifo2xsdb_i_n_15,
      Q(5) => rxfifo2xsdb_i_n_16,
      Q(4) => rxfifo2xsdb_i_n_17,
      Q(3) => rxfifo2xsdb_i_n_18,
      Q(2) => rxfifo2xsdb_i_n_19,
      Q(1) => rxfifo2xsdb_i_n_20,
      Q(0) => rxfifo2xsdb_i_n_21,
      \gc0.count_d1_reg[7]\ => \gc0.count_d1_reg[7]\,
      \goreg_bm.dout_i_reg[31]\ => \goreg_bm.dout_i_reg[31]\,
      \out\(0) => \out\(0),
      rst_xsdbfifo_large_reg => \^fifo_rst_xsdb\,
      \rx_fifo_datain_ff_reg[0]_0\ => rxfifo2xsdb_i_n_3,
      rx_fifo_rden_reg_reg_0 => rx_fifo_rden_reg_reg,
      \s_daddr_i_reg[2]\ => \s_daddr_i_reg[2]\,
      \s_daddr_i_reg[3]\ => \s_daddr_i_reg[3]\,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      \s_daddr_i_reg[7]\(7 downto 0) => \s_daddr_i_reg[7]\(7 downto 0),
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i,
      \select\ => \select\,
      select_reg => rxfifo2xsdb_i_n_1,
      xsdb_den_status => xsdb_den_status,
      xsdb_drdy_xsdb_rxfifo => xsdb_drdy_xsdb_rxfifo
    );
select_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => rxfifo2xsdb_i_n_1,
      Q => \select\,
      R => '0'
    );
\status_reg_datain_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(0),
      Q => status_reg_datain_ff(0),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(10),
      Q => status_reg_datain_ff(10),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(11),
      Q => status_reg_datain_ff(11),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(12),
      Q => status_reg_datain_ff(12),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(13),
      Q => status_reg_datain_ff(13),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(14),
      Q => status_reg_datain_ff(14),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(15),
      Q => status_reg_datain_ff(15),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(1),
      Q => status_reg_datain_ff(1),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(2),
      Q => status_reg_datain_ff(2),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(3),
      Q => status_reg_datain_ff(3),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(4),
      Q => status_reg_datain_ff(4),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(5),
      Q => status_reg_datain_ff(5),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(6),
      Q => status_reg_datain_ff(6),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(7),
      Q => status_reg_datain_ff(7),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(8),
      Q => status_reg_datain_ff(8),
      R => \^fifo_rst_xsdb\
    );
\status_reg_datain_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \status_reg_datain_ff4_reg[15]\(9),
      Q => status_reg_datain_ff(9),
      R => \^fifo_rst_xsdb\
    );
\sts_flag_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(1),
      I1 => \s_daddr_i_reg[7]\(0),
      O => \sts_flag_reg[0]_i_1_n_0\
    );
\sts_flag_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(0),
      I1 => \s_daddr_i_reg[7]\(1),
      O => \sts_flag_reg[1]_i_1_n_0\
    );
\sts_flag_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(1),
      I1 => \s_daddr_i_reg[7]\(0),
      O => \sts_flag_reg[2]_i_1_n_0\
    );
\sts_flag_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(2),
      I1 => rxfifo2xsdb_i_n_3,
      I2 => \^fifo_rst_xsdb\,
      I3 => \s_daddr_i_reg[7]\(4),
      O => \sts_flag_reg[3]_i_1_n_0\
    );
\sts_flag_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(1),
      I1 => \s_daddr_i_reg[7]\(0),
      O => \sts_flag_reg[3]_i_2_n_0\
    );
\sts_flag_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(0),
      I1 => \s_daddr_i_reg[7]\(1),
      I2 => \^fifo_rst_xsdb\,
      I3 => \s_daddr_i_reg[7]\(4),
      I4 => \s_daddr_i_reg[7]\(2),
      I5 => rxfifo2xsdb_i_n_3,
      O => sts_flag_reg(4)
    );
\sts_flag_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(4),
      I1 => \^fifo_rst_xsdb\,
      I2 => \s_daddr_i_reg[7]\(1),
      I3 => \s_daddr_i_reg[7]\(0),
      I4 => \s_daddr_i_reg[7]\(2),
      I5 => rxfifo2xsdb_i_n_3,
      O => sts_flag_reg(5)
    );
\sts_flag_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(1),
      I1 => \s_daddr_i_reg[7]\(0),
      I2 => \^fifo_rst_xsdb\,
      I3 => \s_daddr_i_reg[7]\(4),
      I4 => \s_daddr_i_reg[7]\(2),
      I5 => rxfifo2xsdb_i_n_3,
      O => sts_flag_reg(6)
    );
\sts_flag_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \sts_flag_reg[0]_i_1_n_0\,
      Q => \sts_flag_reg_reg_n_0_[0]\,
      R => \sts_flag_reg[3]_i_1_n_0\
    );
\sts_flag_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \sts_flag_reg[1]_i_1_n_0\,
      Q => \sts_flag_reg_reg_n_0_[1]\,
      R => \sts_flag_reg[3]_i_1_n_0\
    );
\sts_flag_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \sts_flag_reg[2]_i_1_n_0\,
      Q => \sts_flag_reg_reg_n_0_[2]\,
      R => \sts_flag_reg[3]_i_1_n_0\
    );
\sts_flag_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \sts_flag_reg[3]_i_2_n_0\,
      Q => \sts_flag_reg_reg_n_0_[3]\,
      R => \sts_flag_reg[3]_i_1_n_0\
    );
\sts_flag_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => sts_flag_reg(4),
      Q => \sts_flag_reg_reg_n_0_[4]\,
      R => '0'
    );
\sts_flag_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => sts_flag_reg(5),
      Q => \sts_flag_reg_reg_n_0_[5]\,
      R => '0'
    );
\sts_flag_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => sts_flag_reg(6),
      Q => \sts_flag_reg_reg_n_0_[6]\,
      R => '0'
    );
wr_axi_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(0),
      I1 => wr_axi_en_i_2_n_0,
      I2 => \sts_flag_reg[2]_i_1_n_0\,
      I3 => s_dwe_i,
      I4 => wr_axi_en_i_3_n_0,
      I5 => \^wr_axi_en\,
      O => wr_axi_en_i_1_n_0
    );
wr_axi_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(3),
      I1 => \s_daddr_i_reg[7]\(4),
      I2 => \s_daddr_i_reg[7]\(2),
      O => wr_axi_en_i_2_n_0
    );
wr_axi_en_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(5),
      I1 => \s_daddr_i_reg[7]\(6),
      I2 => \s_daddr_i_reg[7]\(7),
      I3 => s_den_i,
      O => wr_axi_en_i_3_n_0
    );
wr_axi_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => wr_axi_en_i_1_n_0,
      Q => \^wr_axi_en\,
      R => \^fifo_rst_xsdb\
    );
xsdb2read_cmdfifo: entity work.\jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(63 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      p_20_out_0 => p_20_out_0,
      ram_full_fb_i_reg => ram_full_fb_i_reg_1,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rst_xsdbfifo_large_reg => \^fifo_rst_xsdb\,
      \s_daddr_i_reg[4]\(3) => \s_daddr_i_reg[7]\(4),
      \s_daddr_i_reg[4]\(2 downto 0) => \s_daddr_i_reg[7]\(2 downto 0),
      s_dclk_o => s_dclk_o,
      s_den_i_reg => rxfifo2xsdb_i_n_3,
      s_dwe_i => s_dwe_i,
      \sl_oport_o[0]_INST_0\ => xsdb2read_cmdfifo_n_0
    );
xsdb2txfifo_i: entity work.jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo
     port map (
      Q(15 downto 0) => Q(15 downto 0),
      \gic0.gc0.count_d1_reg[7]\ => \gic0.gc0.count_d1_reg[7]\,
      \gpr1.dout_i_reg[31]\(31 downto 0) => \gpr1.dout_i_reg[31]\(31 downto 0),
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rst_xsdbfifo_large_reg => \^fifo_rst_xsdb\,
      \s_daddr_i_reg[4]\(3) => \s_daddr_i_reg[7]\(4),
      \s_daddr_i_reg[4]\(2 downto 0) => \s_daddr_i_reg[7]\(2 downto 0),
      s_dclk_o => s_dclk_o,
      s_den_i_reg => rxfifo2xsdb_i_n_3,
      s_dwe_i => s_dwe_i,
      tx_fifo_wr => tx_fifo_wr,
      xsdb_drdy_xsdb_txfifo => xsdb_drdy_xsdb_txfifo
    );
xsdb2write_cmdfifo: entity work.\jtag_axi_0_jtag_axi_v1_2_4_xsdb2txfifo__parameterized0_1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      p_20_out => p_20_out,
      ram_full_fb_i_reg => ram_full_fb_i_reg_0,
      rst_xsdbfifo_large_reg => \^fifo_rst_xsdb\,
      \s_daddr_i_reg[4]\(3) => \s_daddr_i_reg[7]\(4),
      \s_daddr_i_reg[4]\(2 downto 0) => \s_daddr_i_reg[7]\(2 downto 0),
      s_dclk_o => s_dclk_o,
      s_den_i_reg => rxfifo2xsdb_i_n_3,
      s_dwe_i => s_dwe_i,
      \sl_oport_o[0]_INST_0\ => xsdb2write_cmdfifo_n_0,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i
    );
xsdb_drdy_ctrl_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_den_i,
      I1 => s_dwe_i,
      O => p_2_in
    );
xsdb_drdy_ctrl_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => p_2_in,
      Q => xsdb_drdy_ctrl,
      R => '0'
    );
xsdb_drdy_reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_dwe_i,
      I1 => s_den_i,
      I2 => rst_xsdbfifo_reg10,
      O => xsdb_drdy_reset_i_1_n_0
    );
xsdb_drdy_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => xsdb_drdy_reset_i_1_n_0,
      Q => xsdb_drdy_reset,
      R => '0'
    );
xsdb_drdy_status_reg_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0007000F"
    )
        port map (
      I0 => \s_daddr_i_reg[7]\(1),
      I1 => \s_daddr_i_reg[7]\(0),
      I2 => \s_daddr_i_reg[7]\(4),
      I3 => rxfifo2xsdb_i_n_3,
      I4 => \s_daddr_i_reg[7]\(2),
      O => xsdb_den_status
    );
xsdb_drdy_status_reg_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => xsdb_den_status,
      Q => xsdb_drdy_status_reg_ff,
      R => \^fifo_rst_xsdb\
    );
xsdb_drdy_status_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => xsdb_drdy_status_reg_ff,
      Q => xsdb_drdy_status_reg,
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \xsdb_status_reg[0]_i_2_n_0\,
      I1 => \xsdb_status_reg[0]_i_3_n_0\,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(0),
      O => \xsdb_status_reg[0]_i_1_n_0\
    );
\xsdb_status_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_reg_datain_ff(0),
      I1 => \sts_flag_reg_reg_n_0_[0]\,
      I2 => \sts_flag_reg_reg_n_0_[2]\,
      I3 => status_reg_datain_ff(2),
      I4 => \sts_flag_reg_reg_n_0_[1]\,
      I5 => status_reg_datain_ff(1),
      O => \xsdb_status_reg[0]_i_2_n_0\
    );
\xsdb_status_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_reg_datain_ff(4),
      I1 => \sts_flag_reg_reg_n_0_[3]\,
      I2 => \sts_flag_reg_reg_n_0_[5]\,
      I3 => status_reg_datain_ff(6),
      I4 => \sts_flag_reg_reg_n_0_[4]\,
      I5 => status_reg_datain_ff(5),
      O => \xsdb_status_reg[0]_i_3_n_0\
    );
\xsdb_status_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(10),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[10]_i_1_n_0\
    );
\xsdb_status_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(11),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[11]_i_1_n_0\
    );
\xsdb_status_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(12),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[12]_i_1_n_0\
    );
\xsdb_status_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[6]\,
      I1 => axi_has_burst,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(13),
      O => \xsdb_status_reg[13]_i_1_n_0\
    );
\xsdb_status_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(14),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[14]_i_1_n_0\
    );
\xsdb_status_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(15),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[15]_i_1_n_0\
    );
\xsdb_status_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[0]\,
      I1 => \sts_flag_reg_reg_n_0_[1]\,
      I2 => \sts_flag_reg_reg_n_0_[2]\,
      I3 => \xsdb_status_reg[15]_i_3_n_0\,
      I4 => \xsdb_status_reg[15]_i_4_n_0\,
      O => \xsdb_status_reg[15]_i_2_n_0\
    );
\xsdb_status_reg[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[4]\,
      I2 => \sts_flag_reg_reg_n_0_[5]\,
      I3 => \sts_flag_reg_reg_n_0_[6]\,
      O => \xsdb_status_reg[15]_i_3_n_0\
    );
\xsdb_status_reg[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[4]\,
      I2 => \sts_flag_reg_reg_n_0_[5]\,
      I3 => \sts_flag_reg_reg_n_0_[6]\,
      O => \xsdb_status_reg[15]_i_4_n_0\
    );
\xsdb_status_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \xsdb_status_reg[1]_i_2_n_0\,
      I1 => \xsdb_status_reg[1]_i_3_n_0\,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(1),
      O => \xsdb_status_reg[1]_i_1_n_0\
    );
\xsdb_status_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[0]\,
      I1 => \sts_flag_reg_reg_n_0_[2]\,
      I2 => status_reg_datain_ff(3),
      I3 => \sts_flag_reg_reg_n_0_[1]\,
      I4 => status_reg_datain_ff(8),
      O => \xsdb_status_reg[1]_i_2_n_0\
    );
\xsdb_status_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[5]\,
      I2 => status_reg_datain_ff(7),
      I3 => \sts_flag_reg_reg_n_0_[4]\,
      I4 => status_reg_datain_ff(12),
      O => \xsdb_status_reg[1]_i_3_n_0\
    );
\xsdb_status_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \xsdb_status_reg[2]_i_2_n_0\,
      I1 => \xsdb_status_reg[2]_i_3_n_0\,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(2),
      O => \xsdb_status_reg[2]_i_1_n_0\
    );
\xsdb_status_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[0]\,
      I1 => \sts_flag_reg_reg_n_0_[2]\,
      I2 => status_reg_datain_ff(8),
      I3 => \sts_flag_reg_reg_n_0_[1]\,
      I4 => status_reg_datain_ff(9),
      O => \xsdb_status_reg[2]_i_2_n_0\
    );
\xsdb_status_reg[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[5]\,
      I2 => status_reg_datain_ff(12),
      I3 => \sts_flag_reg_reg_n_0_[4]\,
      I4 => status_reg_datain_ff(13),
      O => \xsdb_status_reg[2]_i_3_n_0\
    );
\xsdb_status_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \xsdb_status_reg[3]_i_2_n_0\,
      I1 => \xsdb_status_reg[3]_i_3_n_0\,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(3),
      O => \xsdb_status_reg[3]_i_1_n_0\
    );
\xsdb_status_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[0]\,
      I1 => \sts_flag_reg_reg_n_0_[2]\,
      I2 => status_reg_datain_ff(9),
      I3 => \sts_flag_reg_reg_n_0_[1]\,
      I4 => status_reg_datain_ff(10),
      O => \xsdb_status_reg[3]_i_2_n_0\
    );
\xsdb_status_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[5]\,
      I2 => status_reg_datain_ff(13),
      I3 => \sts_flag_reg_reg_n_0_[4]\,
      I4 => status_reg_datain_ff(14),
      O => \xsdb_status_reg[3]_i_3_n_0\
    );
\xsdb_status_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \xsdb_status_reg[4]_i_2_n_0\,
      I1 => \xsdb_status_reg[4]_i_3_n_0\,
      I2 => \xsdb_status_reg[15]_i_2_n_0\,
      I3 => status_reg_datain_ff(4),
      O => \xsdb_status_reg[4]_i_1_n_0\
    );
\xsdb_status_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[0]\,
      I1 => \sts_flag_reg_reg_n_0_[2]\,
      I2 => status_reg_datain_ff(10),
      I3 => \sts_flag_reg_reg_n_0_[1]\,
      I4 => status_reg_datain_ff(11),
      O => \xsdb_status_reg[4]_i_2_n_0\
    );
\xsdb_status_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAC0C0"
    )
        port map (
      I0 => \sts_flag_reg_reg_n_0_[3]\,
      I1 => \sts_flag_reg_reg_n_0_[5]\,
      I2 => status_reg_datain_ff(14),
      I3 => \sts_flag_reg_reg_n_0_[4]\,
      I4 => status_reg_datain_ff(15),
      O => \xsdb_status_reg[4]_i_3_n_0\
    );
\xsdb_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => status_reg_datain_ff(11),
      I1 => \sts_flag_reg_reg_n_0_[2]\,
      I2 => status_reg_datain_ff(15),
      I3 => \sts_flag_reg_reg_n_0_[5]\,
      I4 => \xsdb_status_reg[15]_i_2_n_0\,
      I5 => status_reg_datain_ff(5),
      O => \xsdb_status_reg[5]_i_1_n_0\
    );
\xsdb_status_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(6),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[6]_i_1_n_0\
    );
\xsdb_status_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(7),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[7]_i_1_n_0\
    );
\xsdb_status_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(8),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[8]_i_1_n_0\
    );
\xsdb_status_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_reg_datain_ff(9),
      I1 => \xsdb_status_reg[15]_i_2_n_0\,
      O => \xsdb_status_reg[9]_i_1_n_0\
    );
\xsdb_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[0]_i_1_n_0\,
      Q => xsdb_status_reg(0),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[10]_i_1_n_0\,
      Q => xsdb_status_reg(10),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[11]_i_1_n_0\,
      Q => xsdb_status_reg(11),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[12]_i_1_n_0\,
      Q => xsdb_status_reg(12),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[13]_i_1_n_0\,
      Q => xsdb_status_reg(13),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[14]_i_1_n_0\,
      Q => xsdb_status_reg(14),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[15]_i_1_n_0\,
      Q => xsdb_status_reg(15),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[1]_i_1_n_0\,
      Q => xsdb_status_reg(1),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[2]_i_1_n_0\,
      Q => xsdb_status_reg(2),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[3]_i_1_n_0\,
      Q => xsdb_status_reg(3),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[4]_i_1_n_0\,
      Q => xsdb_status_reg(4),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[5]_i_1_n_0\,
      Q => xsdb_status_reg(5),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[6]_i_1_n_0\,
      Q => xsdb_status_reg(6),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[7]_i_1_n_0\,
      Q => xsdb_status_reg(7),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[8]_i_1_n_0\,
      Q => xsdb_status_reg(8),
      R => \^fifo_rst_xsdb\
    );
\xsdb_status_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_dclk_o,
      CE => '1',
      D => \xsdb_status_reg[9]_i_1_n_0\,
      Q => xsdb_status_reg(9),
      R => \^fifo_rst_xsdb\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_memory is
  port (
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    p_0_out_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_13_out : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gic0.gc0.count_d2_reg[7]\ : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    dm_rd_en : in STD_LOGIC;
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_memory : entity is "memory";
end jtag_axi_0_memory;

architecture STRUCTURE of jtag_axi_0_memory is
  signal dout_i : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.jtag_axi_0_dmem
     port map (
      D(31 downto 0) => dout_i(31 downto 0),
      aclk => aclk,
      dm_rd_en => dm_rd_en,
      \gic0.gc0.count_d2_reg[6]\ => \gic0.gc0.count_d2_reg[6]\,
      \gic0.gc0.count_d2_reg[7]\ => \gic0.gc0.count_d2_reg[7]\,
      p_0_out_0(7 downto 0) => p_0_out_0(7 downto 0),
      p_13_out(5 downto 0) => p_13_out(5 downto 0),
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_0,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => \tx_fifo_dataout_reg[31]\(31 downto 0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(0),
      Q => m_axi_wdata(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(10),
      Q => m_axi_wdata(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(11),
      Q => m_axi_wdata(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(12),
      Q => m_axi_wdata(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(13),
      Q => m_axi_wdata(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(14),
      Q => m_axi_wdata(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(15),
      Q => m_axi_wdata(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(16),
      Q => m_axi_wdata(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(17),
      Q => m_axi_wdata(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(18),
      Q => m_axi_wdata(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(19),
      Q => m_axi_wdata(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(1),
      Q => m_axi_wdata(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(20),
      Q => m_axi_wdata(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(21),
      Q => m_axi_wdata(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(22),
      Q => m_axi_wdata(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(23),
      Q => m_axi_wdata(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(24),
      Q => m_axi_wdata(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(25),
      Q => m_axi_wdata(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(26),
      Q => m_axi_wdata(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(27),
      Q => m_axi_wdata(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(28),
      Q => m_axi_wdata(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(29),
      Q => m_axi_wdata(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(2),
      Q => m_axi_wdata(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(30),
      Q => m_axi_wdata(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(31),
      Q => m_axi_wdata(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(3),
      Q => m_axi_wdata(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(4),
      Q => m_axi_wdata(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(5),
      Q => m_axi_wdata(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(6),
      Q => m_axi_wdata(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(7),
      Q => m_axi_wdata(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(8),
      Q => m_axi_wdata(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => dout_i(9),
      Q => m_axi_wdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    dm_rd_en : out STD_LOGIC;
    p_0_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dest_out_bin_ff_reg[6]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[4]\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_logic : entity is "rd_logic";
end jtag_axi_0_rd_logic;

architecture STRUCTURE of jtag_axi_0_rd_logic is
  signal \^dm_rd_en\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
begin
  dm_rd_en <= \^dm_rd_en\;
\gr1.gr1_int.rfwft\: entity work.jtag_axi_0_rd_fwft_2
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      aclk => aclk,
      \gc0.count_reg[0]\ => \^dm_rd_en\,
      m_axi_wready => m_axi_wready,
      \out\(1) => \gr1.gr1_int.rfwft_n_0\,
      \out\(0) => \out\(0),
      ram_empty_fb_i_reg => p_2_out
    );
\gras.rsts\: entity work.jtag_axi_0_rd_status_flags_as
     port map (
      aclk => aclk,
      \dest_out_bin_ff_reg[6]\ => \dest_out_bin_ff_reg[6]\,
      \out\ => p_2_out
    );
rpntr: entity work.jtag_axi_0_rd_bin_cntr
     port map (
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      \dest_out_bin_ff_reg[4]\ => \dest_out_bin_ff_reg[4]\,
      \gc0.count_d1_reg[1]_0\ => \gc0.count_d1_reg[4]\(0),
      \gc0.count_d1_reg[2]_0\ => \gc0.count_d1_reg[4]\(1),
      \gc0.count_d1_reg[3]_0\ => \gc0.count_d1_reg[4]\(2),
      \gc0.count_d1_reg[4]_0\ => \gc0.count_d1_reg[4]\(3),
      \gpregsm1.curr_fwft_state_reg[1]\ => \^dm_rd_en\,
      \out\(0) => \gr1.gr1_int.rfwft_n_0\,
      p_0_out_0(7 downto 0) => p_0_out_0(7 downto 0),
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_rd_logic_3 is
  port (
    \out\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_1\ : out STD_LOGIC;
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_i_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_rd_logic_3 : entity is "rd_logic";
end jtag_axi_0_rd_logic_3;

architecture STRUCTURE of jtag_axi_0_rd_logic_3 is
  signal \^gc0.count_d1_reg[7]_0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[7]_1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
begin
  \gc0.count_d1_reg[7]_0\ <= \^gc0.count_d1_reg[7]_0\;
  \gc0.count_d1_reg[7]_1\ <= \^gc0.count_d1_reg[7]_1\;
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.jtag_axi_0_rd_fwft_7
     port map (
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      Q(4 downto 2) => Q(7 downto 5),
      Q(1 downto 0) => Q(3 downto 2),
      SR(0) => SR(0),
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[2]\ => \count_reg[2]\,
      \out\(1 downto 0) => \gc0.count_d1_reg[7]\(1 downto 0),
      p_8_out => p_8_out,
      ram_empty_fb_i_reg => \^out\,
      rx_fifo_rden_reg_reg => rx_fifo_rden_reg_reg,
      \s_daddr_i_reg[2]\ => \^gc0.count_d1_reg[7]_1\,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      \s_daddr_i_reg[4]_0\ => \^gc0.count_d1_reg[7]_0\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i
    );
\gras.rsts\: entity work.jtag_axi_0_rd_status_flags_as_8
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      \gc0.count_d1_reg[7]\ => \^gc0.count_d1_reg[7]_0\,
      \gc0.count_d1_reg[7]_0\ => \^gc0.count_d1_reg[7]_1\,
      \gpregsm1.curr_fwft_state_reg[1]\ => \gpregsm1.curr_fwft_state_reg[1]\,
      \out\ => \^out\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
rpntr: entity work.jtag_axi_0_rd_bin_cntr_9
     port map (
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR_RD(2 downto 0) => WR_PNTR_RD(2 downto 0),
      \gc0.count_d1_reg[0]_0\ => \gc0.count_d1_reg[4]\(0),
      \gc0.count_d1_reg[1]_0\ => \gc0.count_d1_reg[4]\(1),
      \gc0.count_d1_reg[2]_0\ => \gc0.count_d1_reg[4]\(2),
      \gc0.count_d1_reg[3]_0\ => \gc0.count_d1_reg[4]\(3),
      \gc0.count_d1_reg[4]_0\ => \gc0.count_d1_reg[4]\(4),
      p_8_out => p_8_out,
      ram_empty_i_reg => ram_empty_i_reg,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ENB_I : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    \wr_qid_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_logic__parameterized0\ : entity is "rd_logic";
end \jtag_axi_0_rd_logic__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_rd_logic__parameterized0\ is
  signal \gr1.gr1_int.rfwft_n_4\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.jtag_axi_0_rd_fwft
     port map (
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(0) => axi_wr_resp(0),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => cmd_valid_wr_ch_d_reg,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_8_out => p_8_out,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gr1.gr1_int.rfwft_n_4\,
      \s_axi_wr_resp_reg[0]\ => \s_axi_wr_resp_reg[0]\,
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      \wr_qid_reg[0]\(0) => \wr_qid_reg[0]\(0),
      wr_sts_flag_reg => wr_sts_flag_reg,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_0
    );
\gras.rsts\: entity work.\jtag_axi_0_rd_status_flags_as__parameterized0\
     port map (
      aclk => aclk,
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      \out\ => p_2_out
    );
rpntr: entity work.\jtag_axi_0_rd_bin_cntr__parameterized0\
     port map (
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      aclk => aclk,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_4\,
      \out\ => p_2_out,
      p_8_out => p_8_out,
      ram_empty_i_reg => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_rd_logic__parameterized0_10\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    ENB_I : out STD_LOGIC;
    \rd_qid_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    RD_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_rd_logic__parameterized0_10\ : entity is "rd_logic";
end \jtag_axi_0_rd_logic__parameterized0_10\;

architecture STRUCTURE of \jtag_axi_0_rd_logic__parameterized0_10\ is
  signal \gr1.gr1_int.rfwft_n_4\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.jtag_axi_0_rd_fwft_21
     port map (
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      aclk => aclk,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      \out\ => \out\,
      p_8_out => p_8_out,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gr1.gr1_int.rfwft_n_4\,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => \rd_cmd_fifo_data_out_reg[0]\(0),
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      \rd_qid_reg[0]\(0) => \rd_qid_reg[0]\(0),
      rd_sts_flag_reg => rd_sts_flag_reg,
      rd_sts_flag_reg_0 => rd_sts_flag_reg_0
    );
\gras.rsts\: entity work.\jtag_axi_0_rd_status_flags_as__parameterized0_22\
     port map (
      aclk => aclk,
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      \out\ => p_2_out
    );
rpntr: entity work.\jtag_axi_0_rd_bin_cntr__parameterized0_23\
     port map (
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR_RD(3 downto 0) => WR_PNTR_RD(3 downto 0),
      aclk => aclk,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_4\,
      \out\ => p_2_out,
      p_8_out => p_8_out,
      ram_empty_i_reg => ram_empty_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_logic is
  port (
    \out\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]\ : out STD_LOGIC;
    p_13_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpr1.dout_i_reg[31]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_1\ : out STD_LOGIC;
    \gpr1.dout_i_reg[31]_2\ : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_logic : entity is "wr_logic";
end jtag_axi_0_wr_logic;

architecture STRUCTURE of jtag_axi_0_wr_logic is
  signal \^out\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  \out\ <= \^out\;
\gwas.wsts\: entity work.jtag_axi_0_wr_status_flags_as
     port map (
      \gic0.gc0.count_d1_reg[5]\ => wpntr_n_0,
      \out\ => \^out\,
      s_dclk_o => s_dclk_o
    );
wpntr: entity work.jtag_axi_0_wr_bin_cntr
     port map (
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      \gpr1.dout_i_reg[31]\ => \gpr1.dout_i_reg[31]\,
      \gpr1.dout_i_reg[31]_0\ => \gpr1.dout_i_reg[31]_0\,
      \gpr1.dout_i_reg[31]_1\ => \gpr1.dout_i_reg[31]_1\,
      \gpr1.dout_i_reg[31]_2\ => \gpr1.dout_i_reg[31]_2\,
      \out\ => \^out\,
      p_13_out(5 downto 0) => p_13_out(5 downto 0),
      ram_full_i_reg => wpntr_n_0,
      s_dclk_o => s_dclk_o,
      \src_gray_ff_reg[6]\ => p_13_out(6),
      \src_gray_ff_reg[7]\ => p_13_out(7),
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => tx_fifowren_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_wr_logic_4 is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_wr_logic_4 : entity is "wr_logic";
end jtag_axi_0_wr_logic_4;

architecture STRUCTURE of jtag_axi_0_wr_logic_4 is
  signal \^device_7series.no_bmm_info.sdp.wide_prim18.ram\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ <= \^device_7series.no_bmm_info.sdp.wide_prim18.ram\;
\gwas.wsts\: entity work.jtag_axi_0_wr_status_flags_as_5
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \^device_7series.no_bmm_info.sdp.wide_prim18.ram\,
      ENA_I => ENA_I,
      ENB_dly_D_0 => ENB_dly_D_0,
      aclk => aclk,
      \gic0.gc0.count_d1_reg[5]\ => wpntr_n_0,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
wpntr: entity work.jtag_axi_0_wr_bin_cntr_6
     port map (
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      ram_full_fb_i_reg => \^device_7series.no_bmm_info.sdp.wide_prim18.ram\,
      ram_full_i_reg => wpntr_n_0,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_logic__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dclk_o : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_logic__parameterized0\ : entity is "wr_logic";
end \jtag_axi_0_wr_logic__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_wr_logic__parameterized0\ is
  signal \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ <= \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\;
\gwas.wsts\: entity work.\jtag_axi_0_wr_status_flags_as__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\,
      ENA_I => ENA_I,
      ENB_dly_D_0 => ENB_dly_D_0,
      \gic0.gc0.count_d1_reg[2]\ => wpntr_n_0,
      s_dclk_o => s_dclk_o,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i
    );
wpntr: entity work.\jtag_axi_0_wr_bin_cntr__parameterized0\
     port map (
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      p_20_out => p_20_out,
      ram_full_fb_i_reg => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\,
      ram_full_i_reg => wpntr_n_0,
      s_dclk_o => s_dclk_o,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_wr_logic__parameterized0_11\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    WR_PNTR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_dclk_o : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_wr_logic__parameterized0_11\ : entity is "wr_logic";
end \jtag_axi_0_wr_logic__parameterized0_11\;

architecture STRUCTURE of \jtag_axi_0_wr_logic__parameterized0_11\ is
  signal \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ <= \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\;
\gwas.wsts\: entity work.\jtag_axi_0_wr_status_flags_as__parameterized0_19\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\,
      ENA_I => ENA_I,
      ENB_dly_D_0 => ENB_dly_D_0,
      \gic0.gc0.count_d1_reg[2]\ => wpntr_n_0,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      s_dclk_o => s_dclk_o
    );
wpntr: entity work.\jtag_axi_0_wr_bin_cntr__parameterized0_20\
     port map (
      RD_PNTR_WR(3 downto 0) => RD_PNTR_WR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      p_20_out => p_20_out,
      ram_full_fb_i_reg => \^device_7series.no_bmm_info.sdp.wide_prim36_no_ecc.ram\,
      ram_full_i_reg => wpntr_n_0,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end jtag_axi_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.jtag_axi_0_blk_mem_gen_prim_width
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0\ is
begin
\ramloop[0].ram.r\: entity work.\jtag_axi_0_blk_mem_gen_prim_width__parameterized0\
     port map (
      D(53 downto 0) => D(53 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0_16\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0_16\ : entity is "blk_mem_gen_generic_cstr";
end \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0_16\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0_16\ is
begin
\ramloop[0].ram.r\: entity work.\jtag_axi_0_blk_mem_gen_prim_width__parameterized0_17\
     port map (
      D(63 downto 0) => D(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_fifo_generator_ramfifo is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end jtag_axi_0_fifo_generator_ramfifo;

architecture STRUCTURE of jtag_axi_0_fifo_generator_ramfifo is
  signal dm_rd_en : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_10\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_11\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_12\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 1 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.jtag_axi_0_clk_x_pntrs
     port map (
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      WR_PNTR_RD(3 downto 1) => p_24_out(7 downto 5),
      WR_PNTR_RD(0) => p_24_out(0),
      aclk => aclk,
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_6\,
      p_0_out_0(7 downto 0) => p_0_out_0(7 downto 0),
      p_13_out(7 downto 0) => p_13_out(7 downto 0),
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_empty_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      ram_empty_i_reg_1 => \gntv_or_sync_fifo.gcx.clkx_n_6\,
      rd_pntr_plus1(3 downto 0) => rd_pntr_plus1(4 downto 1),
      s_dclk_o => s_dclk_o
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.jtag_axi_0_rd_logic
     port map (
      E(0) => p_6_out,
      Q(0) => Q(0),
      WR_PNTR_RD(3 downto 1) => p_24_out(7 downto 5),
      WR_PNTR_RD(0) => p_24_out(0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_5\,
      \dest_out_bin_ff_reg[4]\ => \gntv_or_sync_fifo.gcx.clkx_n_6\,
      \dest_out_bin_ff_reg[6]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      dm_rd_en => dm_rd_en,
      \gc0.count_d1_reg[4]\(3 downto 0) => rd_pntr_plus1(4 downto 1),
      m_axi_wready => m_axi_wready,
      \out\(0) => \out\(0),
      p_0_out_0(7 downto 0) => p_0_out_0(7 downto 0),
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.rd_n_6\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.jtag_axi_0_wr_logic
     port map (
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      \gpr1.dout_i_reg[31]\ => \gntv_or_sync_fifo.gl0.wr_n_1\,
      \gpr1.dout_i_reg[31]_0\ => \gntv_or_sync_fifo.gl0.wr_n_10\,
      \gpr1.dout_i_reg[31]_1\ => \gntv_or_sync_fifo.gl0.wr_n_11\,
      \gpr1.dout_i_reg[31]_2\ => \gntv_or_sync_fifo.gl0.wr_n_12\,
      \out\ => \gic0.gc0.count_d1_reg[7]\,
      p_13_out(7 downto 0) => p_13_out(7 downto 0),
      s_dclk_o => s_dclk_o,
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => tx_fifowren_reg
    );
\gntv_or_sync_fifo.mem\: entity work.jtag_axi_0_memory
     port map (
      E(0) => p_6_out,
      aclk => aclk,
      dm_rd_en => dm_rd_en,
      \gic0.gc0.count_d2_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_11\,
      \gic0.gc0.count_d2_reg[7]\ => \gntv_or_sync_fifo.gl0.wr_n_10\,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      p_0_out_0(7 downto 0) => p_0_out_0(7 downto 0),
      p_13_out(5 downto 0) => p_13_out(5 downto 0),
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_12\,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => \tx_fifo_dataout_reg[31]\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end jtag_axi_0_blk_mem_gen_top;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.jtag_axi_0_blk_mem_gen_generic_cstr
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_top__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \jtag_axi_0_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      D(53 downto 0) => D(53 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_top__parameterized0_15\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_top__parameterized0_15\ : entity is "blk_mem_gen_top";
end \jtag_axi_0_blk_mem_gen_top__parameterized0_15\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_top__parameterized0_15\ is
begin
\valid.cstr\: entity work.\jtag_axi_0_blk_mem_gen_generic_cstr__parameterized0_16\
     port map (
      D(63 downto 0) => D(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_fifo_generator_top is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_fifo_generator_top : entity is "fifo_generator_top";
end jtag_axi_0_fifo_generator_top;

architecture STRUCTURE of jtag_axi_0_fifo_generator_top is
begin
\grf.rf\: entity work.jtag_axi_0_fifo_generator_ramfifo
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \gic0.gc0.count_d1_reg[7]\ => \gic0.gc0.count_d1_reg[7]\,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      \out\(0) => \out\(0),
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => \tx_fifo_dataout_reg[31]\(31 downto 0),
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => tx_fifowren_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_v8_4_0_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_v8_4_0_synth : entity is "blk_mem_gen_v8_4_0_synth";
end jtag_axi_0_blk_mem_gen_v8_4_0_synth;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_v8_4_0_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.jtag_axi_0_blk_mem_gen_top
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0\ : entity is "blk_mem_gen_v8_4_0_synth";
end \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\jtag_axi_0_blk_mem_gen_top__parameterized0\
     port map (
      D(53 downto 0) => D(53 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0_14\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0_14\ : entity is "blk_mem_gen_v8_4_0_synth";
end \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0_14\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0_14\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\jtag_axi_0_blk_mem_gen_top__parameterized0_15\
     port map (
      D(63 downto 0) => D(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_fifo_generator_v13_2_0_synth is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_fifo_generator_v13_2_0_synth : entity is "fifo_generator_v13_2_0_synth";
end jtag_axi_0_fifo_generator_v13_2_0_synth;

architecture STRUCTURE of jtag_axi_0_fifo_generator_v13_2_0_synth is
begin
\gconvfifo.rf\: entity work.jtag_axi_0_fifo_generator_top
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \gic0.gc0.count_d1_reg[7]\ => \gic0.gc0.count_d1_reg[7]\,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      \out\(0) => \out\(0),
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => \tx_fifo_dataout_reg[31]\(31 downto 0),
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => tx_fifowren_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_blk_mem_gen_v8_4_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENB_dly_D : out STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_blk_mem_gen_v8_4_0 : entity is "blk_mem_gen_v8_4_0";
end jtag_axi_0_blk_mem_gen_v8_4_0;

architecture STRUCTURE of jtag_axi_0_blk_mem_gen_v8_4_0 is
begin
inst_blk_mem_gen: entity work.jtag_axi_0_blk_mem_gen_v8_4_0_synth
     port map (
      D(31 downto 0) => D(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 53 downto 0 );
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1\ : entity is "blk_mem_gen_v8_4_0";
end \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1\ is
begin
inst_blk_mem_gen: entity work.\jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0\
     port map (
      D(53 downto 0) => D(53 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1_13\ is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1_13\ : entity is "blk_mem_gen_v8_4_0";
end \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1_13\;

architecture STRUCTURE of \jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1_13\ is
begin
inst_blk_mem_gen: entity work.\jtag_axi_0_blk_mem_gen_v8_4_0_synth__parameterized0_14\
     port map (
      D(63 downto 0) => D(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_fifo_generator_v13_2_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc0.count_d1_reg[7]\ : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    tx_fifo_wr : in STD_LOGIC;
    tx_fifowren_reg : in STD_LOGIC;
    \tx_fifo_dataout_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_fifo_generator_v13_2_0 : entity is "fifo_generator_v13_2_0";
end jtag_axi_0_fifo_generator_v13_2_0;

architecture STRUCTURE of jtag_axi_0_fifo_generator_v13_2_0 is
begin
inst_fifo_gen: entity work.jtag_axi_0_fifo_generator_v13_2_0_synth
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \gic0.gc0.count_d1_reg[7]\ => \gic0.gc0.count_d1_reg[7]\,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      \out\(0) => \out\(0),
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => \tx_fifo_dataout_reg[31]\(31 downto 0),
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => tx_fifowren_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_memory__parameterized0\ is
  port (
    ENB_dly_D : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_memory__parameterized0\ : entity is "memory";
end \jtag_axi_0_memory__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_memory__parameterized0\ is
  signal doutb : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.jtag_axi_0_blk_mem_gen_v8_4_0
     port map (
      D(31 downto 0) => doutb(31 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => RD_PNTR(7 downto 0),
      WR_PNTR(7 downto 0) => WR_PNTR(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(0),
      Q => \rx_fifo_datain_ff_reg[31]\(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(10),
      Q => \rx_fifo_datain_ff_reg[31]\(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(11),
      Q => \rx_fifo_datain_ff_reg[31]\(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(12),
      Q => \rx_fifo_datain_ff_reg[31]\(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(13),
      Q => \rx_fifo_datain_ff_reg[31]\(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(14),
      Q => \rx_fifo_datain_ff_reg[31]\(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(15),
      Q => \rx_fifo_datain_ff_reg[31]\(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(16),
      Q => \rx_fifo_datain_ff_reg[31]\(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(17),
      Q => \rx_fifo_datain_ff_reg[31]\(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(18),
      Q => \rx_fifo_datain_ff_reg[31]\(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(19),
      Q => \rx_fifo_datain_ff_reg[31]\(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(1),
      Q => \rx_fifo_datain_ff_reg[31]\(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(20),
      Q => \rx_fifo_datain_ff_reg[31]\(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(21),
      Q => \rx_fifo_datain_ff_reg[31]\(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(22),
      Q => \rx_fifo_datain_ff_reg[31]\(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(23),
      Q => \rx_fifo_datain_ff_reg[31]\(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(24),
      Q => \rx_fifo_datain_ff_reg[31]\(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(25),
      Q => \rx_fifo_datain_ff_reg[31]\(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(26),
      Q => \rx_fifo_datain_ff_reg[31]\(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(27),
      Q => \rx_fifo_datain_ff_reg[31]\(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(28),
      Q => \rx_fifo_datain_ff_reg[31]\(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(29),
      Q => \rx_fifo_datain_ff_reg[31]\(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(2),
      Q => \rx_fifo_datain_ff_reg[31]\(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(30),
      Q => \rx_fifo_datain_ff_reg[31]\(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(31),
      Q => \rx_fifo_datain_ff_reg[31]\(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(3),
      Q => \rx_fifo_datain_ff_reg[31]\(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(4),
      Q => \rx_fifo_datain_ff_reg[31]\(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(5),
      Q => \rx_fifo_datain_ff_reg[31]\(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(6),
      Q => \rx_fifo_datain_ff_reg[31]\(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(7),
      Q => \rx_fifo_datain_ff_reg[31]\(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(8),
      Q => \rx_fifo_datain_ff_reg[31]\(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_dclk_o,
      CE => E(0),
      D => doutb(9),
      Q => \rx_fifo_datain_ff_reg[31]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_memory__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_memory__parameterized1\ : entity is "memory";
end \jtag_axi_0_memory__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_memory__parameterized1\ is
  signal doutb : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1\
     port map (
      D(53 downto 5) => doutb(63 downto 15),
      D(4) => doutb(11),
      D(3 downto 0) => doutb(3 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(0),
      Q => Q(0),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(11),
      Q => Q(4),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(15),
      Q => Q(5),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(16),
      Q => Q(6),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(17),
      Q => Q(7),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(18),
      Q => Q(8),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(19),
      Q => Q(9),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(1),
      Q => Q(1),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(20),
      Q => Q(10),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(21),
      Q => Q(11),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(22),
      Q => Q(12),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(23),
      Q => Q(13),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(24),
      Q => Q(14),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(25),
      Q => Q(15),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(26),
      Q => Q(16),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(27),
      Q => Q(17),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(28),
      Q => Q(18),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(29),
      Q => Q(19),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(2),
      Q => Q(2),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(30),
      Q => Q(20),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(31),
      Q => Q(21),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(32),
      Q => Q(22),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(33),
      Q => Q(23),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(34),
      Q => Q(24),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(35),
      Q => Q(25),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(36),
      Q => Q(26),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(37),
      Q => Q(27),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(38),
      Q => Q(28),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(39),
      Q => Q(29),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(3),
      Q => Q(3),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(40),
      Q => Q(30),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(41),
      Q => Q(31),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(42),
      Q => Q(32),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(43),
      Q => Q(33),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(44),
      Q => Q(34),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(45),
      Q => Q(35),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(46),
      Q => Q(36),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(47),
      Q => Q(37),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(48),
      Q => Q(38),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(49),
      Q => Q(39),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(50),
      Q => Q(40),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(51),
      Q => Q(41),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(52),
      Q => Q(42),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(53),
      Q => Q(43),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(54),
      Q => Q(44),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(55),
      Q => Q(45),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(56),
      Q => Q(46),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(57),
      Q => Q(47),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(58),
      Q => Q(48),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(59),
      Q => Q(49),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(60),
      Q => Q(50),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(61),
      Q => Q(51),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(62),
      Q => Q(52),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(63),
      Q => Q(53),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_memory__parameterized1_12\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    RD_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_memory__parameterized1_12\ : entity is "memory";
end \jtag_axi_0_memory__parameterized1_12\;

architecture STRUCTURE of \jtag_axi_0_memory__parameterized1_12\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal doutb : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  SR(0) <= \^sr\(0);
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\jtag_axi_0_blk_mem_gen_v8_4_0__parameterized1_13\
     port map (
      D(63 downto 0) => doutb(63 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => RD_PNTR(3 downto 0),
      WR_PNTR(3 downto 0) => WR_PNTR(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o
    );
\goreg_bm.dout_i[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => fifo_rst_ff3,
      I1 => fifo_rst_ff4,
      I2 => aresetn,
      O => \^sr\(0)
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(0),
      Q => \rd_cmd_fifo_data_out_reg[63]\(0),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(10),
      Q => \rd_cmd_fifo_data_out_reg[63]\(10),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(11),
      Q => \rd_cmd_fifo_data_out_reg[63]\(11),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(12),
      Q => \rd_cmd_fifo_data_out_reg[63]\(12),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(13),
      Q => \rd_cmd_fifo_data_out_reg[63]\(13),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(14),
      Q => \rd_cmd_fifo_data_out_reg[63]\(14),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(15),
      Q => \rd_cmd_fifo_data_out_reg[63]\(15),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(16),
      Q => \rd_cmd_fifo_data_out_reg[63]\(16),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(17),
      Q => \rd_cmd_fifo_data_out_reg[63]\(17),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(18),
      Q => \rd_cmd_fifo_data_out_reg[63]\(18),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(19),
      Q => \rd_cmd_fifo_data_out_reg[63]\(19),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(1),
      Q => \rd_cmd_fifo_data_out_reg[63]\(1),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(20),
      Q => \rd_cmd_fifo_data_out_reg[63]\(20),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(21),
      Q => \rd_cmd_fifo_data_out_reg[63]\(21),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(22),
      Q => \rd_cmd_fifo_data_out_reg[63]\(22),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(23),
      Q => \rd_cmd_fifo_data_out_reg[63]\(23),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(24),
      Q => \rd_cmd_fifo_data_out_reg[63]\(24),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(25),
      Q => \rd_cmd_fifo_data_out_reg[63]\(25),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(26),
      Q => \rd_cmd_fifo_data_out_reg[63]\(26),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(27),
      Q => \rd_cmd_fifo_data_out_reg[63]\(27),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(28),
      Q => \rd_cmd_fifo_data_out_reg[63]\(28),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(29),
      Q => \rd_cmd_fifo_data_out_reg[63]\(29),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(2),
      Q => \rd_cmd_fifo_data_out_reg[63]\(2),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(30),
      Q => \rd_cmd_fifo_data_out_reg[63]\(30),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(31),
      Q => \rd_cmd_fifo_data_out_reg[63]\(31),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(32),
      Q => \rd_cmd_fifo_data_out_reg[63]\(32),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(33),
      Q => \rd_cmd_fifo_data_out_reg[63]\(33),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(34),
      Q => \rd_cmd_fifo_data_out_reg[63]\(34),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(35),
      Q => \rd_cmd_fifo_data_out_reg[63]\(35),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(36),
      Q => \rd_cmd_fifo_data_out_reg[63]\(36),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(37),
      Q => \rd_cmd_fifo_data_out_reg[63]\(37),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(38),
      Q => \rd_cmd_fifo_data_out_reg[63]\(38),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(39),
      Q => \rd_cmd_fifo_data_out_reg[63]\(39),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(3),
      Q => \rd_cmd_fifo_data_out_reg[63]\(3),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(40),
      Q => \rd_cmd_fifo_data_out_reg[63]\(40),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(41),
      Q => \rd_cmd_fifo_data_out_reg[63]\(41),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(42),
      Q => \rd_cmd_fifo_data_out_reg[63]\(42),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(43),
      Q => \rd_cmd_fifo_data_out_reg[63]\(43),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(44),
      Q => \rd_cmd_fifo_data_out_reg[63]\(44),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(45),
      Q => \rd_cmd_fifo_data_out_reg[63]\(45),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(46),
      Q => \rd_cmd_fifo_data_out_reg[63]\(46),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(47),
      Q => \rd_cmd_fifo_data_out_reg[63]\(47),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(48),
      Q => \rd_cmd_fifo_data_out_reg[63]\(48),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(49),
      Q => \rd_cmd_fifo_data_out_reg[63]\(49),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(4),
      Q => \rd_cmd_fifo_data_out_reg[63]\(4),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(50),
      Q => \rd_cmd_fifo_data_out_reg[63]\(50),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(51),
      Q => \rd_cmd_fifo_data_out_reg[63]\(51),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(52),
      Q => \rd_cmd_fifo_data_out_reg[63]\(52),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(53),
      Q => \rd_cmd_fifo_data_out_reg[63]\(53),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(54),
      Q => \rd_cmd_fifo_data_out_reg[63]\(54),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(55),
      Q => \rd_cmd_fifo_data_out_reg[63]\(55),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(56),
      Q => \rd_cmd_fifo_data_out_reg[63]\(56),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(57),
      Q => \rd_cmd_fifo_data_out_reg[63]\(57),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(58),
      Q => \rd_cmd_fifo_data_out_reg[63]\(58),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(59),
      Q => \rd_cmd_fifo_data_out_reg[63]\(59),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(5),
      Q => \rd_cmd_fifo_data_out_reg[63]\(5),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(60),
      Q => \rd_cmd_fifo_data_out_reg[63]\(60),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(61),
      Q => \rd_cmd_fifo_data_out_reg[63]\(61),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(62),
      Q => \rd_cmd_fifo_data_out_reg[63]\(62),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(63),
      Q => \rd_cmd_fifo_data_out_reg[63]\(63),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(6),
      Q => \rd_cmd_fifo_data_out_reg[63]\(6),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(7),
      Q => \rd_cmd_fifo_data_out_reg[63]\(7),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(8),
      Q => \rd_cmd_fifo_data_out_reg[63]\(8),
      R => \^sr\(0)
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => doutb(9),
      Q => \rd_cmd_fifo_data_out_reg[63]\(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \jtag_axi_0_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_ramfifo__parameterized0\ is
  signal \^enb_dly_d\ : STD_LOGIC;
  signal dout_i : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_13\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  ENB_dly_D <= \^enb_dly_d\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.\jtag_axi_0_clk_x_pntrs__xdcDup__1\
     port map (
      RD_PNTR(7 downto 0) => p_0_out(7 downto 0),
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      WR_PNTR(7 downto 0) => p_13_out(7 downto 0),
      WR_PNTR_RD(2 downto 0) => p_24_out(7 downto 5),
      aclk => aclk,
      \count_reg[0]\ => \count_reg[0]\,
      \gc0.count_reg[5]\ => \gntv_or_sync_fifo.gl0.rd_n_13\,
      \out\(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      ram_empty_fb_i_reg => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      rd_pntr_plus1(4 downto 0) => rd_pntr_plus1(4 downto 0),
      s_dclk_o => s_dclk_o
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.jtag_axi_0_rd_logic_3
     port map (
      E(0) => dout_i,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR(7 downto 0) => p_0_out(7 downto 0),
      SR(0) => SR(0),
      WR_PNTR_RD(2 downto 0) => p_24_out(7 downto 5),
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[2]\ => \count_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \gc0.count_d1_reg[7]\(1) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc0.count_d1_reg[7]\(0) => \out\(0),
      \gc0.count_d1_reg[7]_0\ => \gc0.count_d1_reg[7]\,
      \gc0.count_d1_reg[7]_1\ => \gc0.count_d1_reg[7]_0\,
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \out\ => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.rd_n_13\,
      rx_fifo_rden_reg_reg => rx_fifo_rden_reg_reg,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.jtag_axi_0_wr_logic_4
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_dly_D_0 => ENB_dly_D_0,
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      WR_PNTR(7 downto 0) => p_13_out(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.\jtag_axi_0_memory__parameterized0\
     port map (
      E(0) => dout_i,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      POR_A => POR_A,
      RD_PNTR(7 downto 0) => p_0_out(7 downto 0),
      WR_PNTR(7 downto 0) => p_13_out(7 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      \rx_fifo_datain_ff_reg[31]\(31 downto 0) => \rx_fifo_datain_ff_reg[31]\(31 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_ramfifo__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_ramfifo__parameterized1\ : entity is "fifo_generator_ramfifo";
end \jtag_axi_0_fifo_generator_ramfifo__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_ramfifo__parameterized1\ is
  signal \^enb_dly_d\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_2\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC;
begin
  ENB_dly_D <= \^enb_dly_d\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.\jtag_axi_0_clk_x_pntrs__parameterized0\
     port map (
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      aclk => aclk,
      \dest_out_bin_ff_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_2\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      s_dclk_o => s_dclk_o
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.\jtag_axi_0_rd_logic__parameterized0\
     port map (
      E(0) => p_6_out,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(0) => axi_wr_resp(0),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => cmd_valid_wr_ch_d_reg,
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.rd_n_2\,
      \s_axi_wr_resp_reg[0]\ => \s_axi_wr_resp_reg[0]\,
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      \wr_qid_reg[0]\(0) => E(0),
      wr_sts_flag_reg => wr_sts_flag_reg,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_0
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\jtag_axi_0_wr_logic__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_dly_D_0 => ENB_dly_D_0,
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i
    );
\gntv_or_sync_fifo.mem\: entity work.\jtag_axi_0_memory__parameterized1\
     port map (
      E(0) => p_6_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      POR_A => POR_A,
      POR_B => POR_B,
      Q(53 downto 0) => Q(53 downto 0),
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      SR(0) => SR(0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      aclk => aclk,
      p_20_out => p_20_out,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_ramfifo__parameterized1__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    \rd_cmd_fifo_data_out_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_ramfifo__parameterized1__xdcDup__1\ : entity is "fifo_generator_ramfifo";
end \jtag_axi_0_fifo_generator_ramfifo__parameterized1__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_ramfifo__parameterized1__xdcDup__1\ is
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_2\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_out : STD_LOGIC;
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\jtag_axi_0_clk_x_pntrs__parameterized0__xdcDup__1\
     port map (
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      aclk => aclk,
      \dest_out_bin_ff_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_2\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      s_dclk_o => s_dclk_o
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.\jtag_axi_0_rd_logic__parameterized0_10\
     port map (
      E(0) => p_6_out,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => ENB_dly_D,
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      WR_PNTR_RD(3 downto 0) => p_24_out(3 downto 0),
      aclk => aclk,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \out\ => \out\,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.rd_n_2\,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => \rd_cmd_fifo_data_out_reg[0]\(0),
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      \rd_qid_reg[0]\(0) => E(0),
      rd_sts_flag_reg => rd_sts_flag_reg,
      rd_sts_flag_reg_0 => rd_sts_flag_reg_0
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\jtag_axi_0_wr_logic__parameterized0_11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_dly_D_0 => ENB_dly_D_0,
      RD_PNTR_WR(3 downto 0) => p_25_out(3 downto 0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      p_20_out => p_20_out,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      s_dclk_o => s_dclk_o
    );
\gntv_or_sync_fifo.mem\: entity work.\jtag_axi_0_memory__parameterized1_12\
     port map (
      E(0) => p_6_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      RD_PNTR(3 downto 0) => p_0_out(3 downto 0),
      SR(0) => SR(0),
      WR_PNTR(3 downto 0) => p_13_out(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      p_20_out => p_20_out,
      \rd_cmd_fifo_data_out_reg[63]\(63 downto 0) => \rd_cmd_fifo_data_out_reg[63]\(63 downto 0),
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_top__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \jtag_axi_0_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\jtag_axi_0_fifo_generator_ramfifo__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[2]\ => \count_reg[2]\,
      \gc0.count_d1_reg[7]\ => \gc0.count_d1_reg[7]\,
      \gc0.count_d1_reg[7]_0\ => \gc0.count_d1_reg[7]_0\,
      \out\(0) => \out\(0),
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      \rx_fifo_datain_ff_reg[31]\(31 downto 0) => \rx_fifo_datain_ff_reg[31]\(31 downto 0),
      rx_fifo_rden_reg_reg => rx_fifo_rden_reg_reg,
      rx_fifo_wr_en => rx_fifo_wr_en,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_top__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_top__parameterized1\ : entity is "fifo_generator_top";
end \jtag_axi_0_fifo_generator_top__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_top__parameterized1\ is
begin
\grf.rf\: entity work.\jtag_axi_0_fifo_generator_ramfifo__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      POR_B => POR_B,
      Q(53 downto 0) => Q(53 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(0) => axi_wr_resp(0),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => cmd_valid_wr_ch_d_reg,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      \s_axi_wr_resp_reg[0]\ => \s_axi_wr_resp_reg[0]\,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0),
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i,
      wr_sts_flag_reg => wr_sts_flag_reg,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_top__parameterized1__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    \rd_cmd_fifo_data_out_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_top__parameterized1__xdcDup__1\ : entity is "fifo_generator_top";
end \jtag_axi_0_fifo_generator_top__parameterized1__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_top__parameterized1__xdcDup__1\ is
begin
\grf.rf\: entity work.\jtag_axi_0_fifo_generator_ramfifo__parameterized1__xdcDup__1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => \rd_cmd_fifo_data_out_reg[0]\(0),
      \rd_cmd_fifo_data_out_reg[63]\(63 downto 0) => \rd_cmd_fifo_data_out_reg[63]\(63 downto 0),
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rd_sts_flag_reg => rd_sts_flag_reg,
      rd_sts_flag_reg_0 => rd_sts_flag_reg_0,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized0\ : entity is "fifo_generator_v13_2_0_synth";
end \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized0\ is
begin
\gconvfifo.rf\: entity work.\jtag_axi_0_fifo_generator_top__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[2]\ => \count_reg[2]\,
      \gc0.count_d1_reg[7]\ => \gc0.count_d1_reg[7]\,
      \gc0.count_d1_reg[7]_0\ => \gc0.count_d1_reg[7]_0\,
      \out\(0) => \out\(0),
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      \rx_fifo_datain_ff_reg[31]\(31 downto 0) => \rx_fifo_datain_ff_reg[31]\(31 downto 0),
      rx_fifo_rden_reg_reg => rx_fifo_rden_reg_reg,
      rx_fifo_wr_en => rx_fifo_wr_en,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1\ : entity is "fifo_generator_v13_2_0_synth";
end \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1\ is
begin
\gconvfifo.rf\: entity work.\jtag_axi_0_fifo_generator_top__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      POR_B => POR_B,
      Q(53 downto 0) => Q(53 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(0) => axi_wr_resp(0),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => cmd_valid_wr_ch_d_reg,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      \s_axi_wr_resp_reg[0]\ => \s_axi_wr_resp_reg[0]\,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0),
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i,
      wr_sts_flag_reg => wr_sts_flag_reg,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    \rd_cmd_fifo_data_out_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1__xdcDup__1\ : entity is "fifo_generator_v13_2_0_synth";
end \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1__xdcDup__1\ is
begin
\gconvfifo.rf\: entity work.\jtag_axi_0_fifo_generator_top__parameterized1__xdcDup__1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => \rd_cmd_fifo_data_out_reg[0]\(0),
      \rd_cmd_fifo_data_out_reg[63]\(63 downto 0) => \rd_cmd_fifo_data_out_reg[63]\(63 downto 0),
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rd_sts_flag_reg => rd_sts_flag_reg,
      rd_sts_flag_reg_0 => rd_sts_flag_reg_0,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rx_fifo_rden_reg_reg : out STD_LOGIC;
    \gc0.count_d1_reg[7]\ : out STD_LOGIC;
    \gc0.count_d1_reg[7]_0\ : out STD_LOGIC;
    \rx_fifo_datain_ff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_dclk_o : in STD_LOGIC;
    aclk : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    rx_fifo_wr_en : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    \s_daddr_i_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_den_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    s_dwe_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0__parameterized0\ : entity is "fifo_generator_v13_2_0";
end \jtag_axi_0_fifo_generator_v13_2_0__parameterized0\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0__parameterized0\ is
begin
inst_fifo_gen: entity work.\jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[2]\ => \count_reg[2]\,
      \gc0.count_d1_reg[7]\ => \gc0.count_d1_reg[7]\,
      \gc0.count_d1_reg[7]_0\ => \gc0.count_d1_reg[7]_0\,
      \out\(0) => \out\(0),
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      \rx_fifo_datain_ff_reg[31]\(31 downto 0) => \rx_fifo_datain_ff_reg[31]\(31 downto 0),
      rx_fifo_rden_reg_reg => rx_fifo_rden_reg_reg,
      rx_fifo_wr_en => rx_fifo_wr_en,
      \s_daddr_i_reg[4]\ => \s_daddr_i_reg[4]\,
      s_dclk_o => s_dclk_o,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    \s_axi_wr_resp_reg[0]\ : out STD_LOGIC;
    cmd_valid_wr_ch : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_sts_flag_reg : out STD_LOGIC;
    cmd_valid_wr_ch_d_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 53 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    \tx_fifo_dataout_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    wr_cmd_fifo_read_en : in STD_LOGIC;
    cmd_valid_wr_ch_d : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_wr_done_ff : in STD_LOGIC;
    wr_sts_flag_reg_0 : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_axi_en_exec_ff4 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    wr_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0__parameterized1\ : entity is "fifo_generator_v13_2_0";
end \jtag_axi_0_fifo_generator_v13_2_0__parameterized1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0__parameterized1\ is
begin
inst_fifo_gen: entity work.\jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_A => POR_A,
      POR_B => POR_B,
      Q(53 downto 0) => Q(53 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(0) => axi_wr_resp(0),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => cmd_valid_wr_ch_d_reg,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      \s_axi_wr_resp_reg[0]\ => \s_axi_wr_resp_reg[0]\,
      s_dclk_o => s_dclk_o,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => \tx_fifo_dataout_reg[63]\(63 downto 0),
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i,
      wr_sts_flag_reg => wr_sts_flag_reg,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \jtag_axi_0_fifo_generator_v13_2_0__parameterized1__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_cmd_fifo_data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_sts_flag_reg : out STD_LOGIC;
    \rd_cmd_fifo_data_out_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    s_dclk_o : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    p_20_out : in STD_LOGIC;
    rd_cmd_fifo_read_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    cmd_valid_rd_ch_d : in STD_LOGIC;
    rd_axi_en_exec_ff4 : in STD_LOGIC;
    rd_sts_flag_reg_0 : in STD_LOGIC;
    fifo_rst_ff3 : in STD_LOGIC;
    fifo_rst_ff4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_txn_err : in STD_LOGIC;
    rd_cmd_fifowren_i : in STD_LOGIC;
    ENB_dly_D_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \jtag_axi_0_fifo_generator_v13_2_0__parameterized1__xdcDup__1\ : entity is "fifo_generator_v13_2_0";
end \jtag_axi_0_fifo_generator_v13_2_0__parameterized1__xdcDup__1\;

architecture STRUCTURE of \jtag_axi_0_fifo_generator_v13_2_0__parameterized1__xdcDup__1\ is
begin
inst_fifo_gen: entity work.\jtag_axi_0_fifo_generator_v13_2_0_synth__parameterized1__xdcDup__1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => E(0),
      ENB_dly_D => ENB_dly_D,
      ENB_dly_D_0 => ENB_dly_D_0,
      POR_B => POR_B,
      Q(63 downto 0) => Q(63 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => \out\,
      p_20_out => p_20_out,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => \rd_cmd_fifo_data_out_reg[0]\(0),
      \rd_cmd_fifo_data_out_reg[63]\(63 downto 0) => \rd_cmd_fifo_data_out_reg[63]\(63 downto 0),
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rd_sts_flag_reg => rd_sts_flag_reg,
      rd_sts_flag_reg_0 => rd_sts_flag_reg_0,
      s_dclk_o => s_dclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_jtag_axi_engine is
  port (
    sl_oport_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    aempty_fwft_fb_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC;
    axi_wr_done_ff : out STD_LOGIC;
    axi_rd_done_ff : out STD_LOGIC;
    axi_wr : out STD_LOGIC;
    axi_rd : out STD_LOGIC;
    rd_sts_flag_reg_0 : out STD_LOGIC;
    \cmd_fifo_data_out_ff_reg[63]\ : out STD_LOGIC_VECTOR ( 41 downto 0 );
    \cmd_fifo_data_out_ff_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \len_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \len_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 36 downto 0 );
    aclk : in STD_LOGIC;
    \rx_fifo_data_o_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_20_out : in STD_LOGIC;
    axi_wr_done : in STD_LOGIC;
    axi_rd_done : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    \axi_rd_resp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fifo_wr_en : in STD_LOGIC;
    axi_wr_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC;
    \burst_count_reg[8]\ : in STD_LOGIC;
    axi_rd_done_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wr_busy : in STD_LOGIC;
    axi_rd_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi_engine : entity is "jtag_axi_v1_2_4_jtag_axi_engine";
end jtag_axi_0_jtag_axi_v1_2_4_jtag_axi_engine;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi_engine is
  signal aresetn_xsdb : STD_LOGIC;
  signal aresetn_xsdb_ff : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of aresetn_xsdb_ff : signal is "true";
  signal aresetn_xsdb_ff2 : STD_LOGIC;
  attribute async_reg of aresetn_xsdb_ff2 : signal is "true";
  signal aresetn_xsdb_ff3 : STD_LOGIC;
  signal axi_aresetn_ff : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of axi_aresetn_ff : signal is "true";
  signal axi_rd_txn_err : STD_LOGIC;
  signal \^axi_wr_done_ff\ : STD_LOGIC;
  signal cmd_fifo_data_out : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \^cmd_fifo_data_out_ff_reg[63]\ : STD_LOGIC_VECTOR ( 41 downto 0 );
  signal \^cmd_fifo_data_out_ff_reg[63]_0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal cmd_valid_rd_ch : STD_LOGIC;
  signal cmd_valid_rd_ch_d : STD_LOGIC;
  signal cmd_valid_wr_ch : STD_LOGIC;
  signal cmd_valid_wr_ch_d : STD_LOGIC;
  signal fifo_rst : STD_LOGIC;
  attribute RTL_KEEP of fifo_rst : signal is "true";
  signal fifo_rst_ff1 : STD_LOGIC;
  attribute async_reg of fifo_rst_ff1 : signal is "true";
  signal fifo_rst_ff2 : STD_LOGIC;
  attribute async_reg of fifo_rst_ff2 : signal is "true";
  signal fifo_rst_ff3 : STD_LOGIC;
  signal fifo_rst_ff4 : STD_LOGIC;
  signal fifo_rst_xsdb : STD_LOGIC;
  signal fifo_rst_xsdb_ff : STD_LOGIC;
  signal fifo_rst_xsdb_ff2 : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D_1\ : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\ : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\ : STD_LOGIC;
  signal \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out_0\ : STD_LOGIC;
  signal \len[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \len[3]_i_2_n_0\ : STD_LOGIC;
  signal rd_axi_en : STD_LOGIC;
  signal rd_axi_en_exec : STD_LOGIC;
  attribute RTL_KEEP of rd_axi_en_exec : signal is "true";
  signal rd_axi_en_exec_ff : STD_LOGIC;
  attribute async_reg of rd_axi_en_exec_ff : signal is "true";
  signal rd_axi_en_exec_ff2 : STD_LOGIC;
  attribute async_reg of rd_axi_en_exec_ff2 : signal is "true";
  signal rd_axi_en_exec_ff3 : STD_LOGIC;
  signal rd_axi_en_exec_ff4 : STD_LOGIC;
  signal rd_cmd_counter : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \rd_cmd_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_cmd_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_cmd_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_cmd_counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_cmd_fifo_data_out_qid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_cmd_fifo_dataout_i : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rd_cmd_fifo_i_n_1 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_10 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_11 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_12 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_13 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_14 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_15 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_16 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_17 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_18 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_19 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_20 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_21 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_22 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_23 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_24 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_25 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_26 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_27 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_28 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_29 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_30 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_31 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_32 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_33 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_34 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_35 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_36 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_37 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_38 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_39 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_4 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_40 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_41 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_42 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_43 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_44 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_45 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_46 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_47 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_48 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_49 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_5 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_50 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_51 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_52 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_53 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_54 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_55 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_56 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_57 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_58 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_59 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_6 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_60 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_61 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_62 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_63 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_64 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_65 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_66 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_67 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_68 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_69 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_7 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_8 : STD_LOGIC;
  signal rd_cmd_fifo_i_n_9 : STD_LOGIC;
  signal rd_cmd_fifo_read_en : STD_LOGIC;
  signal rd_cmd_fifowren_axi : STD_LOGIC;
  attribute async_reg of rd_cmd_fifowren_axi : signal is "true";
  signal rd_cmd_fifowren_axi_ff : STD_LOGIC;
  attribute async_reg of rd_cmd_fifowren_axi_ff : signal is "true";
  signal rd_cmd_fifowren_axi_ff2 : STD_LOGIC;
  attribute async_reg of rd_cmd_fifowren_axi_ff2 : signal is "true";
  signal rd_cmd_fifowren_axi_ff3 : STD_LOGIC;
  attribute async_reg of rd_cmd_fifowren_axi_ff3 : signal is "true";
  signal rd_cmd_fifowren_i : STD_LOGIC;
  signal rd_cmd_fifowren_xsdb : STD_LOGIC;
  signal rd_cmd_valid : STD_LOGIC;
  signal rd_done_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rd_done_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_done_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_done_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_done_state[2]_i_2_n_0\ : STD_LOGIC;
  signal rd_qid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_sts_flag_reg_0\ : STD_LOGIC;
  signal rx_fifo_i_n_10 : STD_LOGIC;
  signal rx_fifo_i_n_11 : STD_LOGIC;
  signal rx_fifo_i_n_12 : STD_LOGIC;
  signal rx_fifo_i_n_13 : STD_LOGIC;
  signal rx_fifo_i_n_14 : STD_LOGIC;
  signal rx_fifo_i_n_15 : STD_LOGIC;
  signal rx_fifo_i_n_16 : STD_LOGIC;
  signal rx_fifo_i_n_17 : STD_LOGIC;
  signal rx_fifo_i_n_18 : STD_LOGIC;
  signal rx_fifo_i_n_19 : STD_LOGIC;
  signal rx_fifo_i_n_20 : STD_LOGIC;
  signal rx_fifo_i_n_21 : STD_LOGIC;
  signal rx_fifo_i_n_22 : STD_LOGIC;
  signal rx_fifo_i_n_23 : STD_LOGIC;
  signal rx_fifo_i_n_24 : STD_LOGIC;
  signal rx_fifo_i_n_25 : STD_LOGIC;
  signal rx_fifo_i_n_26 : STD_LOGIC;
  signal rx_fifo_i_n_27 : STD_LOGIC;
  signal rx_fifo_i_n_28 : STD_LOGIC;
  signal rx_fifo_i_n_29 : STD_LOGIC;
  signal rx_fifo_i_n_3 : STD_LOGIC;
  signal rx_fifo_i_n_30 : STD_LOGIC;
  signal rx_fifo_i_n_31 : STD_LOGIC;
  signal rx_fifo_i_n_32 : STD_LOGIC;
  signal rx_fifo_i_n_33 : STD_LOGIC;
  signal rx_fifo_i_n_34 : STD_LOGIC;
  signal rx_fifo_i_n_35 : STD_LOGIC;
  signal rx_fifo_i_n_36 : STD_LOGIC;
  signal rx_fifo_i_n_37 : STD_LOGIC;
  signal rx_fifo_i_n_4 : STD_LOGIC;
  signal rx_fifo_i_n_5 : STD_LOGIC;
  signal rx_fifo_i_n_6 : STD_LOGIC;
  signal rx_fifo_i_n_7 : STD_LOGIC;
  signal rx_fifo_i_n_8 : STD_LOGIC;
  signal rx_fifo_i_n_9 : STD_LOGIC;
  signal s_axi_rd_busy : STD_LOGIC;
  signal s_axi_rd_busy_i_1_n_0 : STD_LOGIC;
  signal s_axi_rd_busy_i_2_n_0 : STD_LOGIC;
  signal s_axi_rd_done : STD_LOGIC;
  signal s_axi_rd_done_i_1_n_0 : STD_LOGIC;
  signal s_axi_rd_done_i_2_n_0 : STD_LOGIC;
  signal s_axi_rd_done_i_3_n_0 : STD_LOGIC;
  signal s_axi_rd_resp : STD_LOGIC;
  signal s_axi_wr_busy : STD_LOGIC;
  signal s_axi_wr_busy_i_1_n_0 : STD_LOGIC;
  signal s_axi_wr_busy_i_2_n_0 : STD_LOGIC;
  signal s_axi_wr_done : STD_LOGIC;
  signal s_axi_wr_done_i_1_n_0 : STD_LOGIC;
  signal s_axi_wr_done_i_2_n_0 : STD_LOGIC;
  signal s_axi_wr_done_i_3_n_0 : STD_LOGIC;
  signal \s_axi_wr_resp[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wr_resp[1]_i_1_n_0\ : STD_LOGIC;
  signal s_daddr_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_daddr_wire : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal s_den_i : STD_LOGIC;
  signal s_den_wire : STD_LOGIC;
  signal s_di_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_do_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_do_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_do_i_reg_n_0_[9]\ : STD_LOGIC;
  signal s_do_wire : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drdy_i : STD_LOGIC;
  signal s_dwe_i : STD_LOGIC;
  signal s_dwe_wire : STD_LOGIC;
  signal s_rst_i : STD_LOGIC;
  signal status_reg_data_in_i : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal status_reg_datain : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of status_reg_datain : signal is "true";
  signal status_reg_datain_ff2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute async_reg of status_reg_datain_ff2 : signal is "true";
  signal status_reg_datain_ff3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal status_reg_datain_ff4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal status_reg_datain_ff_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute async_reg of status_reg_datain_ff_1 : signal is "true";
  signal tx_fifo_dataout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_fifo_i_n_1 : STD_LOGIC;
  signal tx_fifo_wr : STD_LOGIC;
  signal u_xsdb_fifo_interface_n_6 : STD_LOGIC;
  signal u_xsdb_fifo_interface_n_7 : STD_LOGIC;
  signal u_xsdb_fifo_interface_n_8 : STD_LOGIC;
  signal u_xsdb_fifo_interface_n_9 : STD_LOGIC;
  signal wr_axi_en : STD_LOGIC;
  signal wr_axi_en_exec : STD_LOGIC;
  attribute RTL_KEEP of wr_axi_en_exec : signal is "true";
  signal wr_axi_en_exec_ff : STD_LOGIC;
  attribute async_reg of wr_axi_en_exec_ff : signal is "true";
  signal wr_axi_en_exec_ff2 : STD_LOGIC;
  attribute async_reg of wr_axi_en_exec_ff2 : signal is "true";
  signal wr_axi_en_exec_ff3 : STD_LOGIC;
  signal wr_axi_en_exec_ff4 : STD_LOGIC;
  signal wr_cmd_counter : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \wr_cmd_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_cmd_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_cmd_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_cmd_counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_cmd_fifo_data_out_qid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_cmd_fifo_dataout_i : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wr_cmd_fifo_i_n_10 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_11 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_12 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_13 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_14 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_15 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_16 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_17 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_18 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_19 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_2 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_20 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_21 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_22 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_23 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_24 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_25 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_26 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_27 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_28 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_29 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_30 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_31 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_32 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_33 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_34 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_35 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_36 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_37 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_38 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_39 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_40 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_41 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_42 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_43 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_44 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_45 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_46 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_47 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_48 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_49 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_5 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_50 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_51 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_52 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_53 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_54 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_55 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_56 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_57 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_58 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_59 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_60 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_61 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_62 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_63 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_7 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_8 : STD_LOGIC;
  signal wr_cmd_fifo_i_n_9 : STD_LOGIC;
  signal wr_cmd_fifo_read_en : STD_LOGIC;
  signal wr_cmd_fifowren_axi : STD_LOGIC;
  attribute async_reg of wr_cmd_fifowren_axi : signal is "true";
  signal wr_cmd_fifowren_axi_ff : STD_LOGIC;
  attribute async_reg of wr_cmd_fifowren_axi_ff : signal is "true";
  signal wr_cmd_fifowren_axi_ff2 : STD_LOGIC;
  attribute async_reg of wr_cmd_fifowren_axi_ff2 : signal is "true";
  signal wr_cmd_fifowren_axi_ff3 : STD_LOGIC;
  attribute async_reg of wr_cmd_fifowren_axi_ff3 : signal is "true";
  signal wr_cmd_fifowren_i : STD_LOGIC;
  signal wr_cmd_fifowren_xsdb : STD_LOGIC;
  signal wr_cmd_valid : STD_LOGIC;
  signal wr_done_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wr_done_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_done_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_done_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_done_state[2]_i_2_n_0\ : STD_LOGIC;
  signal wr_qid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_sts_flag_reg_n_0 : STD_LOGIC;
  signal xsdb_clk : STD_LOGIC;
  signal xsdb_rst : STD_LOGIC;
  signal xsdb_rst_i_1_n_0 : STD_LOGIC;
  attribute C_BUILD_REVISION : integer;
  attribute C_BUILD_REVISION of U_XSDB_SLAVE : label is 0;
  attribute C_CORE_INFO1 : string;
  attribute C_CORE_INFO1 of U_XSDB_SLAVE : label is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_INFO2 : string;
  attribute C_CORE_INFO2 of U_XSDB_SLAVE : label is "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_CORE_MAJOR_VER : integer;
  attribute C_CORE_MAJOR_VER of U_XSDB_SLAVE : label is 1;
  attribute C_CORE_MINOR_VER : integer;
  attribute C_CORE_MINOR_VER of U_XSDB_SLAVE : label is 2;
  attribute C_CORE_TYPE : integer;
  attribute C_CORE_TYPE of U_XSDB_SLAVE : label is 7;
  attribute C_CSE_DRV_VER : integer;
  attribute C_CSE_DRV_VER of U_XSDB_SLAVE : label is 1;
  attribute C_MAJOR_VERSION : integer;
  attribute C_MAJOR_VERSION of U_XSDB_SLAVE : label is 2016;
  attribute C_MINOR_VERSION : integer;
  attribute C_MINOR_VERSION of U_XSDB_SLAVE : label is 3;
  attribute C_NEXT_SLAVE : integer;
  attribute C_NEXT_SLAVE of U_XSDB_SLAVE : label is 0;
  attribute C_PIPE_IFACE : integer;
  attribute C_PIPE_IFACE of U_XSDB_SLAVE : label is 0;
  attribute C_USE_TEST_REG : integer;
  attribute C_USE_TEST_REG of U_XSDB_SLAVE : label is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U_XSDB_SLAVE : label is "artix7";
  attribute C_XSDB_SLAVE_TYPE : string;
  attribute C_XSDB_SLAVE_TYPE of U_XSDB_SLAVE : label is "16'b0000000001110001";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U_XSDB_SLAVE : label is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of aresetn_xsdb_ff2_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aresetn_xsdb_ff2_reg : label is "yes";
  attribute ASYNC_REG_boolean of aresetn_xsdb_ff_reg : label is std.standard.true;
  attribute KEEP of aresetn_xsdb_ff_reg : label is "yes";
  attribute KEEP of axi_aresetn_ff_reg : label is "yes";
  attribute ASYNC_REG_boolean of fifo_rst_ff1_reg : label is std.standard.true;
  attribute KEEP of fifo_rst_ff1_reg : label is "yes";
  attribute ASYNC_REG_boolean of fifo_rst_ff2_reg : label is std.standard.true;
  attribute KEEP of fifo_rst_ff2_reg : label is "yes";
  attribute KEEP of fifo_rst_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of fifo_rst_xsdb_ff_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \len[3]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \len[3]_i_2__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \len[4]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \len[4]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \len[5]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \len[5]_i_1__0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \len[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \len[7]_i_1__0\ : label is "soft_lutpair111";
  attribute ASYNC_REG_boolean of rd_axi_en_exec_ff2_reg : label is std.standard.true;
  attribute KEEP of rd_axi_en_exec_ff2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rd_axi_en_exec_ff_reg : label is std.standard.true;
  attribute KEEP of rd_axi_en_exec_ff_reg : label is "yes";
  attribute KEEP of rd_axi_en_exec_reg : label is "yes";
  attribute SOFT_HLUTNM of \rd_cmd_counter[0]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \rd_cmd_counter[1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_cmd_counter[2]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \rd_cmd_counter[3]_i_1\ : label is "soft_lutpair103";
  attribute ASYNC_REG_boolean of rd_cmd_fifowren_axi_ff2_reg : label is std.standard.true;
  attribute KEEP of rd_cmd_fifowren_axi_ff2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rd_cmd_fifowren_axi_reg : label is std.standard.true;
  attribute KEEP of rd_cmd_fifowren_axi_reg : label is "yes";
  attribute SOFT_HLUTNM of \rd_done_state[0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rd_done_state[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rd_done_state[2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of s_axi_rd_busy_i_2 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of s_axi_rd_done_i_2 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of s_axi_rd_done_i_3 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of s_axi_wr_busy_i_2 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of s_axi_wr_done_i_2 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of s_axi_wr_done_i_3 : label is "soft_lutpair102";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[13]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[14]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[15]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff2_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[10]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[11]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[12]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[13]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[14]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[15]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[5]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[6]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[7]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[8]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \status_reg_datain_ff_reg[9]\ : label is std.standard.true;
  attribute KEEP of \status_reg_datain_ff_reg[9]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[0]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[10]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[11]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[12]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[13]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[14]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[15]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[1]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[2]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[3]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[4]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[5]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[6]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[7]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[8]\ : label is "yes";
  attribute KEEP of \status_reg_datain_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of wr_axi_en_exec_ff2_reg : label is std.standard.true;
  attribute KEEP of wr_axi_en_exec_ff2_reg : label is "yes";
  attribute ASYNC_REG_boolean of wr_axi_en_exec_ff_reg : label is std.standard.true;
  attribute KEEP of wr_axi_en_exec_ff_reg : label is "yes";
  attribute KEEP of wr_axi_en_exec_reg : label is "yes";
  attribute SOFT_HLUTNM of \wr_cmd_counter[0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \wr_cmd_counter[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \wr_cmd_counter[3]_i_1\ : label is "soft_lutpair105";
  attribute ASYNC_REG_boolean of wr_cmd_fifowren_axi_ff2_reg : label is std.standard.true;
  attribute KEEP of wr_cmd_fifowren_axi_ff2_reg : label is "yes";
  attribute ASYNC_REG_boolean of wr_cmd_fifowren_axi_reg : label is std.standard.true;
  attribute KEEP of wr_cmd_fifowren_axi_reg : label is "yes";
  attribute SOFT_HLUTNM of \wr_done_state[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \wr_done_state[2]_i_1\ : label is "soft_lutpair101";
begin
  axi_wr_done_ff <= \^axi_wr_done_ff\;
  \cmd_fifo_data_out_ff_reg[63]\(41 downto 0) <= \^cmd_fifo_data_out_ff_reg[63]\(41 downto 0);
  \cmd_fifo_data_out_ff_reg[63]_0\(63 downto 0) <= \^cmd_fifo_data_out_ff_reg[63]_0\(63 downto 0);
  rd_sts_flag_reg_0 <= \^rd_sts_flag_reg_0\;
U_XSDB_SLAVE: entity work.jtag_axi_0_xsdbs_v1_0_2_xsdbs
     port map (
      s_daddr_o(16 downto 0) => s_daddr_wire(16 downto 0),
      s_dclk_o => xsdb_clk,
      s_den_o => s_den_wire,
      s_di_o(15 downto 0) => s_do_wire(15 downto 0),
      s_do_i(15 downto 0) => s_di_i(15 downto 0),
      s_drdy_i => s_drdy_i,
      s_dwe_o => s_dwe_wire,
      s_rst_o => s_rst_i,
      sl_iport_i(36 downto 0) => \out\(36 downto 0),
      sl_oport_o(16 downto 0) => sl_oport_o(16 downto 0)
    );
aresetn_xsdb_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => aresetn_xsdb_ff,
      Q => aresetn_xsdb_ff2,
      R => '0'
    );
aresetn_xsdb_ff3_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => aresetn_xsdb_ff2,
      Q => aresetn_xsdb_ff3,
      R => '0'
    );
aresetn_xsdb_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => axi_aresetn_ff,
      Q => aresetn_xsdb_ff,
      R => '0'
    );
aresetn_xsdb_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => aresetn_xsdb_ff3,
      Q => aresetn_xsdb,
      R => '0'
    );
axi_aresetn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => axi_aresetn_ff,
      R => '0'
    );
axi_rd_txn_err_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \axi_rd_resp_reg[1]\(0),
      Q => axi_rd_txn_err,
      R => rd_cmd_fifo_i_n_4
    );
cmd_decode_rd_channel: entity work.jtag_axi_0_jtag_axi_v1_2_4_cmd_decode
     port map (
      E(0) => cmd_valid_rd_ch,
      SR(0) => rd_cmd_fifo_i_n_4,
      aclk => aclk,
      axi_rd => axi_rd,
      axi_rd_busy => axi_rd_busy,
      axi_rd_done => axi_rd_done,
      axi_rd_done_ff => axi_rd_done_ff,
      \out\ => rd_cmd_valid,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en
    );
cmd_decode_wr_channel: entity work.jtag_axi_0_jtag_axi_v1_2_4_cmd_decode_0
     port map (
      SR(0) => rd_cmd_fifo_i_n_4,
      aclk => aclk,
      axi_wr => axi_wr,
      axi_wr_busy => axi_wr_busy,
      axi_wr_done => axi_wr_done,
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      \out\ => wr_cmd_valid,
      \state_reg[0]_0\ => \^axi_wr_done_ff\,
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en
    );
cmd_valid_rd_ch_d_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => cmd_valid_rd_ch,
      Q => cmd_valid_rd_ch_d,
      R => rd_cmd_fifo_i_n_4
    );
cmd_valid_wr_ch_d_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_cmd_fifo_i_n_9,
      Q => cmd_valid_wr_ch_d,
      R => '0'
    );
fifo_rst_ff1_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => fifo_rst,
      Q => fifo_rst_ff1,
      S => SR(0)
    );
fifo_rst_ff2_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => fifo_rst_ff1,
      Q => fifo_rst_ff2,
      S => SR(0)
    );
fifo_rst_ff3_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => fifo_rst_ff2,
      Q => fifo_rst_ff3,
      S => SR(0)
    );
fifo_rst_ff4_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => fifo_rst_ff3,
      Q => fifo_rst_ff4,
      S => SR(0)
    );
fifo_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => fifo_rst_xsdb,
      Q => fifo_rst,
      R => '0'
    );
fifo_rst_xsdb_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => fifo_rst_xsdb_ff,
      Q => fifo_rst_xsdb_ff2,
      R => '0'
    );
fifo_rst_xsdb_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => fifo_rst_xsdb,
      Q => fifo_rst_xsdb_ff,
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => wr_cmd_fifowren_axi_ff
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_cmd_fifowren_axi_ff
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => wr_cmd_fifowren_axi_ff3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_cmd_fifowren_axi_ff3
    );
\len[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2_n_0\,
      I1 => cmd_fifo_data_out(24),
      I2 => cmd_fifo_data_out(28),
      I3 => cmd_fifo_data_out(29),
      I4 => cmd_fifo_data_out(31),
      I5 => cmd_fifo_data_out(30),
      O => \len_reg[7]\(0)
    );
\len[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2__0_n_0\,
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(24),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      I3 => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      I4 => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      I5 => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      O => \len_reg[7]_0\(0)
    );
\len[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2_n_0\,
      I1 => cmd_fifo_data_out(25),
      I2 => cmd_fifo_data_out(28),
      I3 => cmd_fifo_data_out(29),
      I4 => cmd_fifo_data_out(31),
      I5 => cmd_fifo_data_out(30),
      O => \len_reg[7]\(1)
    );
\len[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2__0_n_0\,
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(25),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      I3 => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      I4 => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      I5 => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      O => \len_reg[7]_0\(1)
    );
\len[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2_n_0\,
      I1 => cmd_fifo_data_out(26),
      I2 => cmd_fifo_data_out(28),
      I3 => cmd_fifo_data_out(29),
      I4 => cmd_fifo_data_out(31),
      I5 => cmd_fifo_data_out(30),
      O => \len_reg[7]\(2)
    );
\len[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2__0_n_0\,
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(26),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      I3 => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      I4 => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      I5 => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      O => \len_reg[7]_0\(2)
    );
\len[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2_n_0\,
      I1 => cmd_fifo_data_out(27),
      I2 => cmd_fifo_data_out(28),
      I3 => cmd_fifo_data_out(29),
      I4 => cmd_fifo_data_out(31),
      I5 => cmd_fifo_data_out(30),
      O => \len_reg[7]\(3)
    );
\len[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDDC"
    )
        port map (
      I0 => \len[3]_i_2__0_n_0\,
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(27),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      I3 => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      I4 => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      I5 => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      O => \len_reg[7]_0\(3)
    );
\len[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]\(5),
      I1 => \^cmd_fifo_data_out_ff_reg[63]\(6),
      O => \len[3]_i_2_n_0\
    );
\len[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      O => \len[3]_i_2__0_n_0\
    );
\len[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]\(5),
      I1 => \^cmd_fifo_data_out_ff_reg[63]\(6),
      I2 => cmd_fifo_data_out(28),
      O => \len_reg[7]\(4)
    );
\len[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      O => \len_reg[7]_0\(4)
    );
\len[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]\(5),
      I1 => \^cmd_fifo_data_out_ff_reg[63]\(6),
      I2 => cmd_fifo_data_out(29),
      O => \len_reg[7]\(5)
    );
\len[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      O => \len_reg[7]_0\(5)
    );
\len[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]\(5),
      I1 => \^cmd_fifo_data_out_ff_reg[63]\(6),
      I2 => cmd_fifo_data_out(30),
      O => \len_reg[7]\(6)
    );
\len[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      O => \len_reg[7]_0\(6)
    );
\len[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]\(5),
      I1 => \^cmd_fifo_data_out_ff_reg[63]\(6),
      I2 => cmd_fifo_data_out(31),
      O => \len_reg[7]\(7)
    );
\len[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      I1 => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      I2 => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      O => \len_reg[7]_0\(7)
    );
rd_axi_en_exec_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_axi_en_exec_ff,
      Q => rd_axi_en_exec_ff2,
      R => rd_cmd_fifo_i_n_4
    );
rd_axi_en_exec_ff3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_axi_en_exec_ff2,
      Q => rd_axi_en_exec_ff3,
      R => rd_cmd_fifo_i_n_4
    );
rd_axi_en_exec_ff4_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_axi_en_exec_ff3,
      Q => rd_axi_en_exec_ff4,
      R => rd_cmd_fifo_i_n_4
    );
rd_axi_en_exec_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_axi_en_exec,
      Q => rd_axi_en_exec_ff,
      R => rd_cmd_fifo_i_n_4
    );
rd_axi_en_exec_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => rd_axi_en,
      Q => rd_axi_en_exec,
      R => xsdb_rst
    );
\rd_cmd_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rd_cmd_counter_reg__0\(0),
      O => \rd_cmd_counter[0]_i_1_n_0\
    );
\rd_cmd_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rd_cmd_counter_reg__0\(0),
      I1 => rd_done_state(2),
      I2 => \rd_cmd_counter_reg__0\(1),
      O => \rd_cmd_counter[1]_i_1_n_0\
    );
\rd_cmd_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => rd_done_state(2),
      I1 => \rd_cmd_counter_reg__0\(0),
      I2 => \rd_cmd_counter_reg__0\(2),
      I3 => \rd_cmd_counter_reg__0\(1),
      O => rd_cmd_counter(2)
    );
\rd_cmd_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708EF10"
    )
        port map (
      I0 => \rd_cmd_counter_reg__0\(1),
      I1 => \rd_cmd_counter_reg__0\(0),
      I2 => rd_done_state(2),
      I3 => \rd_cmd_counter_reg__0\(3),
      I4 => \rd_cmd_counter_reg__0\(2),
      O => rd_cmd_counter(3)
    );
\rd_cmd_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F08800"
    )
        port map (
      I0 => rd_axi_en_exec_ff4,
      I1 => rd_cmd_fifowren_axi_ff2,
      I2 => axi_rd_done_reg(0),
      I3 => rd_done_state(1),
      I4 => rd_done_state(2),
      I5 => rd_done_state(0),
      O => \rd_cmd_counter[4]_i_1_n_0\
    );
\rd_cmd_counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFFD0002"
    )
        port map (
      I0 => rd_done_state(2),
      I1 => \rd_cmd_counter_reg__0\(0),
      I2 => \rd_cmd_counter_reg__0\(2),
      I3 => \rd_cmd_counter_reg__0\(1),
      I4 => \rd_cmd_counter_reg__0\(4),
      I5 => \rd_cmd_counter_reg__0\(3),
      O => rd_cmd_counter(4)
    );
\rd_cmd_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_cmd_counter[4]_i_1_n_0\,
      D => \rd_cmd_counter[0]_i_1_n_0\,
      Q => \rd_cmd_counter_reg__0\(0),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_cmd_counter[4]_i_1_n_0\,
      D => \rd_cmd_counter[1]_i_1_n_0\,
      Q => \rd_cmd_counter_reg__0\(1),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_cmd_counter[4]_i_1_n_0\,
      D => rd_cmd_counter(2),
      Q => \rd_cmd_counter_reg__0\(2),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_cmd_counter[4]_i_1_n_0\,
      D => rd_cmd_counter(3),
      Q => \rd_cmd_counter_reg__0\(3),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_cmd_counter[4]_i_1_n_0\,
      D => rd_cmd_counter(4),
      Q => \rd_cmd_counter_reg__0\(4),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_qid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd_done_reg(0),
      D => rd_cmd_fifo_i_n_69,
      Q => rd_cmd_fifo_data_out_qid(0),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_qid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd_done_reg(0),
      D => rd_cmd_fifo_i_n_68,
      Q => rd_cmd_fifo_data_out_qid(1),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_qid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd_done_reg(0),
      D => rd_cmd_fifo_i_n_67,
      Q => rd_cmd_fifo_data_out_qid(2),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_qid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_rd_done_reg(0),
      D => rd_cmd_fifo_i_n_66,
      Q => rd_cmd_fifo_data_out_qid(3),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_69,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(0),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_59,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(10),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_58,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(11),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_57,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(12),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_56,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(13),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_55,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(14),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_54,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(15),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_53,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(16),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_52,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(17),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_51,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(18),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_50,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(19),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_68,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(1),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_49,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(20),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_48,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(21),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_47,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(22),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_46,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(23),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_45,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(24),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_44,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(25),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_43,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(26),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_42,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(27),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_41,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(28),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_40,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(29),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_67,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(2),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_39,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(30),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_38,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(31),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_37,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(32),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_36,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(33),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_35,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(34),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_34,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(35),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_33,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(36),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_32,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(37),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_31,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(38),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_30,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(39),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_66,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(3),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_29,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(40),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_28,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(41),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_27,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(42),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_26,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(43),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_25,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(44),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_24,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(45),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_23,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(46),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_22,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(47),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_21,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(48),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_20,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(49),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_65,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(4),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_19,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(50),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_18,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(51),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_17,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(52),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_16,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(53),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_15,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(54),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_14,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(55),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_13,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(56),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_12,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(57),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_11,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(58),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_10,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(59),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_64,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(5),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_9,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(60),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_8,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(61),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_7,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(62),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_6,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(63),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_63,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(6),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_62,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(7),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_61,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(8),
      R => rd_cmd_fifo_i_n_4
    );
\rd_cmd_fifo_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_rd_ch,
      D => rd_cmd_fifo_i_n_60,
      Q => \^cmd_fifo_data_out_ff_reg[63]_0\(9),
      R => rd_cmd_fifo_i_n_4
    );
rd_cmd_fifo_i: entity work.\jtag_axi_0_fifo_generator_v13_2_0__parameterized1__xdcDup__1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => rd_cmd_fifo_i_n_1,
      E(0) => s_axi_rd_resp,
      ENB_dly_D => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D_1\,
      ENB_dly_D_0 => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_B => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      Q(63 downto 0) => rd_cmd_fifo_dataout_i(63 downto 0),
      SR(0) => rd_cmd_fifo_i_n_4,
      aclk => aclk,
      aresetn => aresetn,
      \axi_rd_resp_reg[1]\(0) => \axi_rd_resp_reg[1]\(0),
      axi_rd_txn_err => axi_rd_txn_err,
      cmd_valid_rd_ch_d => cmd_valid_rd_ch_d,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => rd_cmd_valid,
      p_20_out => \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\,
      rd_axi_en_exec_ff4 => rd_axi_en_exec_ff4,
      \rd_cmd_fifo_data_out_reg[0]\(0) => cmd_valid_rd_ch,
      \rd_cmd_fifo_data_out_reg[63]\(63) => rd_cmd_fifo_i_n_6,
      \rd_cmd_fifo_data_out_reg[63]\(62) => rd_cmd_fifo_i_n_7,
      \rd_cmd_fifo_data_out_reg[63]\(61) => rd_cmd_fifo_i_n_8,
      \rd_cmd_fifo_data_out_reg[63]\(60) => rd_cmd_fifo_i_n_9,
      \rd_cmd_fifo_data_out_reg[63]\(59) => rd_cmd_fifo_i_n_10,
      \rd_cmd_fifo_data_out_reg[63]\(58) => rd_cmd_fifo_i_n_11,
      \rd_cmd_fifo_data_out_reg[63]\(57) => rd_cmd_fifo_i_n_12,
      \rd_cmd_fifo_data_out_reg[63]\(56) => rd_cmd_fifo_i_n_13,
      \rd_cmd_fifo_data_out_reg[63]\(55) => rd_cmd_fifo_i_n_14,
      \rd_cmd_fifo_data_out_reg[63]\(54) => rd_cmd_fifo_i_n_15,
      \rd_cmd_fifo_data_out_reg[63]\(53) => rd_cmd_fifo_i_n_16,
      \rd_cmd_fifo_data_out_reg[63]\(52) => rd_cmd_fifo_i_n_17,
      \rd_cmd_fifo_data_out_reg[63]\(51) => rd_cmd_fifo_i_n_18,
      \rd_cmd_fifo_data_out_reg[63]\(50) => rd_cmd_fifo_i_n_19,
      \rd_cmd_fifo_data_out_reg[63]\(49) => rd_cmd_fifo_i_n_20,
      \rd_cmd_fifo_data_out_reg[63]\(48) => rd_cmd_fifo_i_n_21,
      \rd_cmd_fifo_data_out_reg[63]\(47) => rd_cmd_fifo_i_n_22,
      \rd_cmd_fifo_data_out_reg[63]\(46) => rd_cmd_fifo_i_n_23,
      \rd_cmd_fifo_data_out_reg[63]\(45) => rd_cmd_fifo_i_n_24,
      \rd_cmd_fifo_data_out_reg[63]\(44) => rd_cmd_fifo_i_n_25,
      \rd_cmd_fifo_data_out_reg[63]\(43) => rd_cmd_fifo_i_n_26,
      \rd_cmd_fifo_data_out_reg[63]\(42) => rd_cmd_fifo_i_n_27,
      \rd_cmd_fifo_data_out_reg[63]\(41) => rd_cmd_fifo_i_n_28,
      \rd_cmd_fifo_data_out_reg[63]\(40) => rd_cmd_fifo_i_n_29,
      \rd_cmd_fifo_data_out_reg[63]\(39) => rd_cmd_fifo_i_n_30,
      \rd_cmd_fifo_data_out_reg[63]\(38) => rd_cmd_fifo_i_n_31,
      \rd_cmd_fifo_data_out_reg[63]\(37) => rd_cmd_fifo_i_n_32,
      \rd_cmd_fifo_data_out_reg[63]\(36) => rd_cmd_fifo_i_n_33,
      \rd_cmd_fifo_data_out_reg[63]\(35) => rd_cmd_fifo_i_n_34,
      \rd_cmd_fifo_data_out_reg[63]\(34) => rd_cmd_fifo_i_n_35,
      \rd_cmd_fifo_data_out_reg[63]\(33) => rd_cmd_fifo_i_n_36,
      \rd_cmd_fifo_data_out_reg[63]\(32) => rd_cmd_fifo_i_n_37,
      \rd_cmd_fifo_data_out_reg[63]\(31) => rd_cmd_fifo_i_n_38,
      \rd_cmd_fifo_data_out_reg[63]\(30) => rd_cmd_fifo_i_n_39,
      \rd_cmd_fifo_data_out_reg[63]\(29) => rd_cmd_fifo_i_n_40,
      \rd_cmd_fifo_data_out_reg[63]\(28) => rd_cmd_fifo_i_n_41,
      \rd_cmd_fifo_data_out_reg[63]\(27) => rd_cmd_fifo_i_n_42,
      \rd_cmd_fifo_data_out_reg[63]\(26) => rd_cmd_fifo_i_n_43,
      \rd_cmd_fifo_data_out_reg[63]\(25) => rd_cmd_fifo_i_n_44,
      \rd_cmd_fifo_data_out_reg[63]\(24) => rd_cmd_fifo_i_n_45,
      \rd_cmd_fifo_data_out_reg[63]\(23) => rd_cmd_fifo_i_n_46,
      \rd_cmd_fifo_data_out_reg[63]\(22) => rd_cmd_fifo_i_n_47,
      \rd_cmd_fifo_data_out_reg[63]\(21) => rd_cmd_fifo_i_n_48,
      \rd_cmd_fifo_data_out_reg[63]\(20) => rd_cmd_fifo_i_n_49,
      \rd_cmd_fifo_data_out_reg[63]\(19) => rd_cmd_fifo_i_n_50,
      \rd_cmd_fifo_data_out_reg[63]\(18) => rd_cmd_fifo_i_n_51,
      \rd_cmd_fifo_data_out_reg[63]\(17) => rd_cmd_fifo_i_n_52,
      \rd_cmd_fifo_data_out_reg[63]\(16) => rd_cmd_fifo_i_n_53,
      \rd_cmd_fifo_data_out_reg[63]\(15) => rd_cmd_fifo_i_n_54,
      \rd_cmd_fifo_data_out_reg[63]\(14) => rd_cmd_fifo_i_n_55,
      \rd_cmd_fifo_data_out_reg[63]\(13) => rd_cmd_fifo_i_n_56,
      \rd_cmd_fifo_data_out_reg[63]\(12) => rd_cmd_fifo_i_n_57,
      \rd_cmd_fifo_data_out_reg[63]\(11) => rd_cmd_fifo_i_n_58,
      \rd_cmd_fifo_data_out_reg[63]\(10) => rd_cmd_fifo_i_n_59,
      \rd_cmd_fifo_data_out_reg[63]\(9) => rd_cmd_fifo_i_n_60,
      \rd_cmd_fifo_data_out_reg[63]\(8) => rd_cmd_fifo_i_n_61,
      \rd_cmd_fifo_data_out_reg[63]\(7) => rd_cmd_fifo_i_n_62,
      \rd_cmd_fifo_data_out_reg[63]\(6) => rd_cmd_fifo_i_n_63,
      \rd_cmd_fifo_data_out_reg[63]\(5) => rd_cmd_fifo_i_n_64,
      \rd_cmd_fifo_data_out_reg[63]\(4) => rd_cmd_fifo_i_n_65,
      \rd_cmd_fifo_data_out_reg[63]\(3) => rd_cmd_fifo_i_n_66,
      \rd_cmd_fifo_data_out_reg[63]\(2) => rd_cmd_fifo_i_n_67,
      \rd_cmd_fifo_data_out_reg[63]\(1) => rd_cmd_fifo_i_n_68,
      \rd_cmd_fifo_data_out_reg[63]\(0) => rd_cmd_fifo_i_n_69,
      rd_cmd_fifo_read_en => rd_cmd_fifo_read_en,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rd_sts_flag_reg => rd_cmd_fifo_i_n_5,
      rd_sts_flag_reg_0 => \^rd_sts_flag_reg_0\,
      s_dclk_o => xsdb_clk
    );
rd_cmd_fifowren_axi_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_cmd_fifowren_axi,
      Q => rd_cmd_fifowren_axi_ff2,
      R => rd_cmd_fifo_i_n_4
    );
rd_cmd_fifowren_axi_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_cmd_fifowren_xsdb,
      Q => rd_cmd_fifowren_axi,
      R => rd_cmd_fifo_i_n_4
    );
rd_cmd_fifowren_xsdb_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => rd_cmd_fifowren_i,
      Q => rd_cmd_fifowren_xsdb,
      R => xsdb_rst
    );
\rd_done_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F530"
    )
        port map (
      I0 => \rd_done_state[2]_i_2_n_0\,
      I1 => rd_axi_en_exec_ff4,
      I2 => rd_done_state(0),
      I3 => rd_done_state(2),
      I4 => rd_done_state(1),
      O => \rd_done_state[0]_i_1_n_0\
    );
\rd_done_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => rd_axi_en_exec_ff4,
      I1 => rd_done_state(0),
      I2 => rd_done_state(2),
      I3 => rd_done_state(1),
      O => \rd_done_state[1]_i_1_n_0\
    );
\rd_done_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FA00"
    )
        port map (
      I0 => \rd_done_state[2]_i_2_n_0\,
      I1 => rd_axi_en_exec_ff4,
      I2 => rd_done_state(0),
      I3 => rd_done_state(2),
      I4 => rd_done_state(1),
      O => \rd_done_state[2]_i_1_n_0\
    );
\rd_done_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \rd_cmd_counter_reg__0\(1),
      I1 => \rd_cmd_counter_reg__0\(0),
      I2 => \rd_cmd_counter_reg__0\(2),
      I3 => \rd_cmd_counter_reg__0\(3),
      I4 => \rd_cmd_counter_reg__0\(4),
      I5 => rd_done_state(1),
      O => \rd_done_state[2]_i_2_n_0\
    );
\rd_done_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_done_state[0]_i_1_n_0\,
      Q => rd_done_state(0),
      S => rd_cmd_fifo_i_n_4
    );
\rd_done_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_done_state[1]_i_1_n_0\,
      Q => rd_done_state(1),
      R => rd_cmd_fifo_i_n_4
    );
\rd_done_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_done_state[2]_i_1_n_0\,
      Q => rd_done_state(2),
      R => rd_cmd_fifo_i_n_4
    );
\rd_qid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => rd_cmd_fifo_data_out_qid(0),
      Q => rd_qid(0),
      R => rd_cmd_fifo_i_n_4
    );
\rd_qid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => rd_cmd_fifo_data_out_qid(1),
      Q => rd_qid(1),
      R => rd_cmd_fifo_i_n_4
    );
\rd_qid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => rd_cmd_fifo_data_out_qid(2),
      Q => rd_qid(2),
      R => rd_cmd_fifo_i_n_4
    );
\rd_qid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => rd_cmd_fifo_data_out_qid(3),
      Q => rd_qid(3),
      R => rd_cmd_fifo_i_n_4
    );
rd_sts_flag_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => rd_cmd_fifo_i_n_5,
      Q => \^rd_sts_flag_reg_0\,
      S => rd_cmd_fifo_i_n_4
    );
rx_fifo_i: entity work.\jtag_axi_0_fifo_generator_v13_2_0__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENB_dly_D => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      ENB_dly_D_0 => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D_1\,
      POR_A => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\,
      Q(7 downto 0) => s_daddr_i(7 downto 0),
      SR(0) => xsdb_rst,
      aclk => aclk,
      \count_reg[0]\ => u_xsdb_fifo_interface_n_8,
      \count_reg[2]\ => u_xsdb_fifo_interface_n_9,
      \gc0.count_d1_reg[7]\ => rx_fifo_i_n_4,
      \gc0.count_d1_reg[7]_0\ => rx_fifo_i_n_5,
      \out\(0) => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\(0),
      p_20_out => p_20_out,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => \rx_fifo_data_o_reg[31]\(31 downto 0),
      \rx_fifo_datain_ff_reg[31]\(31) => rx_fifo_i_n_6,
      \rx_fifo_datain_ff_reg[31]\(30) => rx_fifo_i_n_7,
      \rx_fifo_datain_ff_reg[31]\(29) => rx_fifo_i_n_8,
      \rx_fifo_datain_ff_reg[31]\(28) => rx_fifo_i_n_9,
      \rx_fifo_datain_ff_reg[31]\(27) => rx_fifo_i_n_10,
      \rx_fifo_datain_ff_reg[31]\(26) => rx_fifo_i_n_11,
      \rx_fifo_datain_ff_reg[31]\(25) => rx_fifo_i_n_12,
      \rx_fifo_datain_ff_reg[31]\(24) => rx_fifo_i_n_13,
      \rx_fifo_datain_ff_reg[31]\(23) => rx_fifo_i_n_14,
      \rx_fifo_datain_ff_reg[31]\(22) => rx_fifo_i_n_15,
      \rx_fifo_datain_ff_reg[31]\(21) => rx_fifo_i_n_16,
      \rx_fifo_datain_ff_reg[31]\(20) => rx_fifo_i_n_17,
      \rx_fifo_datain_ff_reg[31]\(19) => rx_fifo_i_n_18,
      \rx_fifo_datain_ff_reg[31]\(18) => rx_fifo_i_n_19,
      \rx_fifo_datain_ff_reg[31]\(17) => rx_fifo_i_n_20,
      \rx_fifo_datain_ff_reg[31]\(16) => rx_fifo_i_n_21,
      \rx_fifo_datain_ff_reg[31]\(15) => rx_fifo_i_n_22,
      \rx_fifo_datain_ff_reg[31]\(14) => rx_fifo_i_n_23,
      \rx_fifo_datain_ff_reg[31]\(13) => rx_fifo_i_n_24,
      \rx_fifo_datain_ff_reg[31]\(12) => rx_fifo_i_n_25,
      \rx_fifo_datain_ff_reg[31]\(11) => rx_fifo_i_n_26,
      \rx_fifo_datain_ff_reg[31]\(10) => rx_fifo_i_n_27,
      \rx_fifo_datain_ff_reg[31]\(9) => rx_fifo_i_n_28,
      \rx_fifo_datain_ff_reg[31]\(8) => rx_fifo_i_n_29,
      \rx_fifo_datain_ff_reg[31]\(7) => rx_fifo_i_n_30,
      \rx_fifo_datain_ff_reg[31]\(6) => rx_fifo_i_n_31,
      \rx_fifo_datain_ff_reg[31]\(5) => rx_fifo_i_n_32,
      \rx_fifo_datain_ff_reg[31]\(4) => rx_fifo_i_n_33,
      \rx_fifo_datain_ff_reg[31]\(3) => rx_fifo_i_n_34,
      \rx_fifo_datain_ff_reg[31]\(2) => rx_fifo_i_n_35,
      \rx_fifo_datain_ff_reg[31]\(1) => rx_fifo_i_n_36,
      \rx_fifo_datain_ff_reg[31]\(0) => rx_fifo_i_n_37,
      rx_fifo_rden_reg_reg => rx_fifo_i_n_3,
      rx_fifo_wr_en => rx_fifo_wr_en,
      \s_daddr_i_reg[4]\ => u_xsdb_fifo_interface_n_7,
      s_dclk_o => xsdb_clk,
      s_den_i => s_den_i,
      s_dwe_i => s_dwe_i
    );
s_axi_rd_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => axi_rd_busy,
      I1 => rd_done_state(0),
      I2 => \rd_done_state[2]_i_2_n_0\,
      I3 => s_axi_rd_busy_i_2_n_0,
      I4 => s_axi_rd_busy,
      O => s_axi_rd_busy_i_1_n_0
    );
s_axi_rd_busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => rd_done_state(2),
      I1 => rd_axi_en_exec_ff4,
      I2 => rd_done_state(0),
      I3 => rd_done_state(1),
      O => s_axi_rd_busy_i_2_n_0
    );
s_axi_rd_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rd_busy_i_1_n_0,
      Q => s_axi_rd_busy,
      R => rd_cmd_fifo_i_n_4
    );
s_axi_rd_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11D1FFFF11D10000"
    )
        port map (
      I0 => s_axi_rd_done_i_2_n_0,
      I1 => rd_done_state(0),
      I2 => axi_rd_done,
      I3 => rd_axi_en_exec_ff4,
      I4 => s_axi_rd_done_i_3_n_0,
      I5 => s_axi_rd_done,
      O => s_axi_rd_done_i_1_n_0
    );
s_axi_rd_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rd_cmd_counter_reg__0\(4),
      I1 => \rd_cmd_counter_reg__0\(3),
      I2 => \rd_cmd_counter_reg__0\(2),
      I3 => \rd_cmd_counter_reg__0\(0),
      I4 => \rd_cmd_counter_reg__0\(1),
      O => s_axi_rd_done_i_2_n_0
    );
s_axi_rd_done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => rd_done_state(2),
      I1 => rd_done_state(0),
      I2 => rd_done_state(1),
      O => s_axi_rd_done_i_3_n_0
    );
s_axi_rd_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rd_done_i_1_n_0,
      Q => s_axi_rd_done,
      R => rd_cmd_fifo_i_n_4
    );
\s_axi_rd_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => D(0),
      Q => status_reg_data_in_i(2),
      R => rd_cmd_fifo_i_n_4
    );
\s_axi_rd_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axi_rd_resp,
      D => D(1),
      Q => status_reg_data_in_i(3),
      R => rd_cmd_fifo_i_n_4
    );
s_axi_wr_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => axi_wr_busy,
      I1 => wr_done_state(0),
      I2 => \wr_done_state[2]_i_2_n_0\,
      I3 => s_axi_wr_busy_i_2_n_0,
      I4 => s_axi_wr_busy,
      O => s_axi_wr_busy_i_1_n_0
    );
s_axi_wr_busy_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"051A"
    )
        port map (
      I0 => wr_done_state(2),
      I1 => wr_axi_en_exec_ff4,
      I2 => wr_done_state(0),
      I3 => wr_done_state(1),
      O => s_axi_wr_busy_i_2_n_0
    );
s_axi_wr_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wr_busy_i_1_n_0,
      Q => s_axi_wr_busy,
      R => rd_cmd_fifo_i_n_4
    );
s_axi_wr_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11D1FFFF11D10000"
    )
        port map (
      I0 => s_axi_wr_done_i_2_n_0,
      I1 => wr_done_state(0),
      I2 => axi_wr_done,
      I3 => wr_axi_en_exec_ff4,
      I4 => s_axi_wr_done_i_3_n_0,
      I5 => s_axi_wr_done,
      O => s_axi_wr_done_i_1_n_0
    );
s_axi_wr_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wr_cmd_counter_reg__0\(4),
      I1 => \wr_cmd_counter_reg__0\(3),
      I2 => \wr_cmd_counter_reg__0\(2),
      I3 => \wr_cmd_counter_reg__0\(0),
      I4 => \wr_cmd_counter_reg__0\(1),
      O => s_axi_wr_done_i_2_n_0
    );
s_axi_wr_done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => wr_done_state(2),
      I1 => wr_done_state(0),
      I2 => wr_done_state(1),
      O => s_axi_wr_done_i_3_n_0
    );
s_axi_wr_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wr_done_i_1_n_0,
      Q => s_axi_wr_done,
      R => rd_cmd_fifo_i_n_4
    );
\s_axi_wr_resp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => axi_wr_resp(0),
      I1 => wr_sts_flag_reg_n_0,
      I2 => wr_cmd_fifo_i_n_5,
      I3 => status_reg_data_in_i(6),
      O => \s_axi_wr_resp[0]_i_1_n_0\
    );
\s_axi_wr_resp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFDDF0000000"
    )
        port map (
      I0 => cmd_valid_wr_ch,
      I1 => cmd_valid_wr_ch_d,
      I2 => E(0),
      I3 => wr_sts_flag_reg_n_0,
      I4 => axi_wr_resp(1),
      I5 => status_reg_data_in_i(7),
      O => \s_axi_wr_resp[1]_i_1_n_0\
    );
\s_axi_wr_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_wr_resp[0]_i_1_n_0\,
      Q => status_reg_data_in_i(6),
      R => rd_cmd_fifo_i_n_4
    );
\s_axi_wr_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_axi_wr_resp[1]_i_1_n_0\,
      Q => status_reg_data_in_i(7),
      R => rd_cmd_fifo_i_n_4
    );
\s_daddr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(0),
      Q => s_daddr_i(0),
      R => s_rst_i
    );
\s_daddr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(1),
      Q => s_daddr_i(1),
      R => s_rst_i
    );
\s_daddr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(2),
      Q => s_daddr_i(2),
      R => s_rst_i
    );
\s_daddr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(3),
      Q => s_daddr_i(3),
      R => s_rst_i
    );
\s_daddr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(4),
      Q => s_daddr_i(4),
      R => s_rst_i
    );
\s_daddr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(5),
      Q => s_daddr_i(5),
      R => s_rst_i
    );
\s_daddr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(6),
      Q => s_daddr_i(6),
      R => s_rst_i
    );
\s_daddr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_daddr_wire(7),
      Q => s_daddr_i(7),
      R => s_rst_i
    );
s_den_i_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_den_wire,
      Q => s_den_i,
      R => s_rst_i
    );
\s_do_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(0),
      Q => s_do_i(0),
      R => s_rst_i
    );
\s_do_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(10),
      Q => \s_do_i_reg_n_0_[10]\,
      R => s_rst_i
    );
\s_do_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(11),
      Q => \s_do_i_reg_n_0_[11]\,
      R => s_rst_i
    );
\s_do_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(12),
      Q => \s_do_i_reg_n_0_[12]\,
      R => s_rst_i
    );
\s_do_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(13),
      Q => \s_do_i_reg_n_0_[13]\,
      R => s_rst_i
    );
\s_do_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(14),
      Q => \s_do_i_reg_n_0_[14]\,
      R => s_rst_i
    );
\s_do_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(15),
      Q => \s_do_i_reg_n_0_[15]\,
      R => s_rst_i
    );
\s_do_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(1),
      Q => \s_do_i_reg_n_0_[1]\,
      R => s_rst_i
    );
\s_do_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(2),
      Q => \s_do_i_reg_n_0_[2]\,
      R => s_rst_i
    );
\s_do_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(3),
      Q => \s_do_i_reg_n_0_[3]\,
      R => s_rst_i
    );
\s_do_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(4),
      Q => \s_do_i_reg_n_0_[4]\,
      R => s_rst_i
    );
\s_do_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(5),
      Q => \s_do_i_reg_n_0_[5]\,
      R => s_rst_i
    );
\s_do_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(6),
      Q => \s_do_i_reg_n_0_[6]\,
      R => s_rst_i
    );
\s_do_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(7),
      Q => \s_do_i_reg_n_0_[7]\,
      R => s_rst_i
    );
\s_do_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(8),
      Q => \s_do_i_reg_n_0_[8]\,
      R => s_rst_i
    );
\s_do_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_do_wire(9),
      Q => \s_do_i_reg_n_0_[9]\,
      R => s_rst_i
    );
s_dwe_i_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => s_dwe_wire,
      Q => s_dwe_i,
      R => s_rst_i
    );
\status_reg_datain_ff2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(0),
      Q => status_reg_datain_ff2(0),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(10),
      Q => status_reg_datain_ff2(10),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(11),
      Q => status_reg_datain_ff2(11),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(12),
      Q => status_reg_datain_ff2(12),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(13),
      Q => status_reg_datain_ff2(13),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(14),
      Q => status_reg_datain_ff2(14),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(15),
      Q => status_reg_datain_ff2(15),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(1),
      Q => status_reg_datain_ff2(1),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(2),
      Q => status_reg_datain_ff2(2),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(3),
      Q => status_reg_datain_ff2(3),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(4),
      Q => status_reg_datain_ff2(4),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(5),
      Q => status_reg_datain_ff2(5),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(6),
      Q => status_reg_datain_ff2(6),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(7),
      Q => status_reg_datain_ff2(7),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(8),
      Q => status_reg_datain_ff2(8),
      R => xsdb_rst
    );
\status_reg_datain_ff2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff_1(9),
      Q => status_reg_datain_ff2(9),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(0),
      Q => status_reg_datain_ff3(0),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(10),
      Q => status_reg_datain_ff3(10),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(11),
      Q => status_reg_datain_ff3(11),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(12),
      Q => status_reg_datain_ff3(12),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(13),
      Q => status_reg_datain_ff3(13),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(14),
      Q => status_reg_datain_ff3(14),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(15),
      Q => status_reg_datain_ff3(15),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(1),
      Q => status_reg_datain_ff3(1),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(2),
      Q => status_reg_datain_ff3(2),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(3),
      Q => status_reg_datain_ff3(3),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(4),
      Q => status_reg_datain_ff3(4),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(5),
      Q => status_reg_datain_ff3(5),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(6),
      Q => status_reg_datain_ff3(6),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(7),
      Q => status_reg_datain_ff3(7),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(8),
      Q => status_reg_datain_ff3(8),
      R => xsdb_rst
    );
\status_reg_datain_ff3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff2(9),
      Q => status_reg_datain_ff3(9),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(0),
      Q => status_reg_datain_ff4(0),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(10),
      Q => status_reg_datain_ff4(10),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(11),
      Q => status_reg_datain_ff4(11),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(12),
      Q => status_reg_datain_ff4(12),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(13),
      Q => status_reg_datain_ff4(13),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(14),
      Q => status_reg_datain_ff4(14),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(15),
      Q => status_reg_datain_ff4(15),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(1),
      Q => status_reg_datain_ff4(1),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(2),
      Q => status_reg_datain_ff4(2),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(3),
      Q => status_reg_datain_ff4(3),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(4),
      Q => status_reg_datain_ff4(4),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(5),
      Q => status_reg_datain_ff4(5),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(6),
      Q => status_reg_datain_ff4(6),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(7),
      Q => status_reg_datain_ff4(7),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(8),
      Q => status_reg_datain_ff4(8),
      R => xsdb_rst
    );
\status_reg_datain_ff4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain_ff3(9),
      Q => status_reg_datain_ff4(9),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(0),
      Q => status_reg_datain_ff_1(0),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(10),
      Q => status_reg_datain_ff_1(10),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(11),
      Q => status_reg_datain_ff_1(11),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(12),
      Q => status_reg_datain_ff_1(12),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(13),
      Q => status_reg_datain_ff_1(13),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(14),
      Q => status_reg_datain_ff_1(14),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(15),
      Q => status_reg_datain_ff_1(15),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(1),
      Q => status_reg_datain_ff_1(1),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(2),
      Q => status_reg_datain_ff_1(2),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(3),
      Q => status_reg_datain_ff_1(3),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(4),
      Q => status_reg_datain_ff_1(4),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(5),
      Q => status_reg_datain_ff_1(5),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(6),
      Q => status_reg_datain_ff_1(6),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(7),
      Q => status_reg_datain_ff_1(7),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(8),
      Q => status_reg_datain_ff_1(8),
      R => xsdb_rst
    );
\status_reg_datain_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => status_reg_datain(9),
      Q => status_reg_datain_ff_1(9),
      R => xsdb_rst
    );
\status_reg_datain_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rd_busy,
      Q => status_reg_datain(0),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_qid(2),
      Q => status_reg_datain(10),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_qid(3),
      Q => status_reg_datain(11),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_qid(0),
      Q => status_reg_datain(12),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_qid(1),
      Q => status_reg_datain(13),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_qid(2),
      Q => status_reg_datain(14),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_qid(3),
      Q => status_reg_datain(15),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_rd_done,
      Q => status_reg_datain(1),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_reg_data_in_i(2),
      Q => status_reg_datain(2),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_reg_data_in_i(3),
      Q => status_reg_datain(3),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wr_busy,
      Q => status_reg_datain(4),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axi_wr_done,
      Q => status_reg_datain(5),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_reg_data_in_i(6),
      Q => status_reg_datain(6),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_reg_data_in_i(7),
      Q => status_reg_datain(7),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_qid(0),
      Q => status_reg_datain(8),
      R => rd_cmd_fifo_i_n_4
    );
\status_reg_datain_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rd_qid(1),
      Q => status_reg_datain(9),
      R => rd_cmd_fifo_i_n_4
    );
tx_fifo_i: entity work.jtag_axi_0_fifo_generator_v13_2_0
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \burst_count_reg[8]\ => \burst_count_reg[8]\,
      \gic0.gc0.count_d1_reg[7]\ => tx_fifo_i_n_1,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      \out\(0) => aempty_fwft_fb_i_reg(0),
      s_dclk_o => xsdb_clk,
      \tx_fifo_dataout_reg[31]\(31 downto 0) => tx_fifo_dataout(31 downto 0),
      tx_fifo_wr => tx_fifo_wr,
      tx_fifowren_reg => u_xsdb_fifo_interface_n_6
    );
u_xsdb_fifo_interface: entity work.jtag_axi_0_jtag_axi_v1_2_4_xsdb_fifo_interface
     port map (
      D(31) => rx_fifo_i_n_6,
      D(30) => rx_fifo_i_n_7,
      D(29) => rx_fifo_i_n_8,
      D(28) => rx_fifo_i_n_9,
      D(27) => rx_fifo_i_n_10,
      D(26) => rx_fifo_i_n_11,
      D(25) => rx_fifo_i_n_12,
      D(24) => rx_fifo_i_n_13,
      D(23) => rx_fifo_i_n_14,
      D(22) => rx_fifo_i_n_15,
      D(21) => rx_fifo_i_n_16,
      D(20) => rx_fifo_i_n_17,
      D(19) => rx_fifo_i_n_18,
      D(18) => rx_fifo_i_n_19,
      D(17) => rx_fifo_i_n_20,
      D(16) => rx_fifo_i_n_21,
      D(15) => rx_fifo_i_n_22,
      D(14) => rx_fifo_i_n_23,
      D(13) => rx_fifo_i_n_24,
      D(12) => rx_fifo_i_n_25,
      D(11) => rx_fifo_i_n_26,
      D(10) => rx_fifo_i_n_27,
      D(9) => rx_fifo_i_n_28,
      D(8) => rx_fifo_i_n_29,
      D(7) => rx_fifo_i_n_30,
      D(6) => rx_fifo_i_n_31,
      D(5) => rx_fifo_i_n_32,
      D(4) => rx_fifo_i_n_33,
      D(3) => rx_fifo_i_n_34,
      D(2) => rx_fifo_i_n_35,
      D(1) => rx_fifo_i_n_36,
      D(0) => rx_fifo_i_n_37,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(63 downto 0) => wr_cmd_fifo_dataout_i(63 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(63 downto 0) => rd_cmd_fifo_dataout_i(63 downto 0),
      Q(15) => \s_do_i_reg_n_0_[15]\,
      Q(14) => \s_do_i_reg_n_0_[14]\,
      Q(13) => \s_do_i_reg_n_0_[13]\,
      Q(12) => \s_do_i_reg_n_0_[12]\,
      Q(11) => \s_do_i_reg_n_0_[11]\,
      Q(10) => \s_do_i_reg_n_0_[10]\,
      Q(9) => \s_do_i_reg_n_0_[9]\,
      Q(8) => \s_do_i_reg_n_0_[8]\,
      Q(7) => \s_do_i_reg_n_0_[7]\,
      Q(6) => \s_do_i_reg_n_0_[6]\,
      Q(5) => \s_do_i_reg_n_0_[5]\,
      Q(4) => \s_do_i_reg_n_0_[4]\,
      Q(3) => \s_do_i_reg_n_0_[3]\,
      Q(2) => \s_do_i_reg_n_0_[2]\,
      Q(1) => \s_do_i_reg_n_0_[1]\,
      Q(0) => s_do_i(0),
      fifo_rst_xsdb => fifo_rst_xsdb,
      \gc0.count_d1_reg[7]\ => u_xsdb_fifo_interface_n_9,
      \gic0.gc0.count_d1_reg[7]\ => u_xsdb_fifo_interface_n_6,
      \goreg_bm.dout_i_reg[31]\ => u_xsdb_fifo_interface_n_8,
      \gpr1.dout_i_reg[31]\(31 downto 0) => tx_fifo_dataout(31 downto 0),
      \out\(0) => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\(0),
      p_20_out => \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out_0\,
      p_20_out_0 => \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\,
      ram_full_fb_i_reg => tx_fifo_i_n_1,
      ram_full_fb_i_reg_0 => wr_cmd_fifo_i_n_2,
      ram_full_fb_i_reg_1 => rd_cmd_fifo_i_n_1,
      rd_axi_en => rd_axi_en,
      rd_cmd_fifowren_i => rd_cmd_fifowren_i,
      rx_fifo_rden_reg_reg => u_xsdb_fifo_interface_n_7,
      \s_daddr_i_reg[2]\ => rx_fifo_i_n_5,
      \s_daddr_i_reg[3]\ => rx_fifo_i_n_3,
      \s_daddr_i_reg[4]\ => rx_fifo_i_n_4,
      \s_daddr_i_reg[7]\(7 downto 0) => s_daddr_i(7 downto 0),
      s_dclk_o => xsdb_clk,
      s_den_i => s_den_i,
      s_do_i(15 downto 0) => s_di_i(15 downto 0),
      s_drdy_i => s_drdy_i,
      s_dwe_i => s_dwe_i,
      \status_reg_datain_ff4_reg[15]\(15 downto 0) => status_reg_datain_ff4(15 downto 0),
      tx_fifo_wr => tx_fifo_wr,
      wr_axi_en => wr_axi_en,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i
    );
wr_axi_en_exec_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_axi_en_exec_ff,
      Q => wr_axi_en_exec_ff2,
      R => rd_cmd_fifo_i_n_4
    );
wr_axi_en_exec_ff3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_axi_en_exec_ff2,
      Q => wr_axi_en_exec_ff3,
      R => rd_cmd_fifo_i_n_4
    );
wr_axi_en_exec_ff4_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_axi_en_exec_ff3,
      Q => wr_axi_en_exec_ff4,
      R => rd_cmd_fifo_i_n_4
    );
wr_axi_en_exec_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_axi_en_exec,
      Q => wr_axi_en_exec_ff,
      R => rd_cmd_fifo_i_n_4
    );
wr_axi_en_exec_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => wr_axi_en,
      Q => wr_axi_en_exec,
      R => xsdb_rst
    );
\wr_cmd_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_cmd_counter_reg__0\(0),
      O => \wr_cmd_counter[0]_i_1_n_0\
    );
\wr_cmd_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \wr_cmd_counter_reg__0\(0),
      I1 => wr_done_state(2),
      I2 => \wr_cmd_counter_reg__0\(1),
      O => \wr_cmd_counter[1]_i_1_n_0\
    );
\wr_cmd_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => wr_done_state(2),
      I1 => \wr_cmd_counter_reg__0\(0),
      I2 => \wr_cmd_counter_reg__0\(2),
      I3 => \wr_cmd_counter_reg__0\(1),
      O => wr_cmd_counter(2)
    );
\wr_cmd_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708EF10"
    )
        port map (
      I0 => \wr_cmd_counter_reg__0\(1),
      I1 => \wr_cmd_counter_reg__0\(0),
      I2 => wr_done_state(2),
      I3 => \wr_cmd_counter_reg__0\(3),
      I4 => \wr_cmd_counter_reg__0\(2),
      O => wr_cmd_counter(3)
    );
\wr_cmd_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F08800"
    )
        port map (
      I0 => wr_axi_en_exec_ff4,
      I1 => wr_cmd_fifowren_axi_ff2,
      I2 => E(0),
      I3 => wr_done_state(1),
      I4 => wr_done_state(2),
      I5 => wr_done_state(0),
      O => \wr_cmd_counter[4]_i_1_n_0\
    );
\wr_cmd_counter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFFD0002"
    )
        port map (
      I0 => wr_done_state(2),
      I1 => \wr_cmd_counter_reg__0\(0),
      I2 => \wr_cmd_counter_reg__0\(2),
      I3 => \wr_cmd_counter_reg__0\(1),
      I4 => \wr_cmd_counter_reg__0\(4),
      I5 => \wr_cmd_counter_reg__0\(3),
      O => wr_cmd_counter(4)
    );
\wr_cmd_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \wr_cmd_counter[4]_i_1_n_0\,
      D => \wr_cmd_counter[0]_i_1_n_0\,
      Q => \wr_cmd_counter_reg__0\(0),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \wr_cmd_counter[4]_i_1_n_0\,
      D => \wr_cmd_counter[1]_i_1_n_0\,
      Q => \wr_cmd_counter_reg__0\(1),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \wr_cmd_counter[4]_i_1_n_0\,
      D => wr_cmd_counter(2),
      Q => \wr_cmd_counter_reg__0\(2),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \wr_cmd_counter[4]_i_1_n_0\,
      D => wr_cmd_counter(3),
      Q => \wr_cmd_counter_reg__0\(3),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \wr_cmd_counter[4]_i_1_n_0\,
      D => wr_cmd_counter(4),
      Q => \wr_cmd_counter_reg__0\(4),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_qid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => wr_cmd_fifo_i_n_63,
      Q => wr_cmd_fifo_data_out_qid(0),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_qid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => wr_cmd_fifo_i_n_62,
      Q => wr_cmd_fifo_data_out_qid(1),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_qid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => wr_cmd_fifo_i_n_61,
      Q => wr_cmd_fifo_data_out_qid(2),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_qid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => wr_cmd_fifo_i_n_60,
      Q => wr_cmd_fifo_data_out_qid(3),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_59,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(0),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_58,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(1),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_57,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(2),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_56,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(3),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_55,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(4),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_54,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(5),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_53,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(6),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_52,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(7),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_51,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(8),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_50,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(9),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_49,
      Q => cmd_fifo_data_out(24),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_48,
      Q => cmd_fifo_data_out(25),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_47,
      Q => cmd_fifo_data_out(26),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_46,
      Q => cmd_fifo_data_out(27),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_45,
      Q => cmd_fifo_data_out(28),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_44,
      Q => cmd_fifo_data_out(29),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_43,
      Q => cmd_fifo_data_out(30),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_42,
      Q => cmd_fifo_data_out(31),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_41,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(10),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_40,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(11),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_39,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(12),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_38,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(13),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_37,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(14),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_36,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(15),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_35,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(16),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_34,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(17),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_33,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(18),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_32,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(19),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_31,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(20),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_30,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(21),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_29,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(22),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_28,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(23),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_27,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(24),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_26,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(25),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_25,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(26),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_24,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(27),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_23,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(28),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_22,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(29),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_21,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(30),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_20,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(31),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_19,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(32),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_18,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(33),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_17,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(34),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_16,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(35),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_15,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(36),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_14,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(37),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_13,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(38),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_12,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(39),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_11,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(40),
      R => rd_cmd_fifo_i_n_4
    );
\wr_cmd_fifo_data_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cmd_valid_wr_ch,
      D => wr_cmd_fifo_i_n_10,
      Q => \^cmd_fifo_data_out_ff_reg[63]\(41),
      R => rd_cmd_fifo_i_n_4
    );
wr_cmd_fifo_i: entity work.\jtag_axi_0_fifo_generator_v13_2_0__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => wr_cmd_fifo_i_n_2,
      E(0) => wr_cmd_fifo_i_n_7,
      ENB_dly_D => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D_1\,
      ENB_dly_D_0 => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_A => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\,
      POR_B => \inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      Q(53) => wr_cmd_fifo_i_n_10,
      Q(52) => wr_cmd_fifo_i_n_11,
      Q(51) => wr_cmd_fifo_i_n_12,
      Q(50) => wr_cmd_fifo_i_n_13,
      Q(49) => wr_cmd_fifo_i_n_14,
      Q(48) => wr_cmd_fifo_i_n_15,
      Q(47) => wr_cmd_fifo_i_n_16,
      Q(46) => wr_cmd_fifo_i_n_17,
      Q(45) => wr_cmd_fifo_i_n_18,
      Q(44) => wr_cmd_fifo_i_n_19,
      Q(43) => wr_cmd_fifo_i_n_20,
      Q(42) => wr_cmd_fifo_i_n_21,
      Q(41) => wr_cmd_fifo_i_n_22,
      Q(40) => wr_cmd_fifo_i_n_23,
      Q(39) => wr_cmd_fifo_i_n_24,
      Q(38) => wr_cmd_fifo_i_n_25,
      Q(37) => wr_cmd_fifo_i_n_26,
      Q(36) => wr_cmd_fifo_i_n_27,
      Q(35) => wr_cmd_fifo_i_n_28,
      Q(34) => wr_cmd_fifo_i_n_29,
      Q(33) => wr_cmd_fifo_i_n_30,
      Q(32) => wr_cmd_fifo_i_n_31,
      Q(31) => wr_cmd_fifo_i_n_32,
      Q(30) => wr_cmd_fifo_i_n_33,
      Q(29) => wr_cmd_fifo_i_n_34,
      Q(28) => wr_cmd_fifo_i_n_35,
      Q(27) => wr_cmd_fifo_i_n_36,
      Q(26) => wr_cmd_fifo_i_n_37,
      Q(25) => wr_cmd_fifo_i_n_38,
      Q(24) => wr_cmd_fifo_i_n_39,
      Q(23) => wr_cmd_fifo_i_n_40,
      Q(22) => wr_cmd_fifo_i_n_41,
      Q(21) => wr_cmd_fifo_i_n_42,
      Q(20) => wr_cmd_fifo_i_n_43,
      Q(19) => wr_cmd_fifo_i_n_44,
      Q(18) => wr_cmd_fifo_i_n_45,
      Q(17) => wr_cmd_fifo_i_n_46,
      Q(16) => wr_cmd_fifo_i_n_47,
      Q(15) => wr_cmd_fifo_i_n_48,
      Q(14) => wr_cmd_fifo_i_n_49,
      Q(13) => wr_cmd_fifo_i_n_50,
      Q(12) => wr_cmd_fifo_i_n_51,
      Q(11) => wr_cmd_fifo_i_n_52,
      Q(10) => wr_cmd_fifo_i_n_53,
      Q(9) => wr_cmd_fifo_i_n_54,
      Q(8) => wr_cmd_fifo_i_n_55,
      Q(7) => wr_cmd_fifo_i_n_56,
      Q(6) => wr_cmd_fifo_i_n_57,
      Q(5) => wr_cmd_fifo_i_n_58,
      Q(4) => wr_cmd_fifo_i_n_59,
      Q(3) => wr_cmd_fifo_i_n_60,
      Q(2) => wr_cmd_fifo_i_n_61,
      Q(1) => wr_cmd_fifo_i_n_62,
      Q(0) => wr_cmd_fifo_i_n_63,
      SR(0) => rd_cmd_fifo_i_n_4,
      aclk => aclk,
      aresetn => aresetn,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => \^axi_wr_done_ff\,
      axi_wr_resp(0) => axi_wr_resp(1),
      cmd_valid_wr_ch => cmd_valid_wr_ch,
      cmd_valid_wr_ch_d => cmd_valid_wr_ch_d,
      cmd_valid_wr_ch_d_reg => wr_cmd_fifo_i_n_9,
      fifo_rst_ff3 => fifo_rst_ff3,
      fifo_rst_ff4 => fifo_rst_ff4,
      \out\ => wr_cmd_valid,
      p_20_out => \inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out_0\,
      \s_axi_wr_resp_reg[0]\ => wr_cmd_fifo_i_n_5,
      s_dclk_o => xsdb_clk,
      \tx_fifo_dataout_reg[63]\(63 downto 0) => wr_cmd_fifo_dataout_i(63 downto 0),
      wr_axi_en_exec_ff4 => wr_axi_en_exec_ff4,
      wr_cmd_fifo_read_en => wr_cmd_fifo_read_en,
      wr_cmd_fifowren_i => wr_cmd_fifowren_i,
      wr_sts_flag_reg => wr_cmd_fifo_i_n_8,
      wr_sts_flag_reg_0 => wr_sts_flag_reg_n_0
    );
wr_cmd_fifowren_axi_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_cmd_fifowren_axi,
      Q => wr_cmd_fifowren_axi_ff2,
      R => rd_cmd_fifo_i_n_4
    );
wr_cmd_fifowren_axi_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wr_cmd_fifowren_xsdb,
      Q => wr_cmd_fifowren_axi,
      R => rd_cmd_fifo_i_n_4
    );
wr_cmd_fifowren_xsdb_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => wr_cmd_fifowren_i,
      Q => wr_cmd_fifowren_xsdb,
      R => xsdb_rst
    );
\wr_done_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F530"
    )
        port map (
      I0 => \wr_done_state[2]_i_2_n_0\,
      I1 => wr_axi_en_exec_ff4,
      I2 => wr_done_state(0),
      I3 => wr_done_state(2),
      I4 => wr_done_state(1),
      O => \wr_done_state[0]_i_1_n_0\
    );
\wr_done_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => wr_axi_en_exec_ff4,
      I1 => wr_done_state(0),
      I2 => wr_done_state(2),
      I3 => wr_done_state(1),
      O => \wr_done_state[1]_i_1_n_0\
    );
\wr_done_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FA00"
    )
        port map (
      I0 => \wr_done_state[2]_i_2_n_0\,
      I1 => wr_axi_en_exec_ff4,
      I2 => wr_done_state(0),
      I3 => wr_done_state(2),
      I4 => wr_done_state(1),
      O => \wr_done_state[2]_i_1_n_0\
    );
\wr_done_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wr_cmd_counter_reg__0\(1),
      I1 => \wr_cmd_counter_reg__0\(0),
      I2 => \wr_cmd_counter_reg__0\(2),
      I3 => \wr_cmd_counter_reg__0\(3),
      I4 => \wr_cmd_counter_reg__0\(4),
      I5 => wr_done_state(1),
      O => \wr_done_state[2]_i_2_n_0\
    );
\wr_done_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_done_state[0]_i_1_n_0\,
      Q => wr_done_state(0),
      S => rd_cmd_fifo_i_n_4
    );
\wr_done_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_done_state[1]_i_1_n_0\,
      Q => wr_done_state(1),
      R => rd_cmd_fifo_i_n_4
    );
\wr_done_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_done_state[2]_i_1_n_0\,
      Q => wr_done_state(2),
      R => rd_cmd_fifo_i_n_4
    );
\wr_qid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wr_cmd_fifo_i_n_7,
      D => wr_cmd_fifo_data_out_qid(0),
      Q => wr_qid(0),
      R => rd_cmd_fifo_i_n_4
    );
\wr_qid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wr_cmd_fifo_i_n_7,
      D => wr_cmd_fifo_data_out_qid(1),
      Q => wr_qid(1),
      R => rd_cmd_fifo_i_n_4
    );
\wr_qid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wr_cmd_fifo_i_n_7,
      D => wr_cmd_fifo_data_out_qid(2),
      Q => wr_qid(2),
      R => rd_cmd_fifo_i_n_4
    );
\wr_qid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => wr_cmd_fifo_i_n_7,
      D => wr_cmd_fifo_data_out_qid(3),
      Q => wr_qid(3),
      R => rd_cmd_fifo_i_n_4
    );
wr_sts_flag_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => wr_cmd_fifo_i_n_8,
      Q => wr_sts_flag_reg_n_0,
      S => rd_cmd_fifo_i_n_4
    );
xsdb_rst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => aresetn_xsdb,
      I1 => fifo_rst_xsdb_ff2,
      I2 => fifo_rst_xsdb_ff,
      O => xsdb_rst_i_1_n_0
    );
xsdb_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => xsdb_clk,
      CE => '1',
      D => xsdb_rst_i_1_n_0,
      Q => xsdb_rst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0_jtag_axi_v1_2_4_jtag_axi is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sl_iport0 : in STD_LOGIC_VECTOR ( 36 downto 0 );
    sl_oport0 : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute AXI_64BIT_ADDR : integer;
  attribute AXI_64BIT_ADDR of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is "yes";
  attribute FAMILY : string;
  attribute FAMILY of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is "artix7";
  attribute GC_XSDB_S_IPORT_WIDTH : integer;
  attribute GC_XSDB_S_IPORT_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 37;
  attribute GC_XSDB_S_OPORT_WIDTH : integer;
  attribute GC_XSDB_S_OPORT_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 17;
  attribute M_AXI_ADDR_WIDTH : integer;
  attribute M_AXI_ADDR_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 32;
  attribute M_AXI_DATA_WIDTH : integer;
  attribute M_AXI_DATA_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 32;
  attribute M_AXI_ID_WIDTH : integer;
  attribute M_AXI_ID_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 1;
  attribute M_HAS_BURST : integer;
  attribute M_HAS_BURST of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is "jtag_axi_v1_2_4_jtag_axi";
  attribute PROTOCOL : integer;
  attribute PROTOCOL of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 0;
  attribute RD_CMDFIFO_DATA_WIDTH : integer;
  attribute RD_CMDFIFO_DATA_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 64;
  attribute RD_TXN_QUEUE_LENGTH : integer;
  attribute RD_TXN_QUEUE_LENGTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 1;
  attribute WR_CMDFIFO_DATA_WIDTH : integer;
  attribute WR_CMDFIFO_DATA_WIDTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 64;
  attribute WR_TXN_QUEUE_LENGTH : integer;
  attribute WR_TXN_QUEUE_LENGTH of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is 1;
  attribute dont_touch : string;
  attribute dont_touch of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi : entity is "true";
end jtag_axi_0_jtag_axi_v1_2_4_jtag_axi;

architecture STRUCTURE of jtag_axi_0_jtag_axi_v1_2_4_jtag_axi is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal axi_bridge_u_n_42 : STD_LOGIC;
  signal axi_bridge_u_n_55 : STD_LOGIC;
  signal axi_bridge_u_n_57 : STD_LOGIC;
  signal axi_bridge_u_n_58 : STD_LOGIC;
  signal axi_rd : STD_LOGIC;
  signal axi_rd_busy : STD_LOGIC;
  signal axi_rd_done : STD_LOGIC;
  signal axi_rd_done_ff : STD_LOGIC;
  signal axi_rd_done_pulse : STD_LOGIC;
  signal axi_rd_resp : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_wr : STD_LOGIC;
  signal axi_wr_busy : STD_LOGIC;
  signal axi_wr_done : STD_LOGIC;
  signal axi_wr_done_ff : STD_LOGIC;
  signal axi_wr_resp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cmd_fifo_data_out : STD_LOGIC_VECTOR ( 63 downto 11 );
  signal jtag_axi_engine_u_n_100 : STD_LOGIC;
  signal jtag_axi_engine_u_n_101 : STD_LOGIC;
  signal jtag_axi_engine_u_n_102 : STD_LOGIC;
  signal jtag_axi_engine_u_n_103 : STD_LOGIC;
  signal jtag_axi_engine_u_n_104 : STD_LOGIC;
  signal jtag_axi_engine_u_n_105 : STD_LOGIC;
  signal jtag_axi_engine_u_n_106 : STD_LOGIC;
  signal jtag_axi_engine_u_n_107 : STD_LOGIC;
  signal jtag_axi_engine_u_n_108 : STD_LOGIC;
  signal jtag_axi_engine_u_n_109 : STD_LOGIC;
  signal jtag_axi_engine_u_n_110 : STD_LOGIC;
  signal jtag_axi_engine_u_n_111 : STD_LOGIC;
  signal jtag_axi_engine_u_n_112 : STD_LOGIC;
  signal jtag_axi_engine_u_n_113 : STD_LOGIC;
  signal jtag_axi_engine_u_n_114 : STD_LOGIC;
  signal jtag_axi_engine_u_n_115 : STD_LOGIC;
  signal jtag_axi_engine_u_n_116 : STD_LOGIC;
  signal jtag_axi_engine_u_n_117 : STD_LOGIC;
  signal jtag_axi_engine_u_n_118 : STD_LOGIC;
  signal jtag_axi_engine_u_n_119 : STD_LOGIC;
  signal jtag_axi_engine_u_n_120 : STD_LOGIC;
  signal jtag_axi_engine_u_n_121 : STD_LOGIC;
  signal jtag_axi_engine_u_n_122 : STD_LOGIC;
  signal jtag_axi_engine_u_n_123 : STD_LOGIC;
  signal jtag_axi_engine_u_n_124 : STD_LOGIC;
  signal jtag_axi_engine_u_n_125 : STD_LOGIC;
  signal jtag_axi_engine_u_n_126 : STD_LOGIC;
  signal jtag_axi_engine_u_n_127 : STD_LOGIC;
  signal jtag_axi_engine_u_n_128 : STD_LOGIC;
  signal jtag_axi_engine_u_n_129 : STD_LOGIC;
  signal jtag_axi_engine_u_n_162 : STD_LOGIC;
  signal jtag_axi_engine_u_n_163 : STD_LOGIC;
  signal jtag_axi_engine_u_n_164 : STD_LOGIC;
  signal jtag_axi_engine_u_n_165 : STD_LOGIC;
  signal jtag_axi_engine_u_n_166 : STD_LOGIC;
  signal jtag_axi_engine_u_n_167 : STD_LOGIC;
  signal jtag_axi_engine_u_n_168 : STD_LOGIC;
  signal jtag_axi_engine_u_n_169 : STD_LOGIC;
  signal jtag_axi_engine_u_n_170 : STD_LOGIC;
  signal jtag_axi_engine_u_n_171 : STD_LOGIC;
  signal jtag_axi_engine_u_n_172 : STD_LOGIC;
  signal jtag_axi_engine_u_n_173 : STD_LOGIC;
  signal jtag_axi_engine_u_n_174 : STD_LOGIC;
  signal jtag_axi_engine_u_n_175 : STD_LOGIC;
  signal jtag_axi_engine_u_n_176 : STD_LOGIC;
  signal jtag_axi_engine_u_n_177 : STD_LOGIC;
  signal jtag_axi_engine_u_n_18 : STD_LOGIC;
  signal jtag_axi_engine_u_n_23 : STD_LOGIC;
  signal jtag_axi_engine_u_n_66 : STD_LOGIC;
  signal jtag_axi_engine_u_n_67 : STD_LOGIC;
  signal jtag_axi_engine_u_n_68 : STD_LOGIC;
  signal jtag_axi_engine_u_n_69 : STD_LOGIC;
  signal jtag_axi_engine_u_n_70 : STD_LOGIC;
  signal jtag_axi_engine_u_n_71 : STD_LOGIC;
  signal jtag_axi_engine_u_n_72 : STD_LOGIC;
  signal jtag_axi_engine_u_n_73 : STD_LOGIC;
  signal jtag_axi_engine_u_n_74 : STD_LOGIC;
  signal jtag_axi_engine_u_n_75 : STD_LOGIC;
  signal jtag_axi_engine_u_n_76 : STD_LOGIC;
  signal jtag_axi_engine_u_n_77 : STD_LOGIC;
  signal jtag_axi_engine_u_n_78 : STD_LOGIC;
  signal jtag_axi_engine_u_n_79 : STD_LOGIC;
  signal jtag_axi_engine_u_n_80 : STD_LOGIC;
  signal jtag_axi_engine_u_n_81 : STD_LOGIC;
  signal jtag_axi_engine_u_n_82 : STD_LOGIC;
  signal jtag_axi_engine_u_n_83 : STD_LOGIC;
  signal jtag_axi_engine_u_n_84 : STD_LOGIC;
  signal jtag_axi_engine_u_n_85 : STD_LOGIC;
  signal jtag_axi_engine_u_n_86 : STD_LOGIC;
  signal jtag_axi_engine_u_n_87 : STD_LOGIC;
  signal jtag_axi_engine_u_n_88 : STD_LOGIC;
  signal jtag_axi_engine_u_n_89 : STD_LOGIC;
  signal jtag_axi_engine_u_n_90 : STD_LOGIC;
  signal jtag_axi_engine_u_n_91 : STD_LOGIC;
  signal jtag_axi_engine_u_n_92 : STD_LOGIC;
  signal jtag_axi_engine_u_n_93 : STD_LOGIC;
  signal jtag_axi_engine_u_n_94 : STD_LOGIC;
  signal jtag_axi_engine_u_n_95 : STD_LOGIC;
  signal jtag_axi_engine_u_n_96 : STD_LOGIC;
  signal jtag_axi_engine_u_n_97 : STD_LOGIC;
  signal jtag_axi_engine_u_n_98 : STD_LOGIC;
  signal jtag_axi_engine_u_n_99 : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal rx_fifo_data_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\ : STD_LOGIC;
  signal rx_fifo_wr_en : STD_LOGIC;
  signal \tx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute S : string;
  attribute S of aclk : signal is "TRUE";
  attribute keep : string;
  attribute keep of aclk : signal is "true";
  attribute dont_touch of sl_iport0 : signal is "true";
  attribute dont_touch of sl_oport0 : signal is "true";
begin
  m_axi_arlock <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_awlock <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_wstrb(3) <= \<const1>\;
  m_axi_wstrb(2) <= \<const1>\;
  m_axi_wstrb(1) <= \<const1>\;
  m_axi_wstrb(0) <= \<const1>\;
  m_axi_wvalid <= \^m_axi_wvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
axi_bridge_u: entity work.jtag_axi_0_jtag_axi_v1_2_4_axi_bridge
     port map (
      D(1) => axi_bridge_u_n_57,
      D(0) => axi_bridge_u_n_58,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(31 downto 0) => rx_fifo_data_o(31 downto 0),
      E(0) => p_6_in,
      Q(0) => \^m_axi_wvalid\,
      SR(0) => axi_bridge_u_n_42,
      aclk => aclk,
      aresetn => aresetn,
      axi_rd => axi_rd,
      axi_rd_busy => axi_rd_busy,
      axi_rd_done => axi_rd_done,
      axi_rd_done_ff => axi_rd_done_ff,
      axi_rd_txn_err_reg(0) => axi_rd_resp(1),
      axi_wr => axi_wr,
      axi_wr_busy => axi_wr_busy,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(1 downto 0) => axi_wr_resp(1 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => \tx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \m_axi_awaddr[31]\(41 downto 10) => m_axi_awaddr(31 downto 0),
      \m_axi_awaddr[31]\(9 downto 7) => m_axi_awsize(2 downto 0),
      \m_axi_awaddr[31]\(6 downto 5) => m_axi_awburst(1 downto 0),
      \m_axi_awaddr[31]\(4 downto 1) => m_axi_awcache(3 downto 0),
      \m_axi_awaddr[31]\(0) => m_axi_awid(0),
      \m_axi_awlen[7]\(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      \out\(41 downto 10) => m_axi_araddr(31 downto 0),
      \out\(9 downto 7) => m_axi_arsize(2 downto 0),
      \out\(6 downto 5) => m_axi_arburst(1 downto 0),
      \out\(4 downto 1) => m_axi_arcache(3 downto 0),
      \out\(0) => m_axi_arid(0),
      p_20_out => \rx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\,
      ram_empty_i_reg => axi_bridge_u_n_55,
      ram_full_fb_i_reg => jtag_axi_engine_u_n_18,
      \rd_cmd_fifo_data_out_qid_reg[3]\(0) => axi_rd_done_pulse,
      \rd_cmd_fifo_data_out_reg[19]\(7) => jtag_axi_engine_u_n_170,
      \rd_cmd_fifo_data_out_reg[19]\(6) => jtag_axi_engine_u_n_171,
      \rd_cmd_fifo_data_out_reg[19]\(5) => jtag_axi_engine_u_n_172,
      \rd_cmd_fifo_data_out_reg[19]\(4) => jtag_axi_engine_u_n_173,
      \rd_cmd_fifo_data_out_reg[19]\(3) => jtag_axi_engine_u_n_174,
      \rd_cmd_fifo_data_out_reg[19]\(2) => jtag_axi_engine_u_n_175,
      \rd_cmd_fifo_data_out_reg[19]\(1) => jtag_axi_engine_u_n_176,
      \rd_cmd_fifo_data_out_reg[19]\(0) => jtag_axi_engine_u_n_177,
      \rd_cmd_fifo_data_out_reg[63]\(63) => jtag_axi_engine_u_n_66,
      \rd_cmd_fifo_data_out_reg[63]\(62) => jtag_axi_engine_u_n_67,
      \rd_cmd_fifo_data_out_reg[63]\(61) => jtag_axi_engine_u_n_68,
      \rd_cmd_fifo_data_out_reg[63]\(60) => jtag_axi_engine_u_n_69,
      \rd_cmd_fifo_data_out_reg[63]\(59) => jtag_axi_engine_u_n_70,
      \rd_cmd_fifo_data_out_reg[63]\(58) => jtag_axi_engine_u_n_71,
      \rd_cmd_fifo_data_out_reg[63]\(57) => jtag_axi_engine_u_n_72,
      \rd_cmd_fifo_data_out_reg[63]\(56) => jtag_axi_engine_u_n_73,
      \rd_cmd_fifo_data_out_reg[63]\(55) => jtag_axi_engine_u_n_74,
      \rd_cmd_fifo_data_out_reg[63]\(54) => jtag_axi_engine_u_n_75,
      \rd_cmd_fifo_data_out_reg[63]\(53) => jtag_axi_engine_u_n_76,
      \rd_cmd_fifo_data_out_reg[63]\(52) => jtag_axi_engine_u_n_77,
      \rd_cmd_fifo_data_out_reg[63]\(51) => jtag_axi_engine_u_n_78,
      \rd_cmd_fifo_data_out_reg[63]\(50) => jtag_axi_engine_u_n_79,
      \rd_cmd_fifo_data_out_reg[63]\(49) => jtag_axi_engine_u_n_80,
      \rd_cmd_fifo_data_out_reg[63]\(48) => jtag_axi_engine_u_n_81,
      \rd_cmd_fifo_data_out_reg[63]\(47) => jtag_axi_engine_u_n_82,
      \rd_cmd_fifo_data_out_reg[63]\(46) => jtag_axi_engine_u_n_83,
      \rd_cmd_fifo_data_out_reg[63]\(45) => jtag_axi_engine_u_n_84,
      \rd_cmd_fifo_data_out_reg[63]\(44) => jtag_axi_engine_u_n_85,
      \rd_cmd_fifo_data_out_reg[63]\(43) => jtag_axi_engine_u_n_86,
      \rd_cmd_fifo_data_out_reg[63]\(42) => jtag_axi_engine_u_n_87,
      \rd_cmd_fifo_data_out_reg[63]\(41) => jtag_axi_engine_u_n_88,
      \rd_cmd_fifo_data_out_reg[63]\(40) => jtag_axi_engine_u_n_89,
      \rd_cmd_fifo_data_out_reg[63]\(39) => jtag_axi_engine_u_n_90,
      \rd_cmd_fifo_data_out_reg[63]\(38) => jtag_axi_engine_u_n_91,
      \rd_cmd_fifo_data_out_reg[63]\(37) => jtag_axi_engine_u_n_92,
      \rd_cmd_fifo_data_out_reg[63]\(36) => jtag_axi_engine_u_n_93,
      \rd_cmd_fifo_data_out_reg[63]\(35) => jtag_axi_engine_u_n_94,
      \rd_cmd_fifo_data_out_reg[63]\(34) => jtag_axi_engine_u_n_95,
      \rd_cmd_fifo_data_out_reg[63]\(33) => jtag_axi_engine_u_n_96,
      \rd_cmd_fifo_data_out_reg[63]\(32) => jtag_axi_engine_u_n_97,
      \rd_cmd_fifo_data_out_reg[63]\(31) => jtag_axi_engine_u_n_98,
      \rd_cmd_fifo_data_out_reg[63]\(30) => jtag_axi_engine_u_n_99,
      \rd_cmd_fifo_data_out_reg[63]\(29) => jtag_axi_engine_u_n_100,
      \rd_cmd_fifo_data_out_reg[63]\(28) => jtag_axi_engine_u_n_101,
      \rd_cmd_fifo_data_out_reg[63]\(27) => jtag_axi_engine_u_n_102,
      \rd_cmd_fifo_data_out_reg[63]\(26) => jtag_axi_engine_u_n_103,
      \rd_cmd_fifo_data_out_reg[63]\(25) => jtag_axi_engine_u_n_104,
      \rd_cmd_fifo_data_out_reg[63]\(24) => jtag_axi_engine_u_n_105,
      \rd_cmd_fifo_data_out_reg[63]\(23) => jtag_axi_engine_u_n_106,
      \rd_cmd_fifo_data_out_reg[63]\(22) => jtag_axi_engine_u_n_107,
      \rd_cmd_fifo_data_out_reg[63]\(21) => jtag_axi_engine_u_n_108,
      \rd_cmd_fifo_data_out_reg[63]\(20) => jtag_axi_engine_u_n_109,
      \rd_cmd_fifo_data_out_reg[63]\(19) => jtag_axi_engine_u_n_110,
      \rd_cmd_fifo_data_out_reg[63]\(18) => jtag_axi_engine_u_n_111,
      \rd_cmd_fifo_data_out_reg[63]\(17) => jtag_axi_engine_u_n_112,
      \rd_cmd_fifo_data_out_reg[63]\(16) => jtag_axi_engine_u_n_113,
      \rd_cmd_fifo_data_out_reg[63]\(15) => jtag_axi_engine_u_n_114,
      \rd_cmd_fifo_data_out_reg[63]\(14) => jtag_axi_engine_u_n_115,
      \rd_cmd_fifo_data_out_reg[63]\(13) => jtag_axi_engine_u_n_116,
      \rd_cmd_fifo_data_out_reg[63]\(12) => jtag_axi_engine_u_n_117,
      \rd_cmd_fifo_data_out_reg[63]\(11) => jtag_axi_engine_u_n_118,
      \rd_cmd_fifo_data_out_reg[63]\(10) => jtag_axi_engine_u_n_119,
      \rd_cmd_fifo_data_out_reg[63]\(9) => jtag_axi_engine_u_n_120,
      \rd_cmd_fifo_data_out_reg[63]\(8) => jtag_axi_engine_u_n_121,
      \rd_cmd_fifo_data_out_reg[63]\(7) => jtag_axi_engine_u_n_122,
      \rd_cmd_fifo_data_out_reg[63]\(6) => jtag_axi_engine_u_n_123,
      \rd_cmd_fifo_data_out_reg[63]\(5) => jtag_axi_engine_u_n_124,
      \rd_cmd_fifo_data_out_reg[63]\(4) => jtag_axi_engine_u_n_125,
      \rd_cmd_fifo_data_out_reg[63]\(3) => jtag_axi_engine_u_n_126,
      \rd_cmd_fifo_data_out_reg[63]\(2) => jtag_axi_engine_u_n_127,
      \rd_cmd_fifo_data_out_reg[63]\(1) => jtag_axi_engine_u_n_128,
      \rd_cmd_fifo_data_out_reg[63]\(0) => jtag_axi_engine_u_n_129,
      rd_sts_flag_reg => jtag_axi_engine_u_n_23,
      rx_fifo_wr_en => rx_fifo_wr_en,
      \wr_cmd_fifo_data_out_reg[19]\(7) => jtag_axi_engine_u_n_162,
      \wr_cmd_fifo_data_out_reg[19]\(6) => jtag_axi_engine_u_n_163,
      \wr_cmd_fifo_data_out_reg[19]\(5) => jtag_axi_engine_u_n_164,
      \wr_cmd_fifo_data_out_reg[19]\(4) => jtag_axi_engine_u_n_165,
      \wr_cmd_fifo_data_out_reg[19]\(3) => jtag_axi_engine_u_n_166,
      \wr_cmd_fifo_data_out_reg[19]\(2) => jtag_axi_engine_u_n_167,
      \wr_cmd_fifo_data_out_reg[19]\(1) => jtag_axi_engine_u_n_168,
      \wr_cmd_fifo_data_out_reg[19]\(0) => jtag_axi_engine_u_n_169,
      \wr_cmd_fifo_data_out_reg[63]\(41 downto 10) => cmd_fifo_data_out(63 downto 32),
      \wr_cmd_fifo_data_out_reg[63]\(9 downto 1) => cmd_fifo_data_out(23 downto 15),
      \wr_cmd_fifo_data_out_reg[63]\(0) => cmd_fifo_data_out(11)
    );
jtag_axi_engine_u: entity work.jtag_axi_0_jtag_axi_v1_2_4_jtag_axi_engine
     port map (
      D(1) => axi_bridge_u_n_57,
      D(0) => axi_bridge_u_n_58,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ => jtag_axi_engine_u_n_18,
      E(0) => p_6_in,
      Q(0) => \^m_axi_wvalid\,
      SR(0) => axi_bridge_u_n_42,
      aclk => aclk,
      aempty_fwft_fb_i_reg(0) => \tx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/p_0_in\(0),
      aresetn => aresetn,
      axi_rd => axi_rd,
      axi_rd_busy => axi_rd_busy,
      axi_rd_done => axi_rd_done,
      axi_rd_done_ff => axi_rd_done_ff,
      axi_rd_done_reg(0) => axi_rd_done_pulse,
      \axi_rd_resp_reg[1]\(0) => axi_rd_resp(1),
      axi_wr => axi_wr,
      axi_wr_busy => axi_wr_busy,
      axi_wr_done => axi_wr_done,
      axi_wr_done_ff => axi_wr_done_ff,
      axi_wr_resp(1 downto 0) => axi_wr_resp(1 downto 0),
      \burst_count_reg[8]\ => axi_bridge_u_n_55,
      \cmd_fifo_data_out_ff_reg[63]\(41 downto 10) => cmd_fifo_data_out(63 downto 32),
      \cmd_fifo_data_out_ff_reg[63]\(9 downto 1) => cmd_fifo_data_out(23 downto 15),
      \cmd_fifo_data_out_ff_reg[63]\(0) => cmd_fifo_data_out(11),
      \cmd_fifo_data_out_ff_reg[63]_0\(63) => jtag_axi_engine_u_n_66,
      \cmd_fifo_data_out_ff_reg[63]_0\(62) => jtag_axi_engine_u_n_67,
      \cmd_fifo_data_out_ff_reg[63]_0\(61) => jtag_axi_engine_u_n_68,
      \cmd_fifo_data_out_ff_reg[63]_0\(60) => jtag_axi_engine_u_n_69,
      \cmd_fifo_data_out_ff_reg[63]_0\(59) => jtag_axi_engine_u_n_70,
      \cmd_fifo_data_out_ff_reg[63]_0\(58) => jtag_axi_engine_u_n_71,
      \cmd_fifo_data_out_ff_reg[63]_0\(57) => jtag_axi_engine_u_n_72,
      \cmd_fifo_data_out_ff_reg[63]_0\(56) => jtag_axi_engine_u_n_73,
      \cmd_fifo_data_out_ff_reg[63]_0\(55) => jtag_axi_engine_u_n_74,
      \cmd_fifo_data_out_ff_reg[63]_0\(54) => jtag_axi_engine_u_n_75,
      \cmd_fifo_data_out_ff_reg[63]_0\(53) => jtag_axi_engine_u_n_76,
      \cmd_fifo_data_out_ff_reg[63]_0\(52) => jtag_axi_engine_u_n_77,
      \cmd_fifo_data_out_ff_reg[63]_0\(51) => jtag_axi_engine_u_n_78,
      \cmd_fifo_data_out_ff_reg[63]_0\(50) => jtag_axi_engine_u_n_79,
      \cmd_fifo_data_out_ff_reg[63]_0\(49) => jtag_axi_engine_u_n_80,
      \cmd_fifo_data_out_ff_reg[63]_0\(48) => jtag_axi_engine_u_n_81,
      \cmd_fifo_data_out_ff_reg[63]_0\(47) => jtag_axi_engine_u_n_82,
      \cmd_fifo_data_out_ff_reg[63]_0\(46) => jtag_axi_engine_u_n_83,
      \cmd_fifo_data_out_ff_reg[63]_0\(45) => jtag_axi_engine_u_n_84,
      \cmd_fifo_data_out_ff_reg[63]_0\(44) => jtag_axi_engine_u_n_85,
      \cmd_fifo_data_out_ff_reg[63]_0\(43) => jtag_axi_engine_u_n_86,
      \cmd_fifo_data_out_ff_reg[63]_0\(42) => jtag_axi_engine_u_n_87,
      \cmd_fifo_data_out_ff_reg[63]_0\(41) => jtag_axi_engine_u_n_88,
      \cmd_fifo_data_out_ff_reg[63]_0\(40) => jtag_axi_engine_u_n_89,
      \cmd_fifo_data_out_ff_reg[63]_0\(39) => jtag_axi_engine_u_n_90,
      \cmd_fifo_data_out_ff_reg[63]_0\(38) => jtag_axi_engine_u_n_91,
      \cmd_fifo_data_out_ff_reg[63]_0\(37) => jtag_axi_engine_u_n_92,
      \cmd_fifo_data_out_ff_reg[63]_0\(36) => jtag_axi_engine_u_n_93,
      \cmd_fifo_data_out_ff_reg[63]_0\(35) => jtag_axi_engine_u_n_94,
      \cmd_fifo_data_out_ff_reg[63]_0\(34) => jtag_axi_engine_u_n_95,
      \cmd_fifo_data_out_ff_reg[63]_0\(33) => jtag_axi_engine_u_n_96,
      \cmd_fifo_data_out_ff_reg[63]_0\(32) => jtag_axi_engine_u_n_97,
      \cmd_fifo_data_out_ff_reg[63]_0\(31) => jtag_axi_engine_u_n_98,
      \cmd_fifo_data_out_ff_reg[63]_0\(30) => jtag_axi_engine_u_n_99,
      \cmd_fifo_data_out_ff_reg[63]_0\(29) => jtag_axi_engine_u_n_100,
      \cmd_fifo_data_out_ff_reg[63]_0\(28) => jtag_axi_engine_u_n_101,
      \cmd_fifo_data_out_ff_reg[63]_0\(27) => jtag_axi_engine_u_n_102,
      \cmd_fifo_data_out_ff_reg[63]_0\(26) => jtag_axi_engine_u_n_103,
      \cmd_fifo_data_out_ff_reg[63]_0\(25) => jtag_axi_engine_u_n_104,
      \cmd_fifo_data_out_ff_reg[63]_0\(24) => jtag_axi_engine_u_n_105,
      \cmd_fifo_data_out_ff_reg[63]_0\(23) => jtag_axi_engine_u_n_106,
      \cmd_fifo_data_out_ff_reg[63]_0\(22) => jtag_axi_engine_u_n_107,
      \cmd_fifo_data_out_ff_reg[63]_0\(21) => jtag_axi_engine_u_n_108,
      \cmd_fifo_data_out_ff_reg[63]_0\(20) => jtag_axi_engine_u_n_109,
      \cmd_fifo_data_out_ff_reg[63]_0\(19) => jtag_axi_engine_u_n_110,
      \cmd_fifo_data_out_ff_reg[63]_0\(18) => jtag_axi_engine_u_n_111,
      \cmd_fifo_data_out_ff_reg[63]_0\(17) => jtag_axi_engine_u_n_112,
      \cmd_fifo_data_out_ff_reg[63]_0\(16) => jtag_axi_engine_u_n_113,
      \cmd_fifo_data_out_ff_reg[63]_0\(15) => jtag_axi_engine_u_n_114,
      \cmd_fifo_data_out_ff_reg[63]_0\(14) => jtag_axi_engine_u_n_115,
      \cmd_fifo_data_out_ff_reg[63]_0\(13) => jtag_axi_engine_u_n_116,
      \cmd_fifo_data_out_ff_reg[63]_0\(12) => jtag_axi_engine_u_n_117,
      \cmd_fifo_data_out_ff_reg[63]_0\(11) => jtag_axi_engine_u_n_118,
      \cmd_fifo_data_out_ff_reg[63]_0\(10) => jtag_axi_engine_u_n_119,
      \cmd_fifo_data_out_ff_reg[63]_0\(9) => jtag_axi_engine_u_n_120,
      \cmd_fifo_data_out_ff_reg[63]_0\(8) => jtag_axi_engine_u_n_121,
      \cmd_fifo_data_out_ff_reg[63]_0\(7) => jtag_axi_engine_u_n_122,
      \cmd_fifo_data_out_ff_reg[63]_0\(6) => jtag_axi_engine_u_n_123,
      \cmd_fifo_data_out_ff_reg[63]_0\(5) => jtag_axi_engine_u_n_124,
      \cmd_fifo_data_out_ff_reg[63]_0\(4) => jtag_axi_engine_u_n_125,
      \cmd_fifo_data_out_ff_reg[63]_0\(3) => jtag_axi_engine_u_n_126,
      \cmd_fifo_data_out_ff_reg[63]_0\(2) => jtag_axi_engine_u_n_127,
      \cmd_fifo_data_out_ff_reg[63]_0\(1) => jtag_axi_engine_u_n_128,
      \cmd_fifo_data_out_ff_reg[63]_0\(0) => jtag_axi_engine_u_n_129,
      \len_reg[7]\(7) => jtag_axi_engine_u_n_162,
      \len_reg[7]\(6) => jtag_axi_engine_u_n_163,
      \len_reg[7]\(5) => jtag_axi_engine_u_n_164,
      \len_reg[7]\(4) => jtag_axi_engine_u_n_165,
      \len_reg[7]\(3) => jtag_axi_engine_u_n_166,
      \len_reg[7]\(2) => jtag_axi_engine_u_n_167,
      \len_reg[7]\(1) => jtag_axi_engine_u_n_168,
      \len_reg[7]\(0) => jtag_axi_engine_u_n_169,
      \len_reg[7]_0\(7) => jtag_axi_engine_u_n_170,
      \len_reg[7]_0\(6) => jtag_axi_engine_u_n_171,
      \len_reg[7]_0\(5) => jtag_axi_engine_u_n_172,
      \len_reg[7]_0\(4) => jtag_axi_engine_u_n_173,
      \len_reg[7]_0\(3) => jtag_axi_engine_u_n_174,
      \len_reg[7]_0\(2) => jtag_axi_engine_u_n_175,
      \len_reg[7]_0\(1) => jtag_axi_engine_u_n_176,
      \len_reg[7]_0\(0) => jtag_axi_engine_u_n_177,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      \out\(36 downto 0) => sl_iport0(36 downto 0),
      p_20_out => \rx_fifo_i/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out\,
      rd_sts_flag_reg_0 => jtag_axi_engine_u_n_23,
      \rx_fifo_data_o_reg[31]\(31 downto 0) => rx_fifo_data_o(31 downto 0),
      rx_fifo_wr_en => rx_fifo_wr_en,
      sl_oport_o(16 downto 0) => sl_oport0(16 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity jtag_axi_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of jtag_axi_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of jtag_axi_0 : entity is "jtag_axi_0,jtag_axi_v1_2_4_jtag_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of jtag_axi_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of jtag_axi_0 : entity is "jtag_axi_v1_2_4_jtag_axi,Vivado 2017.3";
end jtag_axi_0;

architecture STRUCTURE of jtag_axi_0 is
  signal NLW_inst_sl_oport0_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute AXI_64BIT_ADDR : integer;
  attribute AXI_64BIT_ADDR of inst : label is 0;
  attribute FAMILY : string;
  attribute FAMILY of inst : label is "artix7";
  attribute GC_XSDB_S_IPORT_WIDTH : integer;
  attribute GC_XSDB_S_IPORT_WIDTH of inst : label is 37;
  attribute GC_XSDB_S_OPORT_WIDTH : integer;
  attribute GC_XSDB_S_OPORT_WIDTH of inst : label is 17;
  attribute M_AXI_ADDR_WIDTH : integer;
  attribute M_AXI_ADDR_WIDTH of inst : label is 32;
  attribute M_AXI_DATA_WIDTH : integer;
  attribute M_AXI_DATA_WIDTH of inst : label is 32;
  attribute M_AXI_ID_WIDTH : integer;
  attribute M_AXI_ID_WIDTH of inst : label is 1;
  attribute M_HAS_BURST : integer;
  attribute M_HAS_BURST of inst : label is 1;
  attribute PROTOCOL : integer;
  attribute PROTOCOL of inst : label is 0;
  attribute RD_CMDFIFO_DATA_WIDTH : integer;
  attribute RD_CMDFIFO_DATA_WIDTH of inst : label is 64;
  attribute RD_TXN_QUEUE_LENGTH : integer;
  attribute RD_TXN_QUEUE_LENGTH of inst : label is 1;
  attribute WR_CMDFIFO_DATA_WIDTH : integer;
  attribute WR_CMDFIFO_DATA_WIDTH of inst : label is 64;
  attribute WR_TXN_QUEUE_LENGTH : integer;
  attribute WR_TXN_QUEUE_LENGTH of inst : label is 1;
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME signal_clock, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 signal_reset RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME signal_reset, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, BUSER_WIDTH 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
inst: entity work.jtag_axi_0_jtag_axi_v1_2_4_jtag_axi
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock => m_axi_arlock,
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock => m_axi_awlock,
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      sl_iport0(36 downto 0) => B"0000000000000000000000000000000000000",
      sl_oport0(16 downto 0) => NLW_inst_sl_oport0_UNCONNECTED(16 downto 0)
    );
end STRUCTURE;
