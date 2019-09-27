function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 16-Apr-2018 12:22:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
a=[];
setappdata(0,'recorded',a);
myImage = imread('download.jpg');
axes(handles.axes1);
imshow(myImage);
setappdata(0,'metr',0);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('1.wav');
s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton1,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton1,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('2.wav');
s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton2,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton2,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('3.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton3,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton3,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('4.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton4,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton4,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('5.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton5,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton5,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('6.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton6,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton6,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('7.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton7,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton7,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('8.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton8,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton8,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('9.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton9,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton9,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('10.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton10,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton10,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('11.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton11,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton11,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('12.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton12,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton12,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('13.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton13,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton13,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('14.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton14,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton14,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('15.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton15,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton15,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('16.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton16,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton16,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('17.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton17,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton17,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('18.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton18,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton18,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('19.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton19,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton19,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('20.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton20,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton20,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('21.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton21,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton21,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('22.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton22,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton22,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('23.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton23,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton23,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('24.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton24,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton24,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[a1,fs]=audioread('25.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton25,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton25,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);
% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('26.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton26,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton26,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('27.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton27,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton27,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('28.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton28,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton28,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('29.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton29,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton29,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('30.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton30,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton30,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('31.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton31,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton31,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('32.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton32,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton32,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('33.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton33,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton33,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('34.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton34,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton34,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('35.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton35,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton35,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[a1,fs]=audioread('36.wav');
s=get(handles.slider2,'value');
ps = fs*s;
sound(a1,ps);
set(handles.pushbutton36,'BackgroundColor','blue');
pause(0.06)
set(handles.pushbutton36,'BackgroundColor','black');
r=getappdata(0,'recorded');
a2=a1(1:6630);
r=[r;a2];
setappdata(0,'recorded',r);

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider2,'value');
s=num2str(s);
set(handles.text4,'string',s);

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton37.
function pushbutton37_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on pushbutton37 and none of its controls.
function pushbutton37_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
 switch eventdata.Key
    case '1'
[a1,fs]=audioread('1.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton1,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton1,'BackgroundColor','black');


     case'2'
        [a1,fs]=audioread('2.wav');
  s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton2,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton2,'BackgroundColor','black');
     case'3'
          [a1,fs]=audioread('3.wav');
  s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,fs)
set(handles.pushbutton3,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton3,'BackgroundColor','black');

     case'4'
          [a1,fs]=audioread('4.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton4,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton4,'BackgroundColor','black');
     case'5'
          [a1,fs]=audioread('5.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton5,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton5,'BackgroundColor','black');
     case'6'
          [a1,fs]=audioread('6.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton6,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton6,'BackgroundColor','black');

     case'7'
          [a1,fs]=audioread('7.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton7,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton7,'BackgroundColor','black');
     case'8'
          [a1,fs]=audioread('8.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton8,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton8,'BackgroundColor','black');

     case'9'
          [a1,fs]=audioread('9.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton9,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton9,'BackgroundColor','black');

     case'0'
          [a1,fs]=audioread('10.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton10,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton10,'BackgroundColor','black');

     case'q'
          [a1,fs]=audioread('11.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton11,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton11,'BackgroundColor','black');

     case'w'
          [a1,fs]=audioread('12.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton12,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton12,'BackgroundColor','black');

     case'e'
          [a1,fs]=audioread('13.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton13,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton13,'BackgroundColor','black');

     case'r'
          [a1,fs]=audioread('14.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton14,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton14,'BackgroundColor','black');
     case't'
          [a1,fs]=audioread('15.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton15,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton15,'BackgroundColor','black');

     case'y'
          [a1,fs]=audioread('16.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton16,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton16,'BackgroundColor','black');
     case'u'
          [a1,fs]=audioread('17.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton17,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton17,'BackgroundColor','black');
     case'i'
          [a1,fs]=audioread('18.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton18,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton18,'BackgroundColor','black');

     case'o'
          [a1,fs]=audioread('19.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton19,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton19,'BackgroundColor','black');
     case'p'
          [a1,fs]=audioread('20.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton20,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton20,'BackgroundColor','black');
     case'a'
          [a1,fs]=audioread('21.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton21,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton21,'BackgroundColor','black');
     case's'
          [a1,fs]=audioread('22.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton22,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton22,'BackgroundColor','black');
     case'd'
          [a1,fs]=audioread('23.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton23,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton23,'BackgroundColor','black');
     case'f'
          [a1,fs]=audioread('24.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton24,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton24,'BackgroundColor','black');
     case'g'
          [a1,fs]=audioread('25.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton25,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton25,'BackgroundColor','black');
     case'h'
          [a1,fs]=audioread('26.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton26,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton26,'BackgroundColor','black');
     case'j'
          [a1,fs]=audioread('27.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton27,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton27,'BackgroundColor','black');
     case'k'
          [a1,fs]=audioread('28.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton28,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton28,'BackgroundColor','black');
     case'l'
          [a1,fs]=audioread('29.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton29,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton29,'BackgroundColor','black');
     case'z'
          [a1,fs]=audioread('30.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton30,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton30,'BackgroundColor','black');
     case'x'
          [a1,fs]=audioread('31.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton31,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton31,'BackgroundColor','black');
     case'c'
          [a1,fs]=audioread('32.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton32,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton32,'BackgroundColor','black');
     case'v'
          [a1,fs]=audioread('33.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton33,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton33,'BackgroundColor','black');
     case'b'
          [a1,fs]=audioread('34.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton34,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton34,'BackgroundColor','black');
     case'n'
          [a1,fs]=audioread('35.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton35,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton35,'BackgroundColor','black');
     case'm'
          [a1,fs]=audioread('36.wav');
 s=get(handles.slider2,'value');
ps=fs*s;
sound(a1,ps);
set(handles.pushbutton36,'BackgroundColor','blue');
pause(0.06)
    set(handles.pushbutton36,'BackgroundColor','black');
 end


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'recorded');
a3=zeros(5513,1);
r=[r;a3];
setappdata(0,'recorded',r);


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'recorded');
sound(r,44100);


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a4=[];
setappdata(0,'recorded',a4);

% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear sound


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[r,fs]=audioread('47.mp3');
sound(r,fs)
pause(0.3)
f = msgbox('Made By Group No.33 ','Credits');
pause(0.15)
d=msgbox('Ayman Ahmed   5529');
pause(0.15)
d=msgbox('Ahmed Yasser   5473');
pause(0.15)
d=msgbox('Mostafa Hakam   5525');
pause(0.15)
d=msgbox('Marawan Abdelfatah   5717');


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider2,'value',1);
set(handles.text4,'string','1');


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'metr',1)
r=getappdata(0,'metr');
[a,fs]=audioread('48.mp3');
    a_seg=a(4000:6000);
while r
    
    sound(a_seg,fs)
    n=0.95462*get(handles.slider3,'value');
    pause(n);
    r=getappdata(0,'metr');
end
    


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=0;
setappdata(0,'metr',r);


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider3,'value',1);

% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider3,'value',0.5);

% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider3,'value',2);


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path]=uigetfile({'.mp3'},'Pick A Backing Track');
setappdata(0,'f',file);
setappdata(0,'p',path);
set(handles.text5,'string',file);

% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path=getappdata(0,'p');
file=getappdata(0,'f');
[a,fs]=audioread(strcat(path,file));
sound(a,fs);
set( handles.text5, 'foregroundColor','red')

% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear sound
set( handles.text5, 'foregroundColor','black')
