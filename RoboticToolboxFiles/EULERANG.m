function varargout = EULERANG(varargin)
% EULERANG MATLAB code for EULERANG.fig
%      EULERANG, by itself, creates a new EULERANG or raises the existing
%      singleton*.
%
%      H = EULERANG returns the handle to a new EULERANG or the handle to
%      the existing singleton*.
%
%      EULERANG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EULERANG.M with the given input arguments.
%
%      EULERANG('Property','Value',...) creates a new EULERANG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EULERANG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EULERANG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EULERANG

% Last Modified by GUIDE v2.5 26-Nov-2015 03:24:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EULERANG_OpeningFcn, ...
                   'gui_OutputFcn',  @EULERANG_OutputFcn, ...
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


% --- Executes just before EULERANG is made visible.
function EULERANG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EULERANG (see VARARGIN)

% Choose default command line output for EULERANG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EULERANG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EULERANG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r11= str2double(get(handles.r11,'string'));
r12= str2double(get(handles.r12,'string'));
r13= str2double(get(handles.r13,'string'));
r21= str2double(get(handles.r21,'string'));
r22= str2double(get(handles.r22,'string'));
r23= str2double(get(handles.r23,'string'));
r31= str2double(get(handles.r31,'string'));
r32= str2double(get(handles.r32,'string'));
r33= str2double(get(handles.r33,'string'));

Frame =(get(handles.Frame,'value'));
if Frame==1
    phi1=atan2d(r23,r13);
    theta1=atan2d(sqrt(r13^2+r23^2),r33);
    psi1=atan2d(r32,-r31);
    phi2=atan2d(-r23,-r13);
    theta2=atan2d(-sqrt(r13^2+r23^2),r33);
    psi2=atan2d(-r32,r31);
     
else 
    phi1=atan2d(r21,r11);
    theta1=atan2d(-r31,sqrt(r32^2+r33^2));
    psi1=atan2d(r32,r33);
    phi2=atan2d(-r21,-r11);
    theta2=atan2d(-r31,-sqrt(r32^2+r33^2));
    psi2=atan2d(-r32,-r33);
     
     
end
 set(handles.phi1,'string',num2str(phi1));
  set(handles.theta1,'string',num2str(theta1));
   set(handles.psi1,'string',num2str(psi1));
   set(handles.phi2,'string',num2str(phi2));
  set(handles.theta2,'string',num2str(theta2));
   set(handles.psi2,'string',num2str(psi2));
  


% --- Executes on selection change in Frame.
function Frame_Callback(hObject, eventdata, handles)
% hObject    handle to Frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Frame contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Frame


% --- Executes during object creation, after setting all properties.
function Frame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r11_Callback(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r11 as text
%        str2double(get(hObject,'String')) returns contents of r11 as a double


% --- Executes during object creation, after setting all properties.
function r11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r21_Callback(hObject, eventdata, handles)
% hObject    handle to r21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r21 as text
%        str2double(get(hObject,'String')) returns contents of r21 as a double


% --- Executes during object creation, after setting all properties.
function r21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r31_Callback(hObject, eventdata, handles)
% hObject    handle to r31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r31 as text
%        str2double(get(hObject,'String')) returns contents of r31 as a double


% --- Executes during object creation, after setting all properties.
function r31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r12_Callback(hObject, eventdata, handles)
% hObject    handle to r12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r12 as text
%        str2double(get(hObject,'String')) returns contents of r12 as a double


% --- Executes during object creation, after setting all properties.
function r12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r22_Callback(hObject, eventdata, handles)
% hObject    handle to r22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r22 as text
%        str2double(get(hObject,'String')) returns contents of r22 as a double


% --- Executes during object creation, after setting all properties.
function r22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r32_Callback(hObject, eventdata, handles)
% hObject    handle to r32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r32 as text
%        str2double(get(hObject,'String')) returns contents of r32 as a double


% --- Executes during object creation, after setting all properties.
function r32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r13_Callback(hObject, eventdata, handles)
% hObject    handle to r13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r13 as text
%        str2double(get(hObject,'String')) returns contents of r13 as a double


% --- Executes during object creation, after setting all properties.
function r13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r23_Callback(hObject, eventdata, handles)
% hObject    handle to r23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r23 as text
%        str2double(get(hObject,'String')) returns contents of r23 as a double


% --- Executes during object creation, after setting all properties.
function r23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r33_Callback(hObject, eventdata, handles)
% hObject    handle to r33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r33 as text
%        str2double(get(hObject,'String')) returns contents of r33 as a double


% --- Executes during object creation, after setting all properties.
function r33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
