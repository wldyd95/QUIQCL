function varargout = Random_MW(varargin)
% RANDOM_MW MATLAB code for Random_MW.fig
%      RANDOM_MW, by itself, creates a new RANDOM_MW or raises the existing
%      singleton*.
%
%      H = RANDOM_MW returns the handle to a new RANDOM_MW or the handle to
%      the existing singleton*.
%
%      RANDOM_MW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RANDOM_MW.M with the given input arguments.
%
%      RANDOM_MW('Property','Value',...) creates a new RANDOM_MW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Random_MW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Random_MW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Random_MW

% Last Modified by GUIDE v2.5 06-Nov-2019 20:17:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Random_MW_OpeningFcn, ...
                   'gui_OutputFcn',  @Random_MW_OutputFcn, ...
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


% --- Executes just before Random_MW is made visible.
function Random_MW_OpeningFcn(hObject, eventdata, handles, varargin)
% make connection with FPGA Arty S7
% Serial Communication parameters must be same with arty setting.
BaudRate = 57600;
StopBits = 2;
Terminator = cell(1,2);
Terminator{1} = 'CR/LF';
Terminator{2} = 'CR/LF';
Timeout = 1;               

% Find a serial port object
Port = 'COM9';
serial_obj = instrfind('Type', 'serial', 'Port', Port);
    
% Create the serial port object if it does not exist
% otherwise use the serial object that was found
if isempty(serial_obj)
    handles.serial = serial(Port, 'BaudRate', BaudRate, 'StopBits', StopBits, 'Terminator', Terminator, 'Timeout', Timeout);
else
    fclose(serial_obj);
    fopen(serial_obj);
    handles.serial = serial_obj(1);
end

fclose(handles.serial);
fopen(handles.serial);

% global phase value, we will wrtie these phase values into FPGA
global phase1;
global phase2;
global phase3;
global phase4;
global phase5;
global phase6;
global phase7;
global phase8;

phase1 = 0;
phase2 = 0;
phase3 = 0;
phase4 = 0;
phase5 = 0;
phase6 = 0;
phase7 = 0;
phase8 = 0;

% Choose default command line output for Random_MW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Random_MW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Random_MW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function phase1_Callback(hObject, eventdata, handles)
global phase1;
phase1 = get(hObject, 'String');
phase1 = rounding_bit_converter(str2double(phase1));
phase1 = num2str(phase1);
fprintf(handles.serial, ['Phase1' phase1]);
disp(['Phase1' phase1]);

% --- Executes during object creation, after setting all properties.
function phase1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase2_Callback(hObject, eventdata, handles)
global phase2;
phase2 = get(hObject, 'String');
phase2 = rounding_bit_converter(str2double(phase2));
phase2 = num2str(phase2);
fprintf(handles.serial, ['Phase2' phase2]);
disp(['Phase2' phase2]);


% --- Executes during object creation, after setting all properties.
function phase2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase3_Callback(hObject, eventdata, handles)
global phase3;
phase3 = get(hObject, 'String');
phase3 = rounding_bit_converter(str2double(phase3));
phase3 = num2str(phase3);
fprintf(handles.serial, ['Phase3' phase3]);
disp( ['Phase3' phase3]);
disp(['Phase3' phase3]);


% --- Executes during object creation, after setting all properties.
function phase3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase4_Callback(hObject, eventdata, handles)
global phase4;
phase4 = get(hObject, 'String');
phase4 = rounding_bit_converter(str2double(phase4));
phase4 = num2str(phase4);
fprintf(handles.serial, ['Phase4' phase4]);
disp(['Phase4' phase4]);



% --- Executes during object creation, after setting all properties.
function phase4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase5_Callback(hObject, eventdata, handles)
global phase5;
phase5 = get(hObject, 'String');
phase5 = rounding_bit_converter(str2double(phase5));
phase5 = num2str(phase5);
fprintf(handles.serial, ['Phase5' phase5]);
disp(['Phase5' phase5]);


% --- Executes during object creation, after setting all properties.
function phase5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase6_Callback(hObject, eventdata, handles)
global phase6;
phase6 = get(hObject, 'String');
phase6 = rounding_bit_converter(str2double(phase6));
phase6 = num2str(phase6);
fprintf(handles.serial, ['Phase6' phase6]);
disp(['Phase6' phase6]);


% --- Executes during object creation, after setting all properties.
function phase6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase7_Callback(hObject, eventdata, handles)
global phase7;
phase7 = get(hObject, 'String');
phase7 = rounding_bit_converter(str2double(phase7));
phase7 = num2str(phase7);
fprintf(handles.serial, ['Phase7' phase7]);
disp(['Phase7' phase7]);


% --- Executes during object creation, after setting all properties.
function phase7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function phase8_Callback(hObject, eventdata, handles)
global phase8;
phase8 = get(hObject, 'String');
phase8 = rounding_bit_converter(str2double(phase8));
phase8 = num2str(phase8);
fprintf(handles.serial, ['Phase8' phase8]);
disp(['Phase8' phase8]);


% --- Executes during object creation, after setting all properties.
function phase8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
