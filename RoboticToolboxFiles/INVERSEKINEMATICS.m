function varargout = INVERSEKINEMATICS(varargin)
% INVERSEKINEMATICS MATLAB code for INVERSEKINEMATICS.fig
%      INVERSEKINEMATICS, by itself, creates a new INVERSEKINEMATICS or raises the existing
%      singleton*.
%
%      H = INVERSEKINEMATICS returns the handle to a new INVERSEKINEMATICS or the handle to
%      the existing singleton*.
%
%      INVERSEKINEMATICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSEKINEMATICS.M with the given input arguments.
%
%      INVERSEKINEMATICS('Property','Value',...) creates a new INVERSEKINEMATICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before INVERSEKINEMATICS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to INVERSEKINEMATICS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help INVERSEKINEMATICS

% Last Modified by GUIDE v2.5 03-Dec-2015 02:02:23

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @INVERSEKINEMATICS_OpeningFcn, ...
                   'gui_OutputFcn',  @INVERSEKINEMATICS_OutputFcn, ...
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


% --- Executes just before INVERSEKINEMATICS is made visible.
function INVERSEKINEMATICS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to INVERSEKINEMATICS (see VARARGIN)

% Choose default command line output for INVERSEKINEMATICS
run startup_rvc.m;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes INVERSEKINEMATICS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = INVERSEKINEMATICS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function T11_Callback(hObject, eventdata, handles)
% hObject    handle to T11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T11 as text
%        str2double(get(hObject,'String')) returns contents of T11 as a double


% --- Executes during object creation, after setting all properties.
function T11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T12_Callback(hObject, eventdata, handles)
% hObject    handle to T12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T12 as text
%        str2double(get(hObject,'String')) returns contents of T12 as a double


% --- Executes during object creation, after setting all properties.
function T12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T13_Callback(hObject, eventdata, handles)
% hObject    handle to T13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T13 as text
%        str2double(get(hObject,'String')) returns contents of T13 as a double


% --- Executes during object creation, after setting all properties.
function T13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T14_Callback(hObject, eventdata, handles)
% hObject    handle to T14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T14 as text
%        str2double(get(hObject,'String')) returns contents of T14 as a double


% --- Executes during object creation, after setting all properties.
function T14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T21_Callback(hObject, eventdata, handles)
% hObject    handle to T21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T21 as text
%        str2double(get(hObject,'String')) returns contents of T21 as a double


% --- Executes during object creation, after setting all properties.
function T21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T22_Callback(hObject, eventdata, handles)
% hObject    handle to T22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T22 as text
%        str2double(get(hObject,'String')) returns contents of T22 as a double


% --- Executes during object creation, after setting all properties.
function T22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T23_Callback(hObject, eventdata, handles)
% hObject    handle to T23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T23 as text
%        str2double(get(hObject,'String')) returns contents of T23 as a double


% --- Executes during object creation, after setting all properties.
function T23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T31_Callback(hObject, eventdata, handles)
% hObject    handle to T31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T31 as text
%        str2double(get(hObject,'String')) returns contents of T31 as a double


% --- Executes during object creation, after setting all properties.
function T31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T32_Callback(hObject, eventdata, handles)
% hObject    handle to T32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T32 as text
%        str2double(get(hObject,'String')) returns contents of T32 as a double


% --- Executes during object creation, after setting all properties.
function T32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T33_Callback(hObject, eventdata, handles)
% hObject    handle to T33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T33 as text
%        str2double(get(hObject,'String')) returns contents of T33 as a double


% --- Executes during object creation, after setting all properties.
function T33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T34_Callback(hObject, eventdata, handles)
% hObject    handle to T34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T34 as text
%        str2double(get(hObject,'String')) returns contents of T34 as a double


% --- Executes during object creation, after setting all properties.
function T34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T41_Callback(hObject, eventdata, handles)
% hObject    handle to T41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T41 as text
%        str2double(get(hObject,'String')) returns contents of T41 as a double


% --- Executes during object creation, after setting all properties.
function T41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T42_Callback(hObject, eventdata, handles)
% hObject    handle to T42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T42 as text
%        str2double(get(hObject,'String')) returns contents of T42 as a double


% --- Executes during object creation, after setting all properties.
function T42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T43_Callback(hObject, eventdata, handles)
% hObject    handle to T43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T43 as text
%        str2double(get(hObject,'String')) returns contents of T43 as a double


% --- Executes during object creation, after setting all properties.
function T43_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T44_Callback(hObject, eventdata, handles)
% hObject    handle to T44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T44 as text
%        str2double(get(hObject,'String')) returns contents of T44 as a double


% --- Executes during object creation, after setting all properties.
function T44_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function AI_Callback(hObject, eventdata, handles)
% hObject    handle to AI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AI as text
%        str2double(get(hObject,'String')) returns contents of AI as a double


% --- Executes during object creation, after setting all properties.
function AI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ALPHAI_Callback(hObject, eventdata, handles)
% hObject    handle to ALPHAI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ALPHAI as text
%        str2double(get(hObject,'String')) returns contents of ALPHAI as a double


% --- Executes during object creation, after setting all properties.
function ALPHAI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ALPHAI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DI_Callback(hObject, eventdata, handles)
% hObject    handle to DI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DI as text
%        str2double(get(hObject,'String')) returns contents of DI as a double


% --- Executes during object creation, after setting all properties.
function DI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function THETAI_Callback(hObject, eventdata, handles)
% hObject    handle to THETAI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of THETAI as text
%        str2double(get(hObject,'String')) returns contents of THETAI as a double


% --- Executes during object creation, after setting all properties.
function THETAI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to THETAI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NL_Callback(hObject, eventdata, handles)
% hObject    handle to NL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NL as text
%        str2double(get(hObject,'String')) returns contents of NL as a double


% --- Executes during object creation, after setting all properties.
function NL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in TYPE.
function TYPE_Callback(hObject, eventdata, handles)
% hObject    handle to TYPE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TYPE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TYPE


% --- Executes during object creation, after setting all properties.
function TYPE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TYPE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T11=str2double(get(handles.T11,'string'));
T12=str2double(get(handles.T12,'string'));
T13=str2double(get(handles.T13,'string'));
T14=str2double(get(handles.T14,'string'));
T21=str2double(get(handles.T21,'string'));
T22=str2double(get(handles.T22,'string'));
T23=str2double(get(handles.T23,'string'));
T24=str2double(get(handles.T24,'string'));
T31=str2double(get(handles.T31,'string'));
T32=str2double(get(handles.T32,'string'));
T33=str2double(get(handles.T33,'string'));
T34=str2double(get(handles.T34,'string'));
T41=str2double(get(handles.T41,'string'));
T42=str2double(get(handles.T42,'string'));
T43=str2double(get(handles.T43,'string'));
T44=str2double(get(handles.T44,'string'));
n=str2double(get(handles.NL,'string'));
i=str2double(get(handles.LN,'string'));
AI=str2double(get(handles.AI,'string'));
ALPHAI=str2double(get(handles.ALPHAI,'string'));
DI=str2double(get(handles.DI,'string'));
THETAI=str2double(get(handles.THETAI,'string'));
TYPE=(get(handles.TYPE,'value'));


DH=[AI ALPHAI DI THETAI TYPE];
oldDH=(get(handles.uitable1,'data'));

if i<=n
oldDH(i,:)=DH;
set(handles.uitable1,'data',oldDH);
if i==n
    oldDH=(get(handles.uitable1,'data'));
    for (k=1:n)
       
         if oldDH(k,5)==1
         
                 oldDH(k,5)=0;
            elseif oldDH(k,5)==2;
                
                 oldDH(k,5)=1;
            end
    end
    dh=[oldDH(:,4) oldDH(:,3) oldDH(:,1) oldDH(:,2) oldDH(:,5)];
    r=SerialLink(dh);
    t=[T11 T12 T13 T14;T21 T22 T23 T24;T31 T32 T33 T34;T41 T42 T43 T44];
    Z=(r.ikunc(t));
    for j=1:n
        if oldDH(j,5)==0
            G=Z(1,j).*180/pi;
           
    
            outputString(j)=cellstr(sprintf('Theta %d = %0.2f \n',j,G));
            
        elseif oldDH(j,5)==1
            outputString(j)=cellstr(sprintf('D %d = %0.2f \n',j,Z(1,j)));
            
        end
        set(handles.ANS,'string',outputString);
    end
    
end
    
end



% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
(set(handles.T11,'string',0));
(set(handles.T12,'string',0));
(set(handles.T13,'string',0));
(set(handles.T14,'string',0));
(set(handles.T21,'string',0));
(set(handles.T22,'string',0));
(set(handles.T23,'string',0));
(set(handles.T24,'string',0));
(set(handles.T31,'string',0));
(set(handles.T32,'string',0));
(set(handles.T33,'string',0));
(set(handles.T34,'string',0));
(set(handles.T41,'string',0));
(set(handles.T42,'string',0));
(set(handles.T43,'string',0));
(set(handles.T44,'string',0));
(set(handles.NL,'string',0));
(set(handles.LN,'string',0));
(set(handles.AI,'string',0));
(set(handles.ALPHAI,'string',0));
(set(handles.DI,'string',0));
(set(handles.THETAI,'string',0));
(set(handles.TYPE,'value',1));
 set(handles.ANS,'string',[ ]);
set(handles.uitable1,'data',[0 0 0 0 0]);

function T24_Callback(hObject, eventdata, handles)
% hObject    handle to T24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T24 as text
%        str2double(get(hObject,'String')) returns contents of T24 as a double


% --- Executes during object creation, after setting all properties.
function T24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
