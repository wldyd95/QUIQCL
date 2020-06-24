function varargout = Paladin_Communicator(varargin)
% PALADIN_COMMUNICATOR MATLAB code for Paladin_Communicator.fig
%      PALADIN_COMMUNICATOR, by itself, creates a new PALADIN_COMMUNICATOR or raises the existing
%      singleton*.
%
%      H = PALADIN_COMMUNICATOR returns the handle to a new PALADIN_COMMUNICATOR or the handle to
%      the existing singleton*.
%
%      PALADIN_COMMUNICATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PALADIN_COMMUNICATOR.M with the given input arguments.
%
%      PALADIN_COMMUNICATOR('Property','Value',...) creates a new PALADIN_COMMUNICATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Paladin_Communicator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Paladin_Communicator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Paladin_Communicator

% Last Modified by GUIDE v2.5 15-Jun-2017 12:44:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Paladin_Communicator_OpeningFcn, ...
                   'gui_OutputFcn',  @Paladin_Communicator_OutputFcn, ...
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


% --- Executes just before Paladin_Communicator is made visible.
function Paladin_Communicator_OpeningFcn(hObject, eventdata, handles, varargin)




%% Begin
library_folder = 'O:\Experiment_Scripts\Matlab_Library';
addpath(genpath(library_folder))

GUI_OpeningFnc_Routines;



%% Device Connect

Paladin_COM_Name = 'COM1';  %COM1 for pulse laser control computer
obj1 = instrfind('Type', 'serial', 'Port', Paladin_COM_Name);

% Create the serial port object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = serial(Paladin_COM_Name);
else
    fclose(obj1);
    obj1 = obj1(1);
end

% Setting
set(obj1, 'Terminator', {';', 'CR'});


% Save
handles.paladin = obj1;

% Settingssss
fopen(handles.paladin);
fprintf(handles.paladin, 'E=0'); % echo mode off
fprintf(handles.paladin, '>=0'); % terminal mode off
fclose(handles.paladin);



%% Finish

% Update handles structure
guidata(hObject, handles);


% Update Window
Update_controller(handles);



function figure1_CloseRequestFcn(hObject, eventdata, handles)

% Hint: delete(hObject) closes the figure
delete(hObject);
% --- Outputs from this function are returned to the command line.



function varargout = Paladin_Communicator_OutputFcn(hObject, eventdata, handles) 
out = handles;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       Update Main_Controller
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Update_controller(handles)
nothing = 1;





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       SEND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function send_button_Callback(hObject, eventdata, handles)

command_str = get(handles.command_textbox, 'String');

fopen(handles.paladin);

fprintf(handles.paladin, command_str);

returned = fscanf(handles.paladin);

if get(handles.paladin, 'BytesAvailable') > 0
    returned2 = fscanf(handles.paladin)
    error('More than one answer??');
end

fclose(handles.paladin);

fault_Str = regexp(returned, '(?<=[\S]*):[\d]*;', 'match');
if length(fault_Str) < 1  % Funny case - it happened when I issued "SM0"
    disp('-----------------------------');
    fprintf('%s\n', command_str);
    fprintf('[RETURNED ANSWER]%s\n', returned);
    return
end

fault_Str = fault_Str{1};
dis2 = fault_Str(2:end-1);
set(handles.text3, 'String', dis2);

dis1 = returned(1:end-(length(fault_Str)));
set(handles.answer_text, 'String', dis1);

disp('-----------------------------');
fprintf('%s\n', command_str);
fprintf('[ANS]%s\n', dis1);
fprintf('[ERR]%s\n', dis2);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       ETC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function command_window_button_Callback(hObject, eventdata, handles)
commandwindow;

function keyboard_button_Callback(hObject, eventdata, handles)

keyboard_callback;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%       TEMPS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
