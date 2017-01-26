function varargout = WORKSPACE(varargin)
% WORKSPACE MATLAB code for WORKSPACE.fig
%      WORKSPACE, by itself, creates a new WORKSPACE or raises the existing
%      singleton*.
%
%      H = WORKSPACE returns the handle to a new WORKSPACE or the handle to
%      the existing singleton*.
%
%      WORKSPACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORKSPACE.M with the given input arguments.
%
%      WORKSPACE('Property','Value',...) creates a new WORKSPACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WORKSPACE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WORKSPACE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WORKSPACE

% Last Modified by GUIDE v2.5 05-Dec-2015 14:38:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WORKSPACE_OpeningFcn, ...
                   'gui_OutputFcn',  @WORKSPACE_OutputFcn, ...
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


% --- Executes just before WORKSPACE is made visible.
function WORKSPACE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WORKSPACE (see VARARGIN)

% Choose default command line output for WORKSPACE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WORKSPACE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WORKSPACE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=str2double(get(handles.NL,'String'));
i=str2double(get(handles.LN,'String'));

A(i)=str2double(get(handles.AI,'String'));
ALPHAI(i)=str2double(get(handles.ALPHAI,'String'));
MAXT(i)=str2double(get(handles.MAX,'String'));
MINT(i) =str2double(get(handles.MIN,'String'));
MAXDI(i)=str2double(get(handles.MAXDI,'String'));
MINDI(i)=str2double(get(handles.MINDI,'String'));
den=str2double(get(handles.den,'String'));
% TAB=(get(handles.uitable1,'data'));


% =AI;
% ALPHAI(i)=APLHAI;


if MAXT(i)==MINT(i)
    MAX(i)=MAXDI(i);MIN(i)=MINDI(i);DI(i)=(MAXDI(i)-MINDI(i)).*rand(1,1)+MINDI(i);
    THETAI(i)=MAXT(i);
elseif MAXDI(i)==MINDI(i)
        MAX(i)=MAXT(i);MIN(i)=MINT(i);THETAI(i)=(MAXT(i)-MINT(i)).*rand(1,1)+MINT(i);
        DI(i)=MAXDI(i);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


DH=[A(i) ALPHAI(i) DI(i) THETAI(i) MAXDI(i) MINDI(i) MAXT(i) MINT(i)];
oldDH=(get(handles.uitable1,'data'));
cla reset;

% fakeDH=[A(i) ALPHA(i)  

if i<=n;
oldDH(i,:)=DH;
set(handles.uitable1,'data',oldDH);

% cla reset;

p=[0;0;0];
[r,c]=size(oldDH);
for j=1:r
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fakemax(j,1)=MAX(i);
% fakemin(j,1)=MIN(i);
% edit=10;
% max=[30;40;35];
% min=[-30;-40;-35];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% edit=20;
if i==n;
    for(p=1:n)
 if oldDH(p,5)==oldDH(p,6)
%     w=[(oldDH(p,7)-oldDH(p,8)).*rand(edit,1)+oldDH(p,8)'];
       w= linspace(oldDH(p,8),oldDH(p,7),den);
 else
%     w=[(oldDH(p,5)-oldDH(p,6)).*rand(edit,1)+oldDH(p,6)'];
    w= linspace(oldDH(p,6),oldDH(p,5),den);
 end
    
    if p==1
    y={[w]};
    else
          z=cell2mat(y);
           y={[z],[w]};
           
    end
    end
for e=1:n
    u(1,e)=den;
end
L = [0 cumsum(u)];
V = cell2mat(y);

J = nchoosek(1:L(end),n);
J(any(J>repmat(L(2:end),[size(J,1) 1]),2) | ...
  any(J<=repmat(L(1:end-1),[size(J,1) 1]),2),:)  = [];

Q=V(J);

for c=1:den^n 
    T=eye(4,4);
     for b=1:n
      
    if oldDH(b,7)==oldDH(b,8)
      
            Tmat=[cosd(oldDH(b,7)) -sind(oldDH(b,7))*cosd(oldDH(b,2)) sind(oldDH(b,7))*sind(oldDH(b,2)) oldDH(b,1)*cosd(oldDH(b,7));
            sind(oldDH(b,7)) cosd(oldDH(b,7))*cosd(oldDH(b,2)) -cosd(oldDH(b,7))*sind(oldDH(b,2)) oldDH(b,1)*sind(oldDH(b,7));
             0 sind(oldDH(b,2)) cosd(oldDH(b,2)) Q(c,b);
              0 0 0 1];
T=T*Tmat;
    else
     Tmat=[cosd(Q(c,b)) -sind(Q(c,b))*cosd(oldDH(b,2)) sind(Q(c,b))*sind(oldDH(b,2)) oldDH(b,1)*cosd(Q(c,b));
    sind(Q(c,b)) cosd(Q(c,b))*cosd(oldDH(b,2)) -cosd(Q(c,b))*sind(oldDH(b,2)) oldDH(b,1)*sind(Q(c,b));
    0 sind(oldDH(b,2)) cosd(oldDH(b,2)) oldDH(b,5);
    0 0 0 1];
T=T*Tmat;
    end        
     end
    MX(c,:)=(T(1,4));
    MY(c,:)=(T(2,4));
    MZ(c,:)=(T(3,4));
end
scatter3(MX,MY,MZ, '.','r');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set(handles.TM,'String',num2str(Told))
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



function MAX_Callback(hObject, eventdata, handles)
% hObject    handle to MAX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAX as text
%        str2double(get(hObject,'String')) returns contents of MAX as a double


% --- Executes during object creation, after setting all properties.
function MAX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MIN_Callback(hObject, eventdata, handles)
% hObject    handle to MIN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MIN as text
%        str2double(get(hObject,'String')) returns contents of MIN as a double


% --- Executes during object creation, after setting all properties.
function MIN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MIN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MAXDI_Callback(hObject, eventdata, handles)
% hObject    handle to MAXDI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAXDI as text
%        str2double(get(hObject,'String')) returns contents of MAXDI as a double


% --- Executes during object creation, after setting all properties.
function MAXDI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAXDI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MINDI_Callback(hObject, eventdata, handles)
% hObject    handle to MINDI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MINDI as text
%        str2double(get(hObject,'String')) returns contents of MINDI as a double


% --- Executes during object creation, after setting all properties.
function MINDI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MINDI (see GCBO)
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
cla reset;

set(handles.uitable1,'data',[0 0 0 0 0 0 0 0]);

str2double(set(handles.NL,'String',0));
str2double(set(handles.LN,'String',1));
str2double(set(handles.AI,'String',0));
str2double(set(handles.ALPHAI,'String',0));
str2double(set(handles.MAXDI,'String',0));
str2double(set(handles.MINDI,'String',0));
str2double(set(handles.MAX,'String',0));
str2double(set(handles.MIN,'String',0));



function den_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double

% --- Executes during object creation, after setting all properties.
function den_CreateFcn(hObject, eventdata, handles)
% hObject    handle to den (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
% function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end
