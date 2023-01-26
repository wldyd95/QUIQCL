function tcpip_callback( obj, event)
%MYCALLBACK Summary of this function goes here
%   Detailed explanation goes here

global Raman_Setup_Controller_figure


received = fscanf(obj, '%c');
messages_in_cell = textscan(received, '%s');
messages = messages_in_cell{1};



command = messages{1};
switch command
    
    case 'ping'
        fprintf(obj, 'pong');

    case 'pong'
        % Do Nothing

    
    case 'good_bye'
        % close connection
        handles = guidata(Raman_Setup_Controller_figure);
        set(handles.connect_mc_button, 'Value', 0);
        Raman_Setup_Controller('connect_mc_button_Callback', handles.connect_mc_button, [], handles)

        
    otherwise
        fprintf('Unrecognized Command Received : %s\n', command);
        
end






end

