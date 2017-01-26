function varargout = MAINFILE(varargin)
% MAINFILE MATLAB code for MAINFILE.fig
%      MAINFILE, by itself, creates a new MAINFILE or raises the existing
%      singleton*.
%
%      H = MAINFILE returns the handle to a new MAINFILE or the handle to
%      the existing singleton*.
%
%      MAINFILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINFILE.M with the given input arguments.
%
%      MAINFILE('Property','Value',...) creates a new MAINFILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MAINFILE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MAINFILE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MAINFILE

% Last Modified by GUIDE v2.5 04-Dec-2015 23:15:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MAINFILE_OpeningFcn, ...
                   'gui_OutputFcn',  @MAINFILE_OutputFcn, ...
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


% --- Executes just before MAINFILE is made visible.
function MAINFILE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MAINFILE (see VARARGIN)

% Choose default command line output for MAINFILE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MAINFILE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MAINFILE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in DOF.
function DOF_Callback(hObject, eventdata, handles)
% hObject    handle to DOF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run TRANSMAT.m

% --- Executes on button press in TO.
function TO_Callback(hObject, eventdata, handles)
% hObject    handle to TO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run TRANSOP.m

% --- Executes on button press in TM.
function TM_Callback(hObject, eventdata, handles)
% hObject    handle to TM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run TRANSMAP.m

% --- Executes on button press in EA.
function EA_Callback(hObject, eventdata, handles)
% hObject    handle to EA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run EULERANG.m

% --- Executes on button press in FK.
function FK_Callback(hObject, eventdata, handles)
% hObject    handle to FK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run DHPARAM.m

% --- Executes on button press in WS.
function WS_Callback(hObject, eventdata, handles)
% hObject    handle to WS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run WORKSPACE.m

% --- Executes on button press in IK.
function IK_Callback(hObject, eventdata, handles)
% hObject    handle to IK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run INVERSEKINEMATICS.m

% --- Executes on button press in DF.
function DF_Callback(hObject, eventdata, handles)
% hObject    handle to DF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run JACOBIAN.m

% --- Executes on button press in IDK.
function IDK_Callback(hObject, eventdata, handles)
% hObject    handle to IDK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run INVERSEDIFFERENTIAL.m

% --- Executes on button press in MD.
function MD_Callback(hObject, eventdata, handles)
% hObject    handle to MD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in IKUJ.
function IKUJ_Callback(hObject, eventdata, handles)
% hObject    handle to IKUJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run INVERSEKINEMATICSJACOB.m

% --- Executes on button press in RM.
function RM_Callback(hObject, eventdata, handles)
% hObject    handle to RM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run ROTMAT.m


% --- Executes on button press in LPF.
function LPF_Callback(hObject, eventdata, handles)
% hObject    handle to LPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run DHNEW.m
