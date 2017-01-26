function varargout = JACOBIAN(varargin)
% JACOBIAN MATLAB code for JACOBIAN.fig
%      JACOBIAN, by itself, creates a new JACOBIAN or raises the existing
%      singleton*.
%
%      H = JACOBIAN returns the handle to a new JACOBIAN or the handle to
%      the existing singleton*.
%
%      JACOBIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JACOBIAN.M with the given input arguments.
%
%      JACOBIAN('Property','Value',...) creates a new JACOBIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JACOBIAN_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JACOBIAN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JACOBIAN

% Last Modified by GUIDE v2.5 03-Dec-2015 21:48:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JACOBIAN_OpeningFcn, ...
                   'gui_OutputFcn',  @JACOBIAN_OutputFcn, ...
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


% --- Executes just before JACOBIAN is made visible.
function JACOBIAN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JACOBIAN (see VARARGIN)

% Choose default command line output for JACOBIAN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JACOBIAN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JACOBIAN_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Link_Callback(hObject, eventdata, handles)
% hObject    handle to Link (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Link as text
%        str2double(get(hObject,'String')) returns contents of Link as a double


% --- Executes during object creation, after setting all properties.
function Link_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Link (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LNO_Callback(hObject, eventdata, handles)
% hObject    handle to LNO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LNO as text
%        str2double(get(hObject,'String')) returns contents of LNO as a double


% --- Executes during object creation, after setting all properties.
function LNO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LNO (see GCBO)
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
i =str2double(get(handles.LNO,'String'));
n =str2double(get(handles.Link,'String'));
A(i)=str2double(get(handles.AI,'String'));
ALPHAI(i)=str2double(get(handles.ALPHAI,'String'));
DI(i)=str2double(get(handles.DI,'String'));
THETAI(i)=str2double(get(handles.THETAI,'String'));
TYPE=get(handles.TYPE,'value');
DH=[A(i) ALPHAI(i) DI(i) THETAI(i) TYPE];

oldDH=(get(handles.uitable2,'data'));

if i<=n;
oldDH(i,:)=DH;
set(handles.uitable2,'data',oldDH);


p=[0;0;0];
[r,c]=size(oldDH);
for j=1:r
    
Tnew=[cosd(oldDH(j,4)) -sind(oldDH(j,4))*cosd(oldDH(j,2)) sind(oldDH(j,4))*sind(oldDH(j,2)) oldDH(j,1)*cosd(oldDH(j,4));
    sind(oldDH(j,4)) cosd(oldDH(j,4))*cosd(oldDH(j,2)) -cosd(oldDH(j,4))*sind(oldDH(j,2)) oldDH(j,1)*sind(oldDH(j,4));
    0 sind(oldDH(j,2)) cosd(oldDH(j,2)) oldDH(j,3);
    0 0 0 1];


if j==1
    Told=Tnew;
   
else
   
    Told=Told*Tnew;
    
end


% set(handles.ANS,'String',num2str(Told))
end
if i==n
   for k=1:n
       o=k-1;
       if k==1
%            z(i)=[0;0;1];
%            p(i)=[0;0;0];
           Tjacf=eye(4,4);
       else
           Tjac=[cosd(oldDH(o,4)) -sind(oldDH(o,4))*cosd(oldDH(o,2)) sind(oldDH(o,4))*sind(oldDH(o,2)) oldDH(o,1)*cosd(oldDH(o,4));
    sind(oldDH(o,4)) cosd(oldDH(o,4))*cosd(oldDH(o,2)) -cosd(oldDH(o,4))*sind(oldDH(o,2)) oldDH(o,1)*sind(oldDH(o,4));
    0 sind(oldDH(o,2)) cosd(oldDH(o,2)) oldDH(o,3);
    0 0 0 1];
           Tjacf=Tjacf*Tjac;
       end
       if (oldDH(k,5)==1)
           Jac(:,k)=[(cross(Tjacf(1:3,3),(Told(1:3,4)-Tjacf(1:3,4))));Tjacf(1:3,3)];
       elseif  (oldDH(k,5)==2)
           Jac(:,k)=[(Tjacf(1:3,3));[0;0;0]];
       end
   end
   set(handles.ANS,'String',num2str(Jac))
end
if n>=6
    if det(Jac(1:3,1:3))==0
           set(handles.ANS2,'String','Arm singularity')
    end
    if det(Jac(n-3:n,n-3:n))==0
           set(handles.ANS2,'String','Wrist singularity')
    end
end
end

% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
(set(handles.LNO,'String',0));
(set(handles.Link,'String',0));
(set(handles.AI,'String',0));
(set(handles.ALPHAI,'String',0));
(set(handles.DI,'String',0));
(set(handles.THETAI,'String',0));
 set(handles.ANS,'String',[]);
 set(handles.uitable2,'data',[0 0 0 0 0]);
 set(handles.TYPE,'value',1);
