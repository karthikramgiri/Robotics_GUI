function varargout = DHTAB(varargin)
%DHTAB M-file for DHTAB.fig
%      DHTAB, by itself, creates a new DHTAB or raises the existing
%      singleton*.
%
%      H = DHTAB returns the handle to a new DHTAB or the handle to
%      the existing singleton*.
%
%      DHTAB('Property','Value',...) creates a new DHTAB using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to DHTAB_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      DHTAB('CALLBACK') and DHTAB('CALLBACK',hObject,...) call the
%      local function named CALLBACK in DHTAB.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DHTAB

% Last Modified by GUIDE v2.5 04-Dec-2015 17:34:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DHTAB_OpeningFcn, ...
                   'gui_OutputFcn',  @DHTAB_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before DHTAB is made visible.
function DHTAB_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for DHTAB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DHTAB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DHTAB_OutputFcn(hObject, eventdata, handles)
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
NJ=str2double(get(handles.NJ,'String'));
JN=str2double(get(handles.JN,'String'));
TJ=(get(handles.TJ,'Value'));
J0=(get(handles.J0,'Value'));
LL=str2double(get(handles.LL,'String'));
JA=(get(handles.JA,'Value'));
Xin=[1;0;0];
Yin=[0;1;0];
Zin=[0;0;1];
if JA==1;
     ALPHAI(i)=90;
elseif JA==2
     ALPHAI(i)=-90;
    elseif JA==3
        ALPHAI(i)=-90;
        elseif JA==4
            ALPHAI(i)=90;
            elseif JA==5
                ALPHAI(i)=0;
                elseif JA==6
                 ALPHAI(i)=180;
end
    
n =NJ+1;
i =str2double(get(handles.Link,'String'));
A(i)=str2double(get(handles.AI,'String'));
ALPHAI(i)=str2double(get(handles.ALPHAI,'String'));
DI(i)=str2double(get(handles.DI,'String'));
THETAI(i)=str2double(get(handles.THETAI,'String'));
Xcomp=str2double(get(handles.Xcomp,'string'));
Ycomp=str2double(get(handles.Ycomp,'string'));
Zcomp=str2double(get(handles.Zcomp,'string'));
DH=[A(i) ALPHAI(i) DI(i) THETAI(i)];
oldDH=(get(handles.uitable2,'data'));
if i<=n;
oldDH(i,:)=DH;
set(handles.uitable2,'data',oldDH);

cla reset;
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
 %%%%% GRAPH %%%%%%%%%%%%
 if j==1
 Pin=p;
R0=eye(3,3);
hold on

axis_start = p;
c='b';
for t=1:3
    axis_end(:,t) = axis_start + R0(:,t);
end

plot3(p(1), p(2), p(3), 'o','Color',c);

axis_c = ['r', 'g', 'b'];
for t = 1:3
    plot3([axis_start(1) axis_end(1,t)],...
        [axis_start(2) axis_end(2,t)],...
        [axis_start(3) axis_end(3,t)],'--', 'Color', axis_c(t));
end

axis equal
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Pin=p;
p=Told(1:3,4);
c='g';
hold on
R=Told(1:3,1:3);
axis_start = p;

for t=1:3
    axis_end(:,t) = axis_start + R(:,t);
end

plot3(p(1), p(2), p(3), 'o','Color',c);

axis_c = ['r', 'g', 'b'];
for t = 1:3
    plot3([axis_start(1) axis_end(1,t)],...
        [axis_start(2) axis_end(2,t)],...
        [axis_start(3) axis_end(3,t)], 'Color', axis_c(t));
end
line([Pin(1),p(1)],[Pin(2),p(2)],[Pin(3),p(3)],'Color','k');

axis equal
end

set(handles.TM,'String',num2str(Told))
end
end

% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
n =str2double(get(handles.LNO,'String'));
i =1;
A(i)=0;
ALPHAI(i)=0;
DI(i)=0;
THETAI(i)=0;
DH=[A(i) ALPHAI(i) DI(i) THETAI(i)];
% oldDH=(get(handles.uitable2,'data'));
% for k=1:n
% if k>0;
% oldDH(k,:)=DH;
set(handles.uitable2,'data',DH);
% end
% end
% 
% for j=1:i
%     
% Tnew=[cos(oldDH(j,4)) -sin(oldDH(j,4))*cos(oldDH(j,2)) sin(oldDH(j,4))*sin(oldDH(j,2)) oldDH(j,1)*cos(oldDH(j,4));
%     sin(oldDH(j,4)) cos(oldDH(j,4))*cos(oldDH(j,2)) -cos(oldDH(j,4))*sin(oldDH(j,2)) oldDH(j,1)*sin(oldDH(j,4));
%     0 sin(oldDH(j,2)) cos(oldDH(j,2)) oldDH(j,3);
%     0 0 0 1];
% 
% 
% if j==1
%     Told=Tnew;
%    
% else
%    
%     Told=Told*Tnew;
%     
% end
% end
str2double(set(handles.NJ,'String',0));
str2double(set(handles.JN,'String',0));
str2double(set(handles.LL,'String',0));
str2double(set(handles.JA,'String',0));
str2double(set(handles.DI,'String',0));
str2double(set(handles.THETAI,'String',0));
set(handles.TM,'String',[])

% --- Executes on slider movement.
function VAR_Callback(hObject, eventdata, handles)
% hObject    handle to VAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function VAR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function NJ_Callback(hObject, eventdata, handles)
% hObject    handle to NJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NJ as text
%        str2double(get(hObject,'String')) returns contents of NJ as a double


% --- Executes during object creation, after setting all properties.
function NJ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function JN_Callback(hObject, eventdata, handles)
% hObject    handle to JN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JN as text
%        str2double(get(hObject,'String')) returns contents of JN as a double


% --- Executes during object creation, after setting all properties.
function JN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in TJ.
function TJ_Callback(hObject, eventdata, handles)
% hObject    handle to TJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns TJ contents as cell array
%        contents{get(hObject,'Value')} returns selected item from TJ


% --- Executes during object creation, after setting all properties.
function TJ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LL_Callback(hObject, eventdata, handles)
% hObject    handle to LL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LL as text
%        str2double(get(hObject,'String')) returns contents of LL as a double


% --- Executes during object creation, after setting all properties.
function LL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in JA.
function JA_Callback(hObject, eventdata, handles)
% hObject    handle to JA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns JA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from JA


% --- Executes during object creation, after setting all properties.
function JA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in J0.
function J0_Callback(hObject, eventdata, handles)
% hObject    handle to J0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns J0 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from J0


% --- Executes during object creation, after setting all properties.
function J0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to J0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xcomp_Callback(hObject, eventdata, handles)
% hObject    handle to Xcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xcomp as text
%        str2double(get(hObject,'String')) returns contents of Xcomp as a double


% --- Executes during object creation, after setting all properties.
function Xcomp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ycomp_Callback(hObject, eventdata, handles)
% hObject    handle to Ycomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ycomp as text
%        str2double(get(hObject,'String')) returns contents of Ycomp as a double


% --- Executes during object creation, after setting all properties.
function Ycomp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ycomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zcomp_Callback(hObject, eventdata, handles)
% hObject    handle to Zcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Zcomp as text
%        str2double(get(hObject,'String')) returns contents of Zcomp as a double


% --- Executes during object creation, after setting all properties.
function Zcomp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Zcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DIREC.
function DIREC_Callback(hObject, eventdata, handles)
% hObject    handle to DIREC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DIREC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DIREC


% --- Executes during object creation, after setting all properties.
function DIREC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DIREC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
