function varargout = DHNEW(varargin)
% DHNEW MATLAB code for DHNEW.fig
%      DHNEW, by itself, creates a new DHNEW or raises the existing
%      singleton*.
%
%      H = DHNEW returns the handle to a new DHNEW or the handle to
%      the existing singleton*.
%
%      DHNEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DHNEW.M with the given input arguments.
%
%      DHNEW('Property','Value',...) creates a new DHNEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DHNEW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DHNEW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DHNEW

% Last Modified by GUIDE v2.5 04-Dec-2015 18:36:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DHNEW_OpeningFcn, ...
                   'gui_OutputFcn',  @DHNEW_OutputFcn, ...
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


% --- Executes just before DHNEW is made visible.
function DHNEW_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DHNEW (see VARARGIN)

% Choose default command line output for DHNEW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DHNEW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DHNEW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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
n=str2double(get(handles.NJ,'string'));
JNTYPE=(get(handles.JNTYPE,'value'));
i=str2double(get(handles.LN,'string'));
LL=str2double(get(handles.LL,'string'));
TYPE=(get(handles.TYPE,'value'));
DIRECOS=(get(handles.DIRECOS,'value'));
Q=str2double(get(handles.Q,'string'));
oldDH=(get(handles.uitable1,'data'));
if i==1
    if JNTYPE==1
        theta=Q;
        if TYPE==1
       if DIRECOS==3||DIRECOS==4
           d=0;a=0;
           if DIRECOS==3
               alpha=-90;
           else
               alpha=90;
           end
       
        else
            a=LL;
            d=0;
            alpha=0;
       end  
        else
            d=LL;a=0;
            if DIRECOS==1
               alpha=0;
           elseif DIRECOS==2
               alpha=180;
             elseif DIRECOS==3
               alpha=-90;
            elseif DIRECOS==4
               alpha=90;
           end
            
        end
    else
        theta=0;
        d=Q;a=0;
        if DIRECOS==3
               alpha=-90;
           elseif DIRECOS==4
               alpha=90;
        elseif DIRECOS==1
            alpha=0;
        elseif DIRECOS==2
            alpha=180;
        end
    end
end
    if i>1&&i<n
     if oldDH(i-1,5)==1
        theta=Q;
        if TYPE==1
       if DIRECOS==3||DIRECOS==4
           d=0;a=0;
           if DIRECOS==3
               alpha=-90;
           else
               alpha=90;
           end
       
        else
            a=LL;
            d=0;
            alpha=0;
       end  
        else
            d=LL;a=0;
            if DIRECOS==1
               alpha=0;
            elseif DIRECOS==2
               alpha=180;
             elseif DIRECOS==3
               alpha=-90;
            elseif DIRECOS==4
               alpha=90;
           end
            
        end
    else
        theta=0;
        d=Q;a=0;
        if DIRECOS==3
               alpha=-90;
        elseif DIRECOS==4
               alpha=90;
        elseif DIRECOS==1
            alpha=0;
        elseif DIRECOS==2
            alpha=180;
           end
    end   
    end
    if i==n
        if oldDH(i-1,5)==1
            if DIRECOS==5
                theta=Q;
                a=LL;
                alpha=0;
                d=0;
            else
            theta=Q;
            d=LL;
            a=0;
            alpha=0;
            end
        else
            theta=0;
            d=Q;
            a=0;
            alpha=0;
        end
    end
    DH=[a alpha d theta TYPE];


if i<=n;
oldDH(i,:)=DH;
set(handles.uitable1,'data',oldDH);

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
grid on
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

set(handles.ANS,'String',num2str(Told))
end



% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;
(set(handles.NJ,'string',0));
(set(handles.JNTYPE,'value',1));
(set(handles.LN,'string',0));
(set(handles.LL,'string',0));
(set(handles.TYPE,'value',1));
(set(handles.DIRECOS,'value',1));
(set(handles.Q,'string',0));
(set(handles.uitable1,'data',[0 0 0 0 0]));
set(handles.ANS,'String',[ ])

% --- Executes on selection change in DIRECOS.
function DIRECOS_Callback(hObject, eventdata, handles)
% hObject    handle to DIRECOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DIRECOS contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DIRECOS


% --- Executes during object creation, after setting all properties.
function DIRECOS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DIRECOS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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


% --- Executes on selection change in JNTYPE.
function JNTYPE_Callback(hObject, eventdata, handles)
% hObject    handle to JNTYPE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns JNTYPE contents as cell array
%        contents{get(hObject,'Value')} returns selected item from JNTYPE


% --- Executes during object creation, after setting all properties.
function JNTYPE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JNTYPE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q as text
%        str2double(get(hObject,'String')) returns contents of Q as a double


% --- Executes during object creation, after setting all properties.
function Q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
