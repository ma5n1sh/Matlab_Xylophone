function varargout = ww(varargin)
% WW MATLAB code for ww.fig
%      WW, by itself, creates a new WW or raises the existing
%      singleton*.
%
%      H = WW returns the handle to a new WW or the handle to
%      the existing singleton*.
%
%      WW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WW.M with the given input arguments.
%
%      WW('Property','Value',...) creates a new WW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ww_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ww_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ww

% Last Modified by GUIDE v2.5 23-Apr-2018 12:03:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ww_OpeningFcn, ...
                   'gui_OutputFcn',  @ww_OutputFcn, ...
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


% --- Executes just before ww is made visible.
function ww_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ww (see VARARGIN)

% Choose default command line output for ww
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ww wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ww_OutputFcn(hObject, eventdata, handles) 
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
[a,fs]=audioread('1.wav');
sound(a,fs)