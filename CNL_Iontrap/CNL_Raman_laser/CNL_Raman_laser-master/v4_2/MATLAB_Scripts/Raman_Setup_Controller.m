function varargout = Raman_Setup_Controller(varargin)
% RAMAN_SETUP_CONTROLLER MATLAB code for Raman_Setup_Controller.fig
%      RAMAN_SETUP_CONTROLLER, by itself, creates a new RAMAN_SETUP_CONTROLLER or raises the existing
%      singleton*.
%
%      H = RAMAN_SETUP_CONTROLLER returns the handle to a new RAMAN_SETUP_CONTROLLER or the handle to
%      the existing singleton*.
%
%      RAMAN_SETUP_CONTROLLER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RAMAN_SETUP_CONTROLLER.M with the given input arguments.
%
%      RAMAN_SETUP_CONTROLLER('Property','Value',...) creates a new RAMAN_SETUP_CONTROLLER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Raman_Setup_Controller_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Raman_Setup_Controller_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Raman_Setup_Controller

% Last Modified by GUIDE v2.5 07-Aug-2019 13:07:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Raman_Setup_Controller_OpeningFcn, ...
    'gui_OutputFcn',  @Raman_Setup_Controller_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


function Raman_Setup_Controller_OpeningFcn(hObject, eventdata, handles, varargin)


%% Begin
library_folder = 'X:\Experiment_Scripts\Matlab_Library';
addpath(genpath(library_folder))

GUI_OpeningFnc_Routines;



%% FPGA REG 2 GUI TABLE
FG = [];

Entry.name = 'P_mul';
Entry.byte = 3;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.p_mul_textbox;
Entry.hex_digit = 5;
FG = [FG, Entry];

Entry.name = 'I_mul';
Entry.byte = 3;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.i_mul_textbox;
Entry.hex_digit = 5;
FG = [FG, Entry];

Entry.name = 'P_DIV';
Entry.byte = 1;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.p_div_textbox;
Entry.hex_digit = 1;
FG = [FG, Entry];

Entry.name = 'I_DIV';
Entry.byte = 1;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.i_div_textbox;
Entry.hex_digit = 1;
FG = [FG, Entry];

Entry.name = 'Target_ADC';
Entry.byte = 2;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.target_adc_textbox;
Entry.hex_digit = 2*Entry.byte;
FG = [FG, Entry];

Entry.name = 'PLL_ERR_ACCUM';
Entry.byte = 1;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.error_accum_textbox;
Entry.hex_digit = 1;
FG = [FG, Entry];

Entry.name = 'ADC_Upper';
Entry.byte = 2;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.adc_cutoff_upper_textbox;
Entry.hex_digit = 2*Entry.byte;
FG = [FG, Entry];

Entry.name = 'ADC_Lower';
Entry.byte = 2;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.adc_cutoff_lower_textbox;
Entry.hex_digit = 2*Entry.byte;
FG = [FG, Entry];

Entry.name = 'Cutoff_Enable';
Entry.byte = 1;
Entry.GUI_type = 'checkbox';
Entry.gui_handle = handles.adc_cutoff_enable_checkbox;
FG = [FG, Entry];


Entry.name = 'PLL_ERR_Sign';
Entry.byte = 1;
Entry.GUI_type = 'textbox';
Entry.gui_handle = handles.pll_error_sign_text;
Entry.hex_digit = 1;
FG = [FG, Entry];


handles.F2G_table = FG;



%% FPGA RAM
FRAM = [];

Entry.name = 'FTW_DDS1';
Entry.value = bin2dec('000');
Entry.text_handle = handles.ftw_dds1_text;
FRAM = [FRAM, Entry];

Entry.name = 'FTW_DDS2';
Entry.value = bin2dec('001');
Entry.text_handle = handles.ftw_dds2_text;
FRAM = [FRAM, Entry];

Entry.name = 'PLL_ERR';
Entry.value = bin2dec('011');
Entry.text_handle = handles.pll_error_text;
FRAM = [FRAM, Entry];

Entry.name = 'PLL_P';
Entry.value = bin2dec('100');
Entry.text_handle = handles.pll_p_text;
FRAM = [FRAM, Entry];

Entry.name = 'PLL_I';
Entry.value = bin2dec('101');
Entry.text_handle = handles.pll_i_text;
FRAM = [FRAM, Entry];

Entry.name = 'FTW_DDS2_OLD';
Entry.value = bin2dec('110');
Entry.text_handle = handles.ftw_dds2_old_text;
FRAM = [FRAM, Entry];

Entry.name = 'FTW_DDS2_APP';
Entry.value = bin2dec('111');
Entry.text_handle = handles.ftw_dds_applied_text;
FRAM = [FRAM, Entry];

handles.RAM_table = FRAM;


%% Device Connect
[~, com_name] = system('hostname');
com_name = com_name(1:end-1);


%% Connect to FPGA
FPGA_Serial_Name = 'COM4';


% Find a serial port object.
obj1 = instrfind('Type', 'serial', 'Port', FPGA_Serial_Name);
disp(obj1)
% Create the serial port object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = serial(FPGA_Serial_Name);
else
    fclose(obj1);
    obj1 = obj1(1);
end


% Save in handles
handles.com = obj1;


% Settings
set(handles.com, 'BaudRate', 460800);
set(handles.com, 'Timeout', 1);
set(handles.com, 'StopBits', 2);


% Open
fopen(handles.com);


% Reset
fpga_reset(handles.com);

%% Connect to AnaPico Function Generator
IP_address = '192.168.0.12'; % Its IP Address is set to dynamic but does not seem to change, last checked 2018/12/12
Port_Number = 18;
device_id = 'AnaPico AG,APSYN420,321-03A100000-0263,0.4.134';

% Find a tcpip object.
obj1 = instrfind('Type', 'tcpip', 'RemoteHost', IP_address, 'RemotePort', Port_Number);
disp(obj1)
% Create the tcpip object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = tcpip(IP_address, Port_Number);
else
    fclose(obj1);
    obj1 = obj1(1);
end


% confirm that it's the right one
fopen(obj1);
id_number = query(obj1, '*IDN?');
if ~strcmp(strtrim(id_number), device_id)
    fclose(obj1);
    fprintf('Tried to connect to : %s\n', device_id);
    fprintf('Wrong Device Found : %s\n', id_number);
end


% Save Handles
handles.anapico = obj1;


% Locked to External Reference?
fprintf(handles.anapico, 'ROSCillator:SOURce EXT');
fprintf(handles.anapico, 'ROSCillator:EXTernal:FREQuency 10000000'); % Using 10 MHz
pause(1); % it takes time to re-apply external reference setting
locked_status = query(handles.anapico, 'ROSCillator:LOCKed?');
locked_status = str2double(locked_status);
if ~locked_status
    fclose(obj1);
    fprintf('Reference Lock Failed! \n');
else
    % Output On + Set Freq
    anapico_freq_textbox_Callback([], [], handles)
    fprintf(handles.anapico, 'OUTPUT ON');
end
% 
% handles.anapico = [];
% disp('Anapico is NOT connected. Scripts are commented');



%% Finish


% Update handles structure
guidata(hObject, handles);


% Update Window
Update_controller(handles); % read_from..Callback has Update


function figure1_CloseRequestFcn(hObject, eventdata, handles)


set(handles.figure1, 'Color', [0,0,0]) % To indicate that it is closing
drawnow;


%% Disconnect from FPGA
fclose(handles.com);


%% Disconnect From AnaPico
if isfield(handles, 'anapicop')
    fclose(handles.anapico);
end


%% Close the figure
delete(hObject);



function Output = Raman_Setup_Controller_OutputFcn(hObject, eventdata, handles)
Output = handles;






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Update Controller
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Update_controller(handles)




%% Double-Pass AOM
global DDS_Controller_4_DoublePass_AOM_figure
if isempty(DDS_Controller_4_DoublePass_AOM_figure) || ~isvalid(DDS_Controller_4_DoublePass_AOM_figure)
    DDS_Controller_Status = false;
else
    DDS_Controller_Status = true;
end

if ~DDS_Controller_Status
    set(handles.detuning1_textbox, 'String', '???');
    set(handles.detuning2_textbox, 'String', '???');
    set(handles.detuning3_textbox, 'String', '???');
    set(handles.detuning4_textbox, 'String', '???');
    
else
    
    DDS_handles = guidata(DDS_Controller_4_DoublePass_AOM_figure);
    freq1 = str2double(get(DDS_handles.freq_0_textbox, 'String'));
    freq2 = str2double(get(DDS_handles.freq_1_textbox, 'String'));
    freq3 = str2double(get(DDS_handles.freq_0_textbox2, 'String'));
    freq4 = str2double(get(DDS_handles.freq_1_textbox2, 'String'));
    detune1_in_Hz = 2*(freq1 - 200) * 1000*1000;
    detune2_in_Hz = 2*(freq2 - 200) * 1000*1000;
    detune3_in_Hz = 2*(freq3 - 200) * 1000*1000;
    detune4_in_Hz = 2*(freq4 - 200) * 1000*1000;
    set(handles.detuning1_textbox, 'String', Format_Hz_String(detune1_in_Hz));
    set(handles.detuning2_textbox, 'String', Format_Hz_String(detune2_in_Hz));
    set(handles.detuning3_textbox, 'String', Format_Hz_String(detune3_in_Hz));
    set(handles.detuning4_textbox, 'String', Format_Hz_String(detune4_in_Hz));
end





%% Target ADC Indicator
target_adc = str2double(get(handles.target_adc_textbox, 'String'));
switch target_adc
    case 0
        set(handles.target_adc_textbox, 'BackgroundColor', [1, 0, 0]);
    otherwise
        set(handles.target_adc_textbox, 'BackgroundColor', [1, 1, 1]);
end

%% Check FPGA MODE
write_to_fpga(handles.com, 'MODE?');
while get(handles.com, 'BytesAvailable') ~= 1+2
end
value =  fread(handles.com, 1, 'uint8');
flushinput(handles.com);

switch char(value)
    case 'I'
        RUN_MODE = false;
    case 'R'
        RUN_MODE = true;
    otherwise
        error('??')
end

if RUN_MODE
    set(handles.LOCK_button, 'Value', 1);
else
    set(handles.LOCK_button, 'Value', 0);
end


%% Enable/Disable

checkbox_group = findall(handles.figure1, 'style', 'checkbox');
button_group = findall(handles.figure1, 'style', 'pushbutton');
edit_group = findall(handles.figure1, 'style', 'edit');


if RUN_MODE
    set(checkbox_group, 'Enable', 'off');
    set(button_group, 'Enable', 'off');
    set(edit_group, 'Enable', 'off');
    
    % Exception
    set(handles.keyboard_button, 'Enable', 'on');
    set(handles.i_mul_textbox, 'Enable', 'on');
    set(handles.p_mul_textbox, 'Enable', 'on');
    set(handles.i_div_textbox, 'Enable', 'on');
    set(handles.p_div_textbox, 'Enable', 'on');
    set(handles.error_accum_textbox, 'Enable', 'on');
    set(handles.adc_cutoff_enable_checkbox, 'Enable', 'on');
    set(handles.detuning1_textbox, 'Enable', 'on');
    set(handles.detuning2_textbox, 'Enable', 'on');
    set(handles.mn_client_button, 'Enable', 'on');
    set(handles.open_double_pass_button, 'Enable', 'on');
    
    % Freq Display
    set(handles.dds2_freq_textbox, 'Enable', 'inactive');
    set(handles.dds2_freq_textbox, 'BackgroundColor', [1, 1, 0]);
    
    
else
    set(checkbox_group, 'Enable', 'on');
    set(button_group, 'Enable', 'on');
    set(edit_group, 'Enable', 'on');
    
    % Freq Display
    set(handles.dds2_freq_textbox, 'BackgroundColor', [1, 1, 1]);
end





%% READ FPGA
FLAG__Hex = get(handles.hex_checkbox, 'Value');

if ~RUN_MODE
    
    set(handles.figure1, 'Color', [0,0,0])
    drawnow;
    
    %% READ Internal Variables
    
    
    for kk = 1:length(handles.F2G_table)
        
        % Read from FPGA
        Entry = handles.F2G_table(kk);
        write_to_fpga(handles.com, 'GET_REG');
        write_to_fpga(handles.com, Entry.name);
        while get(handles.com, 'BytesAvailable') ~= Entry.byte+2
        end
        
        value = 0;
        for k = 1:Entry.byte
            r =  fread(handles.com, 1, 'uint8');
            value = value*2^8 + r;
        end
        flushinput(handles.com);
        
        
        % Write on GUI Window
        switch Entry.GUI_type
            case 'textbox'
                if FLAG__Hex
                    set(Entry.gui_handle, 'String', dec2hex(value, Entry.hex_digit));
                else
                    set(Entry.gui_handle, 'String', sprintf('%1.0f', value));
                end
            case 'checkbox'
                set(Entry.gui_handle, 'Value', value);
            otherwise
                error('Gui Type Unknown');
        end
    end
    
    
    
    %% READ RAM Values
    for kk = 1:length(handles.RAM_table)
        
        % Read from FPGA
        Entry = handles.RAM_table(kk);
        write_to_fpga(handles.com, 'READ_RAM');
        write_to_fpga(handles.com, dec2hex(Entry.value,1));
        
        Entry.byte = 6; % fixed
        while get(handles.com, 'BytesAvailable') ~= Entry.byte+2
        end
        
        value = 0;
        for k = 1:Entry.byte
            r =  fread(handles.com, 1, 'uint8');
            value = value*2^8 + r;
        end
        flushinput(handles.com);
        
        
        % Write on GUI Window
        if FLAG__Hex
            set(Entry.text_handle, 'String', dec2hex(value, 2*Entry.byte));
        else
            set(Entry.text_handle, 'String', sprintf('%1.0f', value));
        end
        
    end
    
    
    
    % READ DDS PWR
%     Entry.name = 'DDS_PWR_1';
%     Entry.byte = 2;
%     write_to_fpga(handles.com, 'GET_REG');
%     write_to_fpga(handles.com, Entry.name);
%     
%     
%     while get(handles.com, 'BytesAvailable') ~= Entry.byte+2
%     end
%     value = 0;
%     for k = 1:Entry.byte
%         r =  fread(handles.com, 1, 'uint8');
%         value = value*2^8 + r;
%     end
%     flushinput(handles.com);
%     
%     set(handles.dds2_power_textbox, 'String', sprintf('%1.0f', value));
    
    
    %% Format DDS Freq
    % AnaPico Freq
    freq = str2double(get(handles.anapico_freq_textbox, 'String'));
    
    Hz_str = Format_Hz_String(freq);
    set(handles.anapico_freq_textbox, 'String', Hz_str);
    
    
    % DDS2 Freq
    ftw2 = get_dec_value(handles.ftw_dds2_text, handles);
    freq = ftw2 / 2^48 * 1000 * 1000 * 1000;
    
    Hz_str = Format_Hz_String(freq);
    set(handles.dds2_freq_textbox, 'String', Hz_str);
    
    %% Finished
    set(handles.figure1, 'Color', [0.94,0.94,0.94])
    
end




function Hz_str = Format_Hz_String(freq_in_Hz)

freq_sign = sign(freq_in_Hz);

freq = abs(round(freq_in_Hz));

freq_GHz = floor( freq /1000 /1000 /1000);
freq_GHz_Left = freq - freq_GHz*1000*1000*1000;

freq_MHz = floor( freq_GHz_Left /1000 /1000);
freq_MHz_Left = freq_GHz_Left - freq_MHz*1000*1000;

freq_kHz = floor( freq_MHz_Left /1000);
freq_Hz = freq_MHz_Left - freq_kHz*1000;

if freq_GHz > 0
    Hz_str = sprintf('%1.0f,%03.0f,%03.0f,%03.0f', freq_GHz, freq_MHz, freq_kHz, freq_Hz);
elseif freq_MHz > 0
    Hz_str = sprintf('%1.0f,%03.0f,%03.0f', freq_MHz, freq_kHz, freq_Hz);
elseif freq_kHz > 0
    Hz_str = sprintf('%1.0f,%03.0f', freq_kHz, freq_Hz);
else
    Hz_str = sprintf('%1.0f', freq_Hz);
end

if freq_sign < 0
    Hz_str = ['-', Hz_str];
end





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Lock Reference
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function anapico_freq_textbox_Callback(hObject, eventdata, handles)

anapico_freq_in_Hz = str2double(get(handles.anapico_freq_textbox, 'String'));
command_str = sprintf('FREQ %1.0f Hz', anapico_freq_in_Hz);
fprintf(handles.anapico, command_str);

% Update Controller
Update_controller(handles)



function apply_offset_freq_button_Callback(hObject, eventdata, handles)

base_freq_in_Hz = str2double(get(handles.base_freq_text,'String'));
offset_freq_in_Hz = str2double(get(handles.offset_text,'String'));

set(handles.anapico_freq_textbox, 'String', num2str(base_freq_in_Hz + offset_freq_in_Hz));
anapico_freq_textbox_Callback(handles.anapico_freq_textbox, eventdata, handles);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Default Button
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function default_1_button_Callback(hObject, eventdata, handles)

AnaPico_freq_str = sprintf('%11.0f', 12642812118 +4.6*1000 - 2*200*1000*1000); % change 12642812118 according to your chamber
DDS2_freq_str = '210,950,814';
I_mul_str = '10000';
P_mul_str = '80000';
Target_ADC_str = '8396';

textbox_h = handles.anapico_freq_textbox;
set(textbox_h, 'String', AnaPico_freq_str);
anapico_freq_textbox_Callback(textbox_h, eventdata, handles);

textbox_h = handles.dds2_freq_textbox;
set(textbox_h, 'String', DDS2_freq_str);
dds2_freq_textbox_Callback(textbox_h, eventdata, handles);

textbox_h = handles.i_mul_textbox;
set(textbox_h, 'String', I_mul_str);
i_mul_textbox_Callback(textbox_h, eventdata, handles);

textbox_h = handles.p_mul_textbox;
set(textbox_h, 'String', P_mul_str);
p_mul_textbox_Callback(textbox_h, eventdata, handles);

textbox_h = handles.target_adc_textbox;
set(textbox_h, 'String', Target_ADC_str);
target_adc_textbox_Callback(textbox_h, eventdata, handles);






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Matlab Network  - Switches
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function mn_client_button_Callback(hObject, eventdata, handles)

% Add path to MN folder
pathstr = 'X:\Experiment_Scripts\Matlab_Network';
addpath(pathstr)

% Open MN_Client
MN_Client;





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Double-Pass AOM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function detuning1_textbox_Callback(hObject, eventdata, handles)

detuning_in_Hz = str2double(get(hObject, 'String'));
aom_freq_in_Hz = 200*1000*1000 + detuning_in_Hz/2;


global DDS_Controller_4_DoublePass_AOM_figure
dc_handles = guidata(DDS_Controller_4_DoublePass_AOM_figure);

set(dc_handles.freq_0_textbox, 'String', sprintf('%1.9g', aom_freq_in_Hz/1000/1000));
DDS_Controller_4_DoublePass_AOM('freq_0_textbox_Callback', dc_handles.freq_0_textbox, [], dc_handles);


Update_controller(handles);

function detuning2_textbox_Callback(hObject, eventdata, handles)

detuning_in_Hz = str2double(get(hObject, 'String'));
aom_freq_in_Hz = 200*1000*1000 + detuning_in_Hz/2;


global DDS_Controller_4_DoublePass_AOM_figure
dc_handles = guidata(DDS_Controller_4_DoublePass_AOM_figure);

set(dc_handles.freq_1_textbox, 'String', sprintf('%1.9g', aom_freq_in_Hz/1000/1000));
DDS_Controller_4_DoublePass_AOM('freq_1_textbox_Callback', dc_handles.freq_1_textbox, [], dc_handles);


Update_controller(handles);


function detuning3_textbox_Callback(hObject, eventdata, handles)

detuning_in_Hz = str2double(get(hObject, 'String'));
aom_freq_in_Hz = 200*1000*1000 + detuning_in_Hz/2;


global DDS_Controller_4_DoublePass_AOM_figure
dc_handles = guidata(DDS_Controller_4_DoublePass_AOM_figure);

set(dc_handles.freq_0_textbox2, 'String', sprintf('%1.9g', aom_freq_in_Hz/1000/1000));
DDS_Controller_4_DoublePass_AOM('freq_0_textbox2_Callback', dc_handles.freq_0_textbox2, [], dc_handles);


Update_controller(handles);


function detuning4_textbox_Callback(hObject, eventdata, handles)

detuning_in_Hz = str2double(get(hObject, 'String'));
aom_freq_in_Hz = 200*1000*1000 + detuning_in_Hz/2;


global DDS_Controller_4_DoublePass_AOM_figure
dc_handles = guidata(DDS_Controller_4_DoublePass_AOM_figure);

set(dc_handles.freq_1_textbox2, 'String', sprintf('%1.9g', aom_freq_in_Hz/1000/1000));
DDS_Controller_4_DoublePass_AOM('freq_1_textbox2_Callback', dc_handles.freq_1_textbox2, [], dc_handles);


Update_controller(handles);


function open_double_pass_button_Callback(hObject, eventdata, handles)

addpath('X:\Experiment_Scripts\Computer_Raman\DDS_Controller_FPGA');

h = findall(0, 'Type', 'figure', 'Name', 'DDS_Controller_4_DoublePass_AOM');
if isempty(h)
    DDS_Controller_4_DoublePass_AOM;
else
    figure(h);
end


Update_controller(handles);







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Single-Pass AOM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dds2_freq_textbox_Callback(hObject, eventdata, handles)

textbox_h = handles.dds2_freq_textbox;
DDS_Channel = '0010';

freq = str2double(get(textbox_h, 'String'));
wanted_freq_in_Hz = round(freq);

% Convert to FTW
Freq_Tuning_Word = round(2^48  / (1000*1000*1000) * wanted_freq_in_Hz );

% Send to DDS1
write_to_fpga(handles.com, 'SET_DDS_FREQ');
write_to_fpga(handles.com, dec2hex(bin2dec(DDS_Channel)));
write_to_fpga(handles.com, dec2hex(Freq_Tuning_Word, 12));

% Update Controller
Update_controller(handles)


function dds2_power_textbox_Callback(hObject, eventdata, handles)

lvl = str2double(get(handles.dds2_power_textbox, 'String'));

if lvl < 0
    error('too small');
end
if lvl > 1023
    error('too large')
end


DDS_Channel = '0010';
% INST_W = '240C'; % not needed: hard-coded in Verilog
DATA_W = dec2hex(lvl, 4);
write_to_fpga(handles.com, 'SET_DDS_PWR');
write_to_fpga(handles.com, dec2hex(bin2dec(DDS_Channel)));
write_to_fpga(handles.com, DATA_W);

Update_controller(handles);



function power_low_button_Callback(hObject, eventdata, handles)
set(handles.dds2_power_textbox, 'String', '0');
dds2_power_textbox_Callback([], [], handles);


function power_high_button_Callback(hObject, eventdata, handles)
set(handles.dds2_power_textbox, 'String', '1023');
dds2_power_textbox_Callback([], [], handles);





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Read ADC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function volt = ADC_to_Volt(adc_value)

ADC_max = 2^16;
ADC_min = 0;
Volt_max = 2.5;
Volt_min = -2.5;

volt = interp1([ADC_max, ADC_min], [Volt_max, Volt_min], adc_value);


function adc_value = Volt_to_ADC(volt)

ADC_max = 2^16;
ADC_min = 0;
Volt_max = 2.5;
Volt_min = -2.5;

adc_value = interp1([Volt_max, Volt_min], [ADC_max, ADC_min], volt);




function read_adc_button_Callback(hObject, eventdata, handles)

fig_num = 423;

time_div = 1000; % max value 4000
% For Max Data Input, use 4000 time_div for 4ms
% If you use too large time_div, your measurement time will be fixed to min
% e.g. time_div 4000 means 4ms minimum time. You cannot set it to 1ms.
% (ADC read at 1MHz)


total_time_in_ms = str2double(get(handles.edit18, 'String'));
one_interval_time_in_ms = total_time_in_ms / time_div;
ADC_Sum_needed = max(1, round(one_interval_time_in_ms * 1000));

one_interval_time_in_ms = ADC_Sum_needed /1000;
total_time_in_ms = one_interval_time_in_ms * time_div;
set(handles.edit18, 'String', num2str(total_time_in_ms));

%%%%%%%%%%%%%%%%%%%%%%


% ADC_Sum_Count = 1000000; % Max: 2^(40-16)-1 = 16 * 1000 * 1000  (with 1MHz, 16 sec)
% ADC_Store_Count = 4; % Max: 2^12 = 4000

ADC_Sum_Count = ADC_Sum_needed;
ADC_Store_Count = time_div;




%% Set Parameter

write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'ADC_SUM_CNT');
write_to_fpga(handles.com, dec2hex(ADC_Sum_Count));

write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'ADC_STORE_CNT');
write_to_fpga(handles.com, dec2hex(ADC_Store_Count));


%% RECORD

fprintf('Recording... ');
write_to_fpga(handles.com, 'Record_ADC');

% Done?
while get(handles.com, 'BytesAvailable') < 6
end
r =  fread(handles.com, 6, 'uint8')';
disp(char(r(1:4)));


%% Print


write_to_fpga(handles.com, 'Print_ADC');



% Get Length
while get(handles.com, 'BytesAvailable') < 4
end

h1 = fread(handles.com, 1, 'uint8');
h0 = fread(handles.com, 1, 'uint8');
pmt_expected =  2^8*h1 + h0;

EOT = fread(handles.com, 2, 'uint8');

fprintf('Data Count : %d\n', pmt_expected);
fprintf('Getting ADC data... ');


% Get ADC Data
one_word_length = 5+2;

pmt = zeros(1, pmt_expected);
pmt_read = 0;

pmt_tic = tic;
disp_interval = 0.5;
pmt_disp_str = '';

while (pmt_expected ~= pmt_read);
    
    while get(handles.com, 'BytesAvailable') < one_word_length
    end
    data_count = floor(get(handles.com, 'BytesAvailable')/ one_word_length);
    data_count = min(data_count, pmt_expected-pmt_read);
    data_vector = fread(handles.com, data_count*one_word_length, 'uint8');
    data_mat = reshape(data_vector, one_word_length, data_count);
    data_val = 2^32*data_mat(1,:) + ...
        2^24*data_mat(2,:) + 2^16*data_mat(3,:) + ...
        2^8*data_mat(4,:) + data_mat(5,:) ;
    
    pmt(pmt_read+1:pmt_read+data_count) = data_val/ADC_Sum_Count;
    pmt_read = pmt_read + data_count;
    
    if toc(pmt_tic) > disp_interval
        pmt_tic = tic;
        
        % delete
        del_str = repmat('\b', 1, length(pmt_disp_str));
        fprintf(del_str);
        pmt_disp_str = sprintf('(%2.0f)', 100*pmt_read/pmt_expected);
        fprintf(pmt_disp_str);
        drawnow;
    end
    
end

del_str = repmat('\b', 1, length(pmt_disp_str));
fprintf(del_str);



% Done?
while get(handles.com, 'BytesAvailable') < 6
end
r =  fread(handles.com, 6, 'uint8')';

disp(char(r(1:4)));


%% Display
yy = ADC_to_Volt(pmt);

time_set_in_ms = (1:ADC_Store_Count) * (0.001 * ADC_Sum_Count);
y_set_in_Volt = yy;
figure(fig_num);
plot(time_set_in_ms, y_set_in_Volt)
xlabel('ms');
ylabel('Volt');
ax = gca;

% Find frequency
fy = fft(y_set_in_Volt);
fy = fy(1:round(end/2));
fy(1) =0; % eliminate index 1 data
[~, max_x] = max(fy);

% % For debugging
% figure(2)
% plot(abs(fy))

Unit_Freq_in_kHz = 1/total_time_in_ms;
Peak_Freq_in_Hz = (max_x-1) * Unit_Freq_in_kHz * 1000;
Peak_Freq_in_kHz = (max_x-1) * Unit_Freq_in_kHz;


%%  FIT

Amplitude = (max(y_set_in_Volt) - min(y_set_in_Volt) )/2;
Offset = mean(y_set_in_Volt);


% FIT Phase & Freq First
fo = fitoptions('Method','NonlinearLeastSquares',...
    'Lower', [-pi, -inf], ...
    'Upper', [+pi, +inf], ...
    'StartPoint',[0, Peak_Freq_in_kHz]);
ft = fittype(' Amplitude * sin( 2*pi*Freq_in_kHz * t + Init_Phase) + Offset', ...
    'options',fo, ...
    'problem', {'Amplitude', 'Offset'}, ...
    'independent','t', ...
    'coefficients', {'Init_Phase', 'Freq_in_kHz'});
fitobj = fit(time_set_in_ms', y_set_in_Volt', ft, 'problem', {Amplitude, Offset});


% FIT All
fo = fitoptions('Method','NonlinearLeastSquares',...
    'StartPoint',[Amplitude, fitobj.Freq_in_kHz, fitobj.Init_Phase, Offset]);
ft = fittype(' Amplitude * sin( 2*pi*Freq_in_kHz * t + Init_Phase) + Offset', ...
    'options',fo, ...
    'independent','t', ...
    'coefficients', {'Amplitude', 'Freq_in_kHz', 'Init_Phase', 'Offset'});
fitobj = fit(time_set_in_ms', y_set_in_Volt', ft);


% Draw
hold (ax, 'on');
xx = get(ax, 'XLIM');
xset = linspace(xx(1), xx(2), 1000);
yset = feval(fitobj, xset);
plot(xset, yset, 'r', 'parent', ax, 'tag', 'fit_line')
hold(ax, 'off');


% Write Fit Value
v = axis(ax);
x_pos = (v(1)+v(2))/2;
y1_pos = v(3) + (v(4)-v(3)) * 0.4;
y2_pos = v(3) + (v(4)-v(3)) * 0.2;
text(x_pos, y1_pos, sprintf('Freq = %1.0f Hz', 1000*fitobj.Freq_in_kHz), 'Parent', ax, 'Interpreter', 'none', ...
    'FontSize', 16, 'tag', 'fit_line');
% fitobj


%% Update text
set(handles.meas_freq_in_Hz_text,'String', sprintf('%1.0f', 1000*fitobj.Freq_in_kHz));

vmax = fitobj.Offset + fitobj.Amplitude;
vmin = fitobj.Offset - fitobj.Amplitude;
set(handles.max_volt_text,'String', sprintf('%+1.2f', vmax));
set(handles.min_volt_text,'String', sprintf('%+1.2f', vmin));


function freq_add_button_Callback(hObject, eventdata, handles)

current_freq = str2double(get(handles.dds2_freq_textbox, 'String'));
change_freq = str2double(get(handles.meas_freq_in_Hz_text, 'String'));

new_freq = current_freq + change_freq;

set(handles.dds2_freq_textbox, 'String', num2str(new_freq));

dds2_freq_textbox_Callback(handles.dds2_freq_textbox, [], handles);


function freq_subtract_button_Callback(hObject, eventdata, handles)

current_freq = str2double(get(handles.dds2_freq_textbox, 'String'));
change_freq = str2double(get(handles.meas_freq_in_Hz_text, 'String'));

new_freq = current_freq - change_freq;

set(handles.dds2_freq_textbox, 'String', num2str(new_freq));

dds2_freq_textbox_Callback(handles.dds2_freq_textbox, [], handles);


function set_target_adc_button_Callback(hObject, eventdata, handles)

Cutoff_margin_in_Volt = 0.3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vmax = str2double(get(handles.max_volt_text,'String'));
vmin = str2double(get(handles.min_volt_text,'String'));
vcenter = (vmax + vmin)/2;
v_cutoff_upper = vcenter + Cutoff_margin_in_Volt;
v_cutoff_lower = vcenter - Cutoff_margin_in_Volt;


ADC_center = Volt_to_ADC(vcenter);
ADC_UPPER = Volt_to_ADC(v_cutoff_upper);
ADC_LOWER = Volt_to_ADC(v_cutoff_lower);
if get(handles.hex_checkbox, 'Value')
    ADC_center = dec2hex(round(ADC_center));
    ADC_UPPER = dec2hex(round(ADC_UPPER));
    ADC_LOWER = dec2hex(round(ADC_LOWER));
end

set(handles.target_adc_textbox, 'String', ADC_center);
target_adc_textbox_Callback(handles.target_adc_textbox, [], handles);
% set(handles.adc_cutoff_upper_textbox, 'String', ADC_UPPER);
% adc_cutoff_upper_textbox_Callback(handles.adc_cutoff_upper_textbox, [], handles);
% set(handles.adc_cutoff_lower_textbox, 'String', ADC_LOWER);
% adc_cutoff_lower_textbox_Callback(handles.adc_cutoff_lower_textbox, [], handles);








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       LOCK
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function LOCK_button_Callback(hObject, eventdata, handles)

Freq_Disp_Update_Period = 0.5; % in sec


%% Timer
if get(hObject, 'Value')
    
    % Make TIMER that periodically repeats Callback
    t = timer('StartDelay', 1);
    t.Name = 'PLL_LOCK_Freq_Disp_Timer';
    t.ExecutionMode = 'fixedSpacing';
    t.Period = Freq_Disp_Update_Period;
    t.TimerFcn = {@Timer_Fnc__PLL_Lock_Freq_Disp, handles};
    t.TasksToExecute = Inf;
    t.BusyMode = 'drop';
    start(t);
    
else
    t = timerfind('Name', 'PLL_LOCK_Freq_Disp_Timer');
    % Stop Timer
    if ~isempty(t) && isvalid(t)
        stop(t);
        delete(t);
    end
    
end



if get(hObject, 'Value')
    write_to_fpga(handles.com, 'RUN');
else
    write_to_fpga(handles.com, 'STOP');
end

Update_controller(handles);




function Timer_Fnc__PLL_Lock_Freq_Disp(timer_obj, timer_event, handles)


% Read from FPGA
write_to_fpga(handles.com, 'FTW?');

Entry.byte = 6; % fixed
wait_time_limit = 1;
tic_time = tic;
while get(handles.com, 'BytesAvailable') ~= Entry.byte+2
    if toc(tic_time) > wait_time_limit
        % DATA Transfer Error
        fprintf('(%s) Frequency Update Timer Failure\n', datestr(now));
        fpga_reset(handles.com);
        return
    end
end

value = 0;
for k = 1:Entry.byte
    r =  fread(handles.com, 1, 'uint8');
    value = value*2^8 + r;
end
flushinput(handles.com);


% Convert to Freq
ftw2 = value;
freq = ftw2 / 2^48 * 1000 * 1000 * 1000;
freq = round(freq);

freq_MHz = floor( freq /1000 /1000);
freq_MHz_Left = freq - freq_MHz*1000*1000;

freq_kHz = floor( freq_MHz_Left /1000);
freq_Hz = freq_MHz_Left - freq_kHz*1000;

str_formatted = sprintf('%3.0f,%03.0f,%03.0f', freq_MHz, freq_kHz, freq_Hz);
set(handles.dds2_freq_textbox, 'String', str_formatted);








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Change FPGA Parameter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dec_value = get_dec_value(textbox_h, handles)

str_val = get(textbox_h, 'String');
if get(handles.hex_checkbox, 'Value')
    dec_value = hex2dec(str_val);
else
    dec_value = str2double(str_val);
end



function i_mul_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'I_mul');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);

function p_mul_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'P_mul');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);

function i_div_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'I_DIV');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);

function p_div_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'P_DIV');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);




function target_adc_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'Target_ADC');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);


function error_accum_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'PLL_ERR_ACCUM');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);



function adc_cutoff_enable_checkbox_Callback(hObject, eventdata, handles)

% Read GUI value
checkbox_value = get(hObject, 'Value');

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'Cutoff_Enable');
write_to_fpga(handles.com, dec2hex(checkbox_value));

Update_controller(handles);

function adc_cutoff_upper_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'ADC_Upper');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);


function adc_cutoff_lower_textbox_Callback(hObject, eventdata, handles)

% Read GUI value
dec_value = get_dec_value(hObject, handles);

% Write FPGA
write_to_fpga(handles.com, 'SET_REG');
write_to_fpga(handles.com, 'ADC_Lower');
write_to_fpga(handles.com, dec2hex(dec_value));

Update_controller(handles);








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%      ETC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function paladin_button_Callback(hObject, eventdata, handles)
Paladin_Communicator;


function hex_checkbox_Callback(hObject, eventdata, handles)
Update_controller(handles);


function single_cycle_button_Callback(hObject, eventdata, handles)

error_accum_factor = str2double(get(handles.error_accum_textbox, 'String'));
ADC_SUM_Value = 32996 * 2^error_accum_factor;


% Write FPGA
write_to_fpga(handles.com, 'Single_Cycle');
write_to_fpga(handles.com, dec2hex(ADC_SUM_Value));

pause(0.1);
Update_controller(handles);


function read_fifo_button_Callback(hObject, eventdata, handles)

error_accum_factor = str2double(get(handles.error_accum_textbox, 'String'));
ADC_Sum_Count = 2^error_accum_factor;

write_to_fpga(handles.com, 'Print_ADC');



% Get Length
while get(handles.com, 'BytesAvailable') < 4
end

h1 = fread(handles.com, 1, 'uint8');
h0 = fread(handles.com, 1, 'uint8');
pmt_expected =  2^8*h1 + h0;

EOT = fread(handles.com, 2, 'uint8');

fprintf('Data Count : %d\n', pmt_expected);
if pmt_expected == 0
    
    % Done?
    while get(handles.com, 'BytesAvailable') < 6
    end
    r =  fread(handles.com, 6, 'uint8')';
    
    disp(char(r(1:4)));
    return
end



fprintf('Getting ADC data... ');


% Get ADC Data
one_word_length = 5+2;

pmt = zeros(1, pmt_expected);
pmt_read = 0;

pmt_tic = tic;
disp_interval = 0.5;
pmt_disp_str = '';

while (pmt_expected ~= pmt_read);
    
    while get(handles.com, 'BytesAvailable') < one_word_length
    end
    data_count = floor(get(handles.com, 'BytesAvailable')/ one_word_length);
    data_count = min(data_count, pmt_expected-pmt_read);
    data_vector = fread(handles.com, data_count*one_word_length, 'uint8');
    data_mat = reshape(data_vector, one_word_length, data_count);
    data_val = 2^32*data_mat(1,:) + ...
        2^24*data_mat(2,:) + 2^16*data_mat(3,:) + ...
        2^8*data_mat(4,:) + data_mat(5,:) ;
    
    pmt(pmt_read+1:pmt_read+data_count) = data_val/ADC_Sum_Count;
    pmt_read = pmt_read + data_count;
    
    if toc(pmt_tic) > disp_interval
        pmt_tic = tic;
        
        % delete
        del_str = repmat('\b', 1, length(pmt_disp_str));
        fprintf(del_str);
        pmt_disp_str = sprintf('(%2.0f)', 100*pmt_read/pmt_expected);
        fprintf(pmt_disp_str);
        drawnow;
    end
    
end

del_str = repmat('\b', 1, length(pmt_disp_str));
fprintf(del_str);



% Done?
while get(handles.com, 'BytesAvailable') < 6
end
r =  fread(handles.com, 6, 'uint8')';

disp(char(r(1:4)));


%% Display

figure(1);
plot(ADC_to_Volt(pmt))
ylabel('Volt');







function fpga_rest_button_Callback(hObject, eventdata, handles)
fpga_reset(handles.com);


function keyboard_button_Callback(hObject, eventdata, handles)
keyboard_callback;










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       TEMPS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
