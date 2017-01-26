function varargout = INVERSEDIFFERENTIAL(varargin)
% INVERSEDIFFERENTIAL MATLAB code for INVERSEDIFFERENTIAL.fig
%      INVERSEDIFFERENTIAL, by itself, creates a new INVERSEDIFFERENTIAL or raises the existing
%      singleton*.
%
%      H = INVERSEDIFFERENTIAL returns the handle to a new INVERSEDIFFERENTIAL or the handle to
%      the existing singleton*.
%
%      INVERSEDIFFERENTIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSEDIFFERENTIAL.M with the given input arguments.
%
%      INVERSEDIFFERENTIAL('Property','Value',...) creates a new INVERSEDIFFERENTIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before INVERSEDIFFERENTIAL_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to INVERSEDIFFERENTIAL_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help INVERSEDIFFERENTIAL

% Last Modified by GUIDE v2.5 04-Dec-2015 23:40:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @INVERSEDIFFERENTIAL_OpeningFcn, ...
                   'gui_OutputFcn',  @INVERSEDIFFERENTIAL_OutputFcn, ...
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


% --- Executes just before INVERSEDIFFERENTIAL is made visible.
function INVERSEDIFFERENTIAL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to INVERSEDIFFERENTIAL (see VARARGIN)

% Choose default command line output for INVERSEDIFFERENTIAL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes INVERSEDIFFERENTIAL wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = INVERSEDIFFERENTIAL_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function T1_Callback(hObject, eventdata, handles)
% hObject    handle to T1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T1 as text
%        str2double(get(hObject,'String')) returns contents of T1 as a double


% --- Executes during object creation, after setting all properties.
function T1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T2_Callback(hObject, eventdata, handles)
% hObject    handle to T2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T2 as text
%        str2double(get(hObject,'String')) returns contents of T2 as a double


% --- Executes during object creation, after setting all properties.
function T2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T3_Callback(hObject, eventdata, handles)
% hObject    handle to T3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T3 as text
%        str2double(get(hObject,'String')) returns contents of T3 as a double


% --- Executes during object creation, after setting all properties.
function T3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T4_Callback(hObject, eventdata, handles)
% hObject    handle to T4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T4 as text
%        str2double(get(hObject,'String')) returns contents of T4 as a double


% --- Executes during object creation, after setting all properties.
function T4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T5_Callback(hObject, eventdata, handles)
% hObject    handle to T5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T5 as text
%        str2double(get(hObject,'String')) returns contents of T5 as a double


% --- Executes during object creation, after setting all properties.
function T5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T6_Callback(hObject, eventdata, handles)
% hObject    handle to T6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T6 as text
%        str2double(get(hObject,'String')) returns contents of T6 as a double


% --- Executes during object creation, after setting all properties.
function T6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=str2double(get(handles.LN,'string'));
n=str2double(get(handles.TN,'string'));
T1=str2double(get(handles.T1,'string'));
T2=str2double(get(handles.T2,'string'));
T3=str2double(get(handles.T3,'string'));
T4=str2double(get(handles.T4,'string'));
T5=str2double(get(handles.T5,'string'));
T6=str2double(get(handles.T6,'string'));
V1=str2double(get(handles.V1,'string'));
V2=str2double(get(handles.V2,'string'));
V3=str2double(get(handles.V3,'string'));
V4=str2double(get(handles.V4,'string'));
V5=str2double(get(handles.V5,'string'));
V6=str2double(get(handles.V6,'string'));
V=[V1;V2;V3;V4;V5;V6];
U=[T1;T2;T3;T4;T5;T6];
J=get(handles.uitable2,'data')
% if i==1
%     J(6,i)=[0;0;0;0;0;0]
J(:,i)=U
set(handles.uitable2,'data',J);
if i==n
    q=pinv(J)*V;
    for j=1:n
        if (J(4,j)==0)&&(J(5,j)==0)&&(J(6,j)==0)
             outputString(j)=cellstr(sprintf('D_dot %d = %0.2f \n',j,q(j)));
        else
            
            outputString(j)=cellstr(sprintf('Theta_dot %d = %0.2f \n',j,q(j)));
        end
            
    end
    set(handles.ANS,'string', outputString);
end

function LN_Callback(hObject, eventdata, handles)
% hObject    handle to LN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LN as text
%        str2double(get(hObject,'String')) returns contents of LN as a double


% --- Executes during object creation, after setting all properties.
function LN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TN_Callback(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TN as text
%        str2double(get(hObject,'String')) returns contents of TN as a double


% --- Executes during object creation, after setting all properties.
function TN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V1_Callback(hObject, eventdata, handles)
% hObject    handle to V1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V1 as text
%        str2double(get(hObject,'String')) returns contents of V1 as a double


% --- Executes during object creation, after setting all properties.
function V1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V2_Callback(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V2 as text
%        str2double(get(hObject,'String')) returns contents of V2 as a double


% --- Executes during object creation, after setting all properties.
function V2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V3_Callback(hObject, eventdata, handles)
% hObject    handle to V3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V3 as text
%        str2double(get(hObject,'String')) returns contents of V3 as a double


% --- Executes during object creation, after setting all properties.
function V3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V4_Callback(hObject, eventdata, handles)
% hObject    handle to V4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V4 as text
%        str2double(get(hObject,'String')) returns contents of V4 as a double


% --- Executes during object creation, after setting all properties.
function V4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V5_Callback(hObject, eventdata, handles)
% hObject    handle to V5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V5 as text
%        str2double(get(hObject,'String')) returns contents of V5 as a double


% --- Executes during object creation, after setting all properties.
function V5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V6_Callback(hObject, eventdata, handles)
% hObject    handle to V6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V6 as text
%        str2double(get(hObject,'String')) returns contents of V6 as a double


% --- Executes during object creation, after setting all properties.
function V6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to V6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
(set(handles.LN,'string',0));
(set(handles.TN,'string',0));
(set(handles.T1,'string',0));
(set(handles.T2,'string',0));
(set(handles.T3,'string',0));
(set(handles.T4,'string',0));
(set(handles.T5,'string',0));
(set(handles.T6,'string',0));
(set(handles.V1,'string',0));
(set(handles.V2,'string',0));
(set(handles.V3,'string',0));
(set(handles.V4,'string',0));
(set(handles.V5,'string',0));
(set(handles.V6,'string',0));
set(handles.ANS,'string', [ ]);
 set(handles.uitable2,'data',[0;0; 0; 0; 0; 0]);
