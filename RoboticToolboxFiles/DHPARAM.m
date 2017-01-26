function varargout = DHPARAM(varargin)
% DHPARAM MATLAB code for DHPARAM.fig
%      DHPARAM, by itself, creates a new DHPARAM or raises the existing
%      singleton*.
%
%      H = DHPARAM returns the handle to a new DHPARAM or the handle to
%      the existing singleton*.
%
%      DHPARAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DHPARAM.M with the given input arguments.
%
%      DHPARAM('Property','Value',...) creates a new DHPARAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DHPARAM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DHPARAM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DHPARAM

% Last Modified by GUIDE v2.5 27-Nov-2015 19:53:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DHPARAM_OpeningFcn, ...
                   'gui_OutputFcn',  @DHPARAM_OutputFcn, ...
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


% --- Executes just before DHPARAM is made visible.
function DHPARAM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DHPARAM (see VARARGIN)

% Choose default command line output for DHPARAM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DHPARAM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DHPARAM_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

n =str2double(get(handles.LNO,'String'));
i =str2double(get(handles.Link,'String'));
A(i)=str2double(get(handles.AI,'String'));
ALPHAI(i)=str2double(get(handles.ALPHAI,'String'));
DI(i)=str2double(get(handles.DI,'String'));
THETAI(i)=str2double(get(handles.THETAI,'String'));
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


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Apply.
function Apply_Callback(hObject, eventdata, handles)
% hObject    handle to Apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
str2double(set(handles.LNO,'String',0));
str2double(set(handles.Link,'String',0));
str2double(set(handles.AI,'String',0));
str2double(set(handles.ALPHAI,'String',0));
str2double(set(handles.DI,'String',0));
str2double(set(handles.THETAI,'String',0));
set(handles.TM,'String',[])





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


% --- Executes during object creation, after setting all properties.
function Graph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Graph
