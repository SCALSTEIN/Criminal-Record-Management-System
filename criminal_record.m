function varargout = criminal_record(varargin)
% CRIMINAL_RECORD MATLAB code for criminal_record.fig
%      CRIMINAL_RECORD, by itself, creates a new CRIMINAL_RECORD or raises the existing
%      singleton*.
%
%      H = CRIMINAL_RECORD returns the handle to a new CRIMINAL_RECORD or the handle to
%      the existing singleton*.
%
%      CRIMINAL_RECORD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CRIMINAL_RECORD.M with the given input arguments.
%
%      CRIMINAL_RECORD('Property','Value',...) creates a new CRIMINAL_RECORD or raises the
%      existing singleton*.  Starting from the left, property value pairs
%      are
%      applied to the GUI before criminal_record_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to criminal_record_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help criminal_record

% Last Modified by GUIDE v2.5 13-Jun-2016 08:03:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @criminal_record_OpeningFcn, ...
                   'gui_OutputFcn',  @criminal_record_OutputFcn, ...
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


% --- Executes just before criminal_record is made visible.
function criminal_record_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to criminal_record (see VARARGIN)

% Choose default command line output for criminal_record
handles.output = hObject;
global FileName1 FileName2 FileName3 name id crime det blood cl jl ct rl dt tm health work v4 v5 v6 duration amount sentence v1 v2 v3 fileID im1name im2name im3name names v14 pswd1 pswd2 pswd3 pswd4 search_id PathName im1 im2 im3
FileName1=0;
FileName2=0;
FileName3=0;
name='';
id='';
crime='';
det='';
blood='';
cl='';
jl='';
ct='';
rl='';
dt='';
tm='';
health='';
work='';
v1=1;
v2=1;
v3=1;
v4=1;
v5=1;
v6=1;
v14=1;
duration='';
amount='';
sentence='';
fileID='';
im1name='';
im2name='';
im3name='';
names='';
pswd1='';
pswd2='';
pswd3='';
pswd4='';
search_id='';
PathName='';
im1='';
im2='';
im3='';
set(handles.uipanel6,'visible','off');
set(handles.uipanel7,'visible','off');
set(handles.uipanel8,'visible','off');
set(handles.uipanel9,'visible','off');
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text42,'visible','off');
set(handles.text43,'visible','off');
set(handles.text68,'visible','off');
set(handles.text70, 'visible', 'off');
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit11,'string','');
set(handles.edit12,'string','');
set(handles.edit13,'string','');
set(handles.edit14,'string','');
set(handles.edit15,'string','');
set(handles.edit16,'string','');
set(handles.edit17,'string','');
set(handles.edit18,'string','');
set(handles.edit19,'string','');
set(handles.edit20,'string','');
set(handles.edit21,'string','');
set(handles.edit22,'string','');
set(handles.edit23,'string','');
set(handles.edit24,'string','');
set(handles.edit25,'string','');
set(handles.edit26,'string','');
set(handles.edit28,'string','');
set(handles.edit30,'string','');
set(handles.edit32,'string','');
set(handles.edit37,'string','');
set(handles.edit38,'string','');
set(handles.edit39,'string','');
set(handles.pushbutton20, 'visible', 'off');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes criminal_record wait for user response (see UIRESUME)
% uiwait(handles.axes1);


% --- Outputs from this function are returned to the command line.
function varargout = criminal_record_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%% users login button functions  

function jailer_Callback(hObject, eventdata, handles)
% hObject    handle to jailer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pswd1;
set(handles.text42,'visible','off');
set(handles.text7,'visible','on');
pswd1=passcode('letter');

if (strcmp(pswd1,'jailer')==1)
    set(handles.police,'visible','off');
    set(handles.cbi,'visible','off');
    set(handles.judge,'visible','off');
    set(handles.text5,'visible','on');
    set(handles.text6,'visible','off');
    set(handles.uipanel6,'visible','on');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
    set(handles.pushbutton20, 'visible', 'on');
    set(handles.jailer, 'enable', 'inactive');
else
    set(handles.text5,'visible','off');
    set(handles.text6,'visible','on');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
end


% --- Executes on button press in police.
function police_Callback(hObject, eventdata, handles)
% hObject    handle to police (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pswd2;
set(handles.text42,'visible','off');
set(handles.text7,'visible','on');
pswd2=passcode('letter');

if (strcmp(pswd2,'police')==1)
    set(handles.jailer,'visible','off');
    set(handles.cbi,'visible','off');
    set(handles.judge,'visible','off');
    set(handles.text5,'visible','on');
    set(handles.text6,'visible','off');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','on');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
    set(handles.pushbutton20, 'visible', 'on');
    set(handles.police, 'enable', 'inactive');
else
    set(handles.text5,'visible','off');
    set(handles.text6,'visible','on');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
end

% --- Executes on button press in cbi.
function cbi_Callback(hObject, eventdata, handles)
% hObject    handle to cbi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pswd3;
set(handles.text42,'visible','off');
set(handles.text7,'visible','on');
pswd3=passcode('letter');

if (strcmp(pswd3,'cbi')==1)
    set(handles.jailer,'visible','off');
    set(handles.police,'visible','off');
    set(handles.judge,'visible','off')
    set(handles.text5,'visible','on');
    set(handles.text6,'visible','off');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','on');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
    set(handles.pushbutton20, 'visible', 'on');
    set(handles.cbi, 'enable', 'inactive');
else
    set(handles.text5,'visible','off');
    set(handles.text6,'visible','on');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
end

% --- Executes on button press in judge.
function judge_Callback(hObject, eventdata, handles)
% hObject    handle to judge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pswd4;
set(handles.text42,'visible','off');
set(handles.text7,'visible','on');
pswd4=passcode('letter');

if (strcmp(pswd4,'judge')==1)
    set(handles.jailer,'visible','off');
    set(handles.cbi,'visible','off');
    set(handles.police,'visible','off')
    set(handles.text5,'visible','on');
    set(handles.text6,'visible','off');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','on');
    set(handles.uipanel10,'visible','off');
    set(handles.pushbutton20, 'visible', 'on');
    set(handles.judge, 'enable', 'inactive');
else
    set(handles.text5,'visible','off');
    set(handles.text6,'visible','on');
    set(handles.uipanel6,'visible','off');
    set(handles.uipanel7,'visible','off');
    set(handles.uipanel8,'visible','off');
    set(handles.uipanel9,'visible','off');
    set(handles.uipanel10,'visible','off');
end


%% edit functions starts here [edit5 to edit39]
%% 'register criminal' button- edit functions
function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
global name
name=get(handles.edit5,'string');

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
global id 
id=get(handles.edit6,'string');

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
global det
det=get(handles.edit7,'string');

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
global cl
cl=get(handles.edit11,'string');

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double
global jl
jl=get(handles.edit12,'string');

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double
global ct
ct=get(handles.edit13,'string');

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double

global rl
rl=get(handles.edit14,'string');

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double
global dt
dt=get(handles.edit15,'string');

% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double
global tm 
tm=get(handles.edit16,'string');

% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double
global health 
health=get(handles.edit17,'string');

% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double
global work 
work=get(handles.edit18,'string');

% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% 'update criminal' button- edit functions

function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double
global name
name=get(handles.edit19,'string');

% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double
global id
id=get(handles.edit20,'string');

% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
global det
det=get(handles.edit21,'string');

% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double
global rl
rl=get(handles.edit22,'string');

% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double

global dt
dt=get(handles.edit23,'string');

% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double
global tm
tm=get(handles.edit24,'string');

% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
global health 
health=get(handles.edit25,'string');

% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double
global work 
work=get(handles.edit26,'string');

% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double
global id 
id=get(handles.edit28,'string');

% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double

global search_id
search_id=get(handles.edit30,'string');

% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double

global id 
id=get(handles.edit32,'string');


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double
global cl 
cl=get(handles.edit33,'string');

% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double
global jl 
jl=get(handles.edit34,'string');

% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double

global ct 
ct=get(handles.edit35,'string');

% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double
global id 
id=get(handles.edit37,'string');

% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double

global duration 
duration=get(handles.edit38,'string');

% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double

global amount 

amount=get(handles.edit39,'string');

% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% edit functions end here%%
% --- Executes on button press in jailer.

%% pushbutton functions starts here
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global name id crime v1 det im1name im2name im3name v2 cl jl ct rl dt tm health work
set(handles.uipanel10,'visible','on');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit11,'string','Cell No.');
set(handles.edit12,'string','Jail Name');
set(handles.edit13,'string','City');
set(handles.edit14,'string','Name');
set(handles.edit15,'string','Date');
set(handles.edit16,'string','Time (From-to)');
set(handles.edit17,'string','');
set(handles.edit18,'string','');
set(handles.edit11,'enable','inactive');
set(handles.edit12,'enable','inactive');
set(handles.edit13,'enable','inactive');
set(handles.edit14,'enable','inactive');
set(handles.edit15,'enable','inactive');
set(handles.edit16,'enable','inactive');
name='';
id='';
crime='';
v1=1;
det='';
im1name='';
im2name='';
im3name='';
v2=1;
cl='';
jl='';
ct='';
rl='';
dt='';
tm='';
health='';
work='';


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v3 id name det rl dt tm health work
v3=1;
id='';
name='';
det='';
rl='';
dt='';
tm='';
health='';
work='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','on');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit19,'string','');
set(handles.edit20,'string','');
set(handles.edit21,'string','');
set(handles.edit22,'string','Name');
set(handles.edit23,'string','Date');
set(handles.edit24,'string','Time[From-To]');
set(handles.edit25,'string','');
set(handles.edit26,'string','');
set(handles.edit22,'enable','inactive');
set(handles.edit23,'enable','inactive');
set(handles.edit24,'enable','inactive');
msgbox('Please ensure that the report you are trying to update is not open', 'Warning', 'warn');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v4 blood names im1name im2name im3name search_id v5 v14
v4=1;
v5=1;
v14=1;
blood='';
names={'<Select>'};
im1name='';
im2name='';
im3name='';
search_id='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','on');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text69,'visible','off');
set(handles.edit30,'visible','off');
set(handles.pushbutton16,'visible','off');
set(handles.pushbutton45,'visible','off');
set(handles.popupmenu4, 'Value', 1);
set(handles.popupmenu5,'visible','off');
set(handles.popupmenu14,'visible','off');
set(handles.text31,'visible','off');
set(handles.text33,'visible','off');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global id
id='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','on');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit30,'string','');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v4 blood names im1name im2name im3name search_id
v4=1;
blood='';
names={'<Select>'};
im1name='';
im2name='';
im3name='';
search_id='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','on');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text69,'visible','off');
set(handles.edit30,'visible','off');
set(handles.pushbutton16,'visible','off');
set(handles.pushbutton45,'visible','off');
set(handles.popupmenu4, 'Value', 1);
set(handles.popupmenu5,'visible','off');
set(handles.popupmenu14,'visible','off');
set(handles.text31,'visible','off');
set(handles.text33,'visible','off');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','on');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit30,'string','');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','on');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit32,'string','');
set(handles.edit33,'string','CELL NO.');
set(handles.edit34,'string','JAIL NAME');
set(handles.edit35,'string','CITY');
set(handles.edit35,'enable','inactive');
set(handles.edit34,'enable','inactive');
set(handles.edit33,'enable','inactive');
msgbox('Please ensure that the report you are trying to update is not open', 'Warning', 'warn');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v4 blood names im1name im2name im3name search_id
v4=1;
blood='';
names={'<Select>'};
im1name='';
im2name='';
im3name='';
search_id='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','on');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text69,'visible','off');
set(handles.edit30,'visible','off');
set(handles.pushbutton16,'visible','off');
set(handles.pushbutton45,'visible','off');
set(handles.popupmenu4, 'Value', 1);
set(handles.popupmenu5,'visible','off');
set(handles.popupmenu14,'visible','off');
set(handles.text31,'visible','off');
set(handles.text33,'visible','off');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','on');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit30,'string','');

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global v4 blood names im1name im2name im3name search_id
v4=1;
blood='';
names={'<Select>'};
im1name='';
im2name='';
im3name='';
search_id='';
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','on');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text69,'visible','off');
set(handles.edit30,'visible','off');
set(handles.pushbutton16,'visible','off');
set(handles.pushbutton45,'visible','off');
set(handles.popupmenu4, 'Value', 1);
set(handles.popupmenu5,'visible','off');
set(handles.popupmenu14,'visible','off');
set(handles.text31,'visible','off');
set(handles.text33,'visible','off');

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global id duration amount v6 sentence
id='';
duration='';
amount='';
v6=1;
sentence='';

set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','on');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit37,'string','');
set(handles.edit38,'string','');
set(handles.edit39,'string','');
set(handles.edit37,'visible','on');
set(handles.popupmenu6,'visible','on');
set(handles.text38,'visible','on');
set(handles.text39,'visible','on');
set(handles.edit38,'visible','off');
set(handles.edit39,'visible','off');
set(handles.text40,'visible','off');
set(handles.text41,'visible','off');
msgbox('Please ensure that the report you are trying to update is not open', 'Warning', 'warn');

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global id cl jl ct
id='';
cl='';
jl='';
ct='';

set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','on');
set(handles.uipanel15,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit32,'string','');
set(handles.edit33,'string','CELL NO.');
set(handles.edit34,'string','JAIL NAME');
set(handles.edit35,'string','CITY');
set(handles.edit35,'enable','inactive');
set(handles.edit34,'enable','inactive');
set(handles.edit33,'enable','inactive');
msgbox('Please ensure that the report you are trying to update is not open', 'Warning', 'warn');

%% Finally creating updating searching viewing trnsfer and assign punish button to create and update PDF file
% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global name id crime det blood cl jl ct rl dt tm health work im1name im2name im3name

%% CHECK FOR EXISTING RECORD AND PERFORM VALIDATION
text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');
if(~isempty(strfind(text, id)) && length(id)>=2) % ID exists in RecList
    w = msgbox(strcat(id, ' already exists. Select Update Details or choose another ID'), 'Warning', 'warn');
    id='';
    set(handles.edit6, 'String', '');
    return
end
if(isempty(id))
    w = msgbox('Subject has not been selected', 'Warning', 'warn');
    return
elseif(isempty(regexp(id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
    set(handles.edit6, 'string', '');
    id='';
    return
elseif(isempty(name) || isempty(det) || get(handles.popupmenu1, 'Value')==1 || get(handles.popupmenu2, 'Value')==1)
    w = msgbox('Name, Crime Type, Crime Details and Blood Group cannot be empty', 'Warning', 'warn');
    return
elseif(length(regexp(name, '[A-Za-z .-]'))~=length(name))
    msgbox('The name field can only contain letters, spaces, dots and hyphens');
    set(handles.edit5, 'string', '');
    name='';
    return
elseif(length(regexp(rl, '[A-Za-z .-]'))~=length(rl))
    msgbox('The name of the person to meet can only contain letters, spaces, dots and hyphens');
    set(handles.edit14, 'string', '');
    rl='';
    return    
elseif(isempty(cl) || isempty(jl) || isempty(ct))
    w = msgbox('Criminal must be assigned a location', 'Warning', 'warn');
    return
elseif(isempty(regexp(cl, '^([0-9]+)$')))  
    msgbox('Cell No. can be a number only');
    set(handles.edit11, 'string', '');
    cl='';
    return
elseif(isempty(regexp(jl, '^([A-Za-z ]+)$')))
    msgbox('Jail name can only contain letters and spaces');
    set(handles.edit12, 'string', '');
    jl='';
    return
elseif(isempty(regexp(ct, '^([A-Za-z ]+)$')))
    msgbox('City name can only contain letters and spaces');
    set(handles.edit13, 'string', '');
    ct='';
    return
elseif(isempty(im1name) || isempty(im2name) || isempty(im3name))
    w = msgbox('All images have not been uploaded', 'Warning', 'warn');
    return
elseif((~isempty(rl) && (isempty(dt) || isempty(tm))) || (~isempty(dt) && (isempty(rl) || isempty(tm))) || (~isempty(tm) && (isempty(dt) || isempty(rl))))
    w = msgbox('Either enter all details on MEETING or leave fields empty', 'Warning', 'warn');
    rl='';
    dt='';
    tm='';
    set(handles.edit14, 'string', '');
    set(handles.edit15, 'string', '');
    set(handles.edit16, 'string', '');
    return
elseif(isempty(regexp(dt, '(^(((0[1-9]|1[0-9]|2[0-8])[\/](0[1-9]|1[012]))|((29|30|31)[\/](0[13578]|1[02]))|((29|30)[\/](0[4,6,9]|11)))[\/](19|[2-9][0-9])\d\d$)|(^29[\/]02[\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)')))  
    msgbox('Valid dates exist between the year 1900 to 9999 and follow the format dd/mm/yyyy or dd\mm\yyyy');
    set(handles.edit15, 'string', '');
    dt='';
    return
elseif(isempty(regexp(tm, '(^(0[1-9]|1[0-2]):[0-5][0-9][ap]m-(0[1-9]|1[0-2]):[0-5][0-9][ap]m$)')))  
    msgbox('Valid time follows the format hh:mmam-hh:mmpm or hh:mmam-hh:mmam etc e.g. 09:00am-01:00pm');
    set(handles.edit16, 'string', '');
    tm='';
    return
end

msgbox('Processing... Please wait...', 'warning', 'warn');

%% Start Microsoft Word

wrd = actxserver('word.application');
set(wrd,'Visible', 0);
wrd.Application.DisplayAlerts = false; % Prevent activation message from popping up and interfering with save
wrdDoc = wrd.Documents.Add;
wrd.Selection.TypeText(['Name' char(9) char(9) ':' char(9) name]);
wrd.Selection.TypeText(sprintf('\n%s', ['ID' char(9) char(9) ':' char(9) id]));
wrd.Selection.TypeText(sprintf('\n%s', ['Crime' char(9) char(9) ':' char(9) crime]));
wrd.Selection.TypeText(sprintf('\n%s\n\n', ['Details' char(9) char(9) ':' char(9) det]));

im1_jpg= imread(im1name);
imwrite(im1_jpg, 'C:\Users\Public\Documents\disp.jpg');
face   = wrd.Selection.InlineShapes.AddPicture('C:\Users\Public\Documents\disp.jpg');
finger = wrd.Selection.InlineShapes.AddPicture(im2name);
iris   = wrd.Selection.InlineShapes.AddPicture(im3name);
set(face, 'ScaleHeight', 95, 'ScaleWidth', 95);
set(finger, 'ScaleHeight', 25, 'ScaleWidth', 30);
set(iris, 'ScaleHeight', 40, 'ScaleWidth', 40);
wrd.Selection.TypeText(sprintf('\n\n%s', ['Blood Group' char(9) ':' char(9) blood]));
wrd.Selection.TypeText(sprintf('\n%s', ['Location' char(9) ':' char(9) cl ', ' jl ', ' ct]));
if(~isempty(rl) && ~isempty(dt) && ~isempty(tm))
    wrd.Selection.TypeText(sprintf('\n%s', ['Meeting' char(9) ':' char(9) 'with ' rl ' on ' dt ' from ' tm]));
end
if(~isempty(health))
    wrd.Selection.TypeText(sprintf('\n%s', ['Health Record' char(9) ':' char(9) health]));
end
if(~isempty(work))
    wrd.Selection.TypeText(sprintf('\n%s', ['Work Assigned' char(9) ':' char(9) work]));
end
wrd.Selection.TypeText(sprintf('\n%s', ['Jailer Name:' char(9) char(9) char(9) char(9) char(9) char(9) char(9) char(9) 'Signature:']));

FileName = strcat('C:\Users\Public\Documents\CriminalReports\', id);
wrdDoc.SaveAs2(strcat(FileName, '.doc'));
wrdFile = wrd.Documents.Open(strcat(FileName, '.doc'));
fileattrib(strcat(FileName, '.doc'), '-w +s +h'); % Disallow write access to file; also make it a system file (generates warning for rename, move and permanent deletion) and hidden file
wrdFile.SaveAs2(strcat(FileName, '.pdf'),17);
fileattrib(strcat(FileName, '.pdf'), '-w +s'); % PDF must be visible
wrdFile.Close;
wrd.Quit();

fileattrib('C:\Users\Public\Documents\CriminalReports\RecList.txt', '+w');
fileID=fopen('C:\Users\Public\Documents\CriminalReports\RecList.txt', 'a'); % Add to Record List of IDs
fprintf(fileID, '%s\r\n', id);
fclose(fileID);
fileattrib('C:\Users\Public\Documents\CriminalReports\RecList.txt', '-w');

set(handles.text7, 'visible', 'off');
set(handles.text43,'visible','on');
delete('C:\Users\Public\Documents\disp.jpg');
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit11,'string','');
set(handles.edit12,'string','');
set(handles.edit13,'string','');
set(handles.edit14,'string','');
set(handles.edit15,'string','');
set(handles.edit16,'string','');
set(handles.edit17,'string','');
set(handles.edit18,'string','');
set(handles.popupmenu1, 'Value', 1);
set(handles.popupmenu2, 'Value', 1);

pause(2);
set(handles.text43,'visible','off');
set(handles.text7,'visible','on');

name='';
id='';
crime='';
det='';
blood='';
cl='';
jl='';
ct='';
rl='';
dt='';
tm='';
health='';
work='';
im1name='';
im2name='';
im3name='';


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global name id v3 crime det rl dt tm health work
%% CHECK FOR EXISTING RECORD AND PERFORM VALIDATION
text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');

if(isempty(id))
    w = msgbox('Subject has not been selected', 'Warning', 'warn');
    return
elseif(isempty(regexp(id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
    set(handles.edit20, 'string', '');
    id='';
    return
elseif(isempty(name) || isempty(det) || v3==1)
    w = msgbox('Name, Crime Type and Crime Details cannot be empty', 'Warning', 'warn');
    return
elseif(length(regexp(name, '[A-Za-z .-]'))~=length(name))
    msgbox('The name field can only contain letters, spaces, dots and hyphens');
    set(handles.edit19, 'string', '');
    name='';
    return
elseif((~isempty(rl) && (isempty(dt) || isempty(tm))) || (~isempty(dt) && (isempty(rl) || isempty(tm))) || (~isempty(tm) && (isempty(dt) || isempty(rl))))
    w = msgbox('Either enter all details on MEETING or leave fields empty', 'Warning', 'warn');
    rl='';
    dt='';
    tm='';
    set(handles.edit22, 'string', '');
    set(handles.edit23, 'string', '');
    set(handles.edit24, 'string', '');
    return
elseif(length(regexp(rl, '[A-Za-z .-]'))~=length(rl))
    msgbox('The name of the person to meet can only contain letters, spaces, dots and hyphens');
    set(handles.edit22, 'string', '');
    rl='';
    return    
elseif(isempty(regexp(dt, '(^(((0[1-9]|1[0-9]|2[0-8])[\/](0[1-9]|1[012]))|((29|30|31)[\/](0[13578]|1[02]))|((29|30)[\/](0[4,6,9]|11)))[\/](19|[2-9][0-9])\d\d$)|(^29[\/]02[\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)')))  
    msgbox('Valid dates exist between the year 1900 to 9999 and follow the format dd/mm/yyyy or dd\mm\yyyy');
    set(handles.edit23, 'string', '');
    dt='';
    return
elseif(isempty(regexp(tm, '(^(0[1-9]|1[0-2]):[0-5][0-9][ap]m-(0[1-9]|1[0-2]):[0-5][0-9][ap]m$)')))  
    msgbox('Valid time follows the format hh:mmam-hh:mmpm or hh:mmam-hh:mmam etc e.g. 09:00am-01:00pm');
    set(handles.edit24, 'string', '');
    tm='';
    return
end

if(~isempty(strfind(text, id)) && length(id)>=2) % ID exists in RecList
    msgbox('Processing... Please wait...', 'warning', 'warn');
    %% Start Microsoft Word
    FileName=strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrd = actxserver('word.application');
    set(wrd,'Visible',0);
    wrd.Application.DisplayAlerts = false; % Prevent activation message from popping up and interfering with save
    wrdFile=wrd.Documents.Open(strcat(FileName, '.doc'));

    end_of_doc = get(wrd.activedocument.content,'end');
    set(wrd.application.selection,'Start',end_of_doc);

    wrd.Selection.TypeText(sprintf('\n\n%s\n', '........................................................................................................................................................................'));
    wrd.Selection.TypeText(['Name' char(9) char(9) ':' char(9) name]);
    wrd.Selection.TypeText(sprintf('\n%s', ['ID' char(9) char(9) ':' char(9) id]));
    wrd.Selection.TypeText(sprintf('\n%s', ['Crime' char(9) char(9) ':' char(9) crime]));
    wrd.Selection.TypeText(sprintf('\n%s\n\n', ['Details' char(9) char(9) ':' char(9) det]));
    if(~isempty(rl) && ~isempty(dt) && ~isempty(tm))
        wrd.Selection.TypeText(sprintf('\n%s', ['Meeting' char(9) ':' char(9) 'with ' rl ' on ' dt ' from ' tm]));
    end
    if(~isempty(health))
        wrd.Selection.TypeText(sprintf('\n%s', ['Health Record' char(9) ':' char(9) health]));
    end
    if(~isempty(work))
        wrd.Selection.TypeText(sprintf('\n%s', ['Work Assigned' char(9) ':' char(9) work]));
    end
    wrd.Selection.TypeText(sprintf('\n%s', ['Jailer Name:' char(9) char(9) char(9) char(9) char(9) char(9) char(9) char(9) 'Signature:']));

    FileName = strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrdFile.SaveAs2(strcat(FileName, '_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '+w -s -h');
    delete(strcat(FileName,'.doc'));
    delete(strcat(FileName,'.pdf'));
    wrdFile.SaveAs2(strcat(FileName, '.doc'));
    delete(strcat(FileName,'_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '-w +s +h'); % Disallow write access to file
    wrdFile.SaveAs2(strcat(FileName, '.pdf'),17);
    wrdFile.Close;
    wrd.Quit();

    set(handles.text7, 'visible', 'off');
    set(handles.text70, 'visible', 'on');
    set(handles.edit19,'string','');
    set(handles.edit20,'string','');
    set(handles.popupmenu3,'value',1);
    set(handles.edit21,'string','');
    set(handles.edit22,'string','');
    set(handles.edit23,'string','');
    set(handles.edit24,'string','');
    set(handles.edit25,'string','');
    set(handles.edit26,'string','');
    pause(2);
    set(handles.text70, 'visible', 'off');
    set(handles.text7, 'visible', 'on');
else
    w = msgbox(strcat(id, ' does not exist. Please register a new record first'), 'Warning', 'warn');
    id='';
    set(handles.edit20, 'String', '');
    return
end

name='';
id='';
crime='';
det='';
rl='';
dt='';
tm='';
health='';
work='';

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global id
text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');
if strcmp(id, '')==1
    w = msgbox('Please enter a valid ID to display record', 'Warning', 'warn');
elseif(isempty(regexp(id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
elseif(~isempty(strfind(text, id)) && length(id)>=2) % ID exists in RecList
    open(strcat('C:\Users\Public\Documents\CriminalReports\', id, '.pdf'));
    set(handles.text7,'visible','off');
    set(handles.text68,'visible','on');
    pause(2);
    set(handles.text68,'visible','off');
    set(handles.text7,'visible','on');
else
    w = msgbox(strcat(id, ' does not exist in the Database'), 'Warning', 'warn');
end
set(handles.edit28, 'string', '');
id='';

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v4 im1name im2name im3name
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
if v4==3 % Face
    [FileName,PathName] = uigetfile('C:\Users\Public\Documents\CriminalReports\*.pgm','Select the IMAGE file');
    if FileName == 0
        w = msgbox('The face must be uploaded for search', 'Warning', 'warn');
        return
    end
    set(handles.uipanel16,'visible','on');
    set(handles.axes1,'visible','on');
    set(handles.axes2,'visible','off');
    set(handles.axes3,'visible','off');
    im1name=strcat(PathName,FileName);
    im1=imread(im1name);
    axes(handles.axes1);
    imshow(im1);
elseif v4==4 % Fingerprint
    [FileName,PathName] = uigetfile('C:\Users\Public\Documents\CriminalReports\*.tif','Select the IMAGE file');
    if FileName == 0
        w = msgbox('The fingerprint must be uploaded for search', 'Warning', 'warn');
        return
    end
    set(handles.uipanel16,'visible','on');
    set(handles.axes1,'visible','off');
    set(handles.axes2,'visible','on');
    set(handles.axes3,'visible','off');
    im2name=strcat(PathName,FileName);
    im2=imread(im2name);
    axes(handles.axes2);
    imshow(im2);
elseif v4==5 % Iris
    [FileName,PathName] = uigetfile('C:\Users\Public\Documents\CriminalReports\*.bmp','Select the IMAGE file');
    if FileName == 0
        w = msgbox('The iris must be uploaded for search', 'Warning', 'warn');
        return
    end
    set(handles.uipanel16,'visible','on');
    set(handles.axes1,'visible','off');
    set(handles.axes2,'visible','off');
    set(handles.axes3,'visible','on');
    im3name=strcat(PathName,FileName);
    im3=imread(im3name);
    axes(handles.axes3);
    imshow(im3);
end

% --- Executes on key press with focus on pushbutton16 and none of its controls.
function pushbutton16_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global v4 search_id names blood v5 im1name im2name im3name id

set(handles.popupmenu4, 'value', 1);
set(handles.edit30, 'string', '');
set(handles.text31, 'visible', 'off');
set(handles.edit30, 'visible', 'off');

if v4==1
    w = msgbox('Please choose a valid search criteria', 'Warning', 'warn');
elseif v4==2 %id2 face3 fingerprint4 iris5 blood6
    text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');
    if strcmp(search_id, '')==1
    w = msgbox('Please enter a valid ID to display record', 'Warning', 'warn');
    elseif(isempty(regexp(search_id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
    elseif(~isempty(strfind(text, search_id)) && length(search_id)>=2) % ID exists in RecList
        open(strcat('C:\Users\Public\Documents\CriminalReports\', search_id, '.pdf'));
        set(handles.text7,'visible','off');
        set(handles.text68,'visible','on');
        pause(2);
        set(handles.text68,'visible','off');
        set(handles.text7,'visible','on');
    else
        w = msgbox(strcat(search_id, ' does not exist in the Database'), 'Warning', 'warn');
    end
    search_id='';
elseif v4==3
    if strcmp(im1name, '')==1
        w = msgbox('Please upload a face first', 'Warning', 'warn'); 
        return;
    end
    cellarr=strsplit(im1name, '\');
    search_para=[cellarr{6} '/' cellarr{7}];
    match=face_recognition(search_para);
    match_cell=strsplit(match, '/');
    open(strcat('C:\Users\Public\Documents\CriminalReports\', match_cell{1}, '.pdf'));
    im1name='';

elseif v4==4
    if strcmp(im2name, '')==1
        w = msgbox('Please upload a fingerprint first', 'Warning', 'warn'); 
        return;
    end
    disp(im2name);
    cellarr=strsplit(im2name, '\');
    match=main_total(cellarr{7});
    match_subj=['s' num2str((str2double(match(2:3))))];
    open(strcat('C:\Users\Public\Documents\CriminalReports\', match_subj, '.pdf'));
    im2name='';

elseif v4==5
    if strcmp(im3name, '')==1
        w = msgbox('Please upload an iris first', 'Warning', 'warn'); 
        return;
    end
    cellarr=strsplit(im3name, '\');
    search_para=[cellarr{6} '/' cellarr{7}(strfind(cellarr{7}, '0')+1:strfind(cellarr{7},'_')-1) '.bmp'];
    match=iris_recognition(search_para);
    match_cell=strsplit(match, '/');
    open(strcat('C:\Users\Public\Documents\CriminalReports\', match_cell{1}, '.pdf'));
    im3name='';

elseif v4==6
    if v5 == 1
        w = msgbox('Please choose a valid blood group', 'Warning', 'warn');
        return
    end    
    set(handles.text33,'visible','off');
    set(handles.popupmenu5,'visible','off');
    set(handles.text69,'visible','on');
    set(handles.pushbutton17,'visible','off');
    set(handles.pushbutton45,'visible','on');
    fileName=strcat('C:\Users\Public\Documents\CriminalReports\', blood, '.txt');
    fileID=fopen(fileName, 'rt');
    assert(fileID ~= -1, 'Could not read: %s', fileName);
    lines=0;
    while ~feof(fileID)
        lines=lines+sum(fread(fileID, 16382, 'char')==char(10));
    end
    fclose(fileID);
    fileID=fopen(fileName);
    tline=fgetl(fileID);
    names=cell(lines+1,1);
    names{1}='<Select>';
    for i=2:lines+1
        names{i}=tline;
        tline=fgetl(fileID);
    end
    fclose(fileID);
    set(handles.popupmenu14,'string', names);
    set(handles.popupmenu14,'visible','on');
    
end
v4=1;
search_id='';
id='';
    

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% CHECK FOR EXISTING RECORD AND PERFORM VALIDATION
global id cl jl ct

text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');

if(isempty(id))
    w = msgbox('Subject has not been selected', 'Warning', 'warn');
    return
elseif(isempty(regexp(id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
    set(handles.edit32, 'string','');
    id='';
    return
elseif(isempty(strfind(text, id)) && length(id)>=2) % ID does not exist in RecList
    w = msgbox(strcat(id, ' does not exist. Please register a new record first'), 'Warning', 'warn');
    set(handles.edit32, 'string','');
    id='';
    return
elseif(isempty(cl) || isempty(jl) || isempty(ct))
    w = msgbox('Criminal must be assigned a location', 'Warning', 'warn');
    return
elseif(isempty(regexp(cl, '^([0-9]+)$')))  
    msgbox('Cell No. can be a number only');
    set(handles.edit33, 'string','');
    cell='';
    return
elseif(isempty(regexp(jl, '^([A-Za-z ]+)$')))
    msgbox('Jail name can only contain letters and spaces');
    set(handles.edit34, 'string','');
    jl='';
    return
elseif(isempty(regexp(ct, '^([A-Za-z ]+)$')))
    msgbox('City name can only contain letters and spaces');
    set(handles.edit35, 'string','');
    ct='';
    return
end

if(~isempty(strfind(text, id)) && length(id)>=2) % ID exists in RecList
    %% Start Microsoft Word
    FileName=strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrd = actxserver('word.application');
    set(wrd,'Visible',0);
    wrd.Application.DisplayAlerts = false; % Prevent activation message from popping up and interfering with save
    wrdFile=wrd.Documents.Open(strcat(FileName, '.doc'));

    end_of_doc = get(wrd.activedocument.content,'end');
    set(wrd.application.selection,'Start',end_of_doc);

    wrd.Selection.TypeText(sprintf('\n\n%s\n', '........................................................................................................................................................................'));
    wrd.Selection.TypeText(sprintf('\n%s\n\n', ['Location' char(9) ':' char(9) cl ', ' jl ', ' ct]));
    wrd.Selection.TypeText(sprintf('\n%s', ['Jailer Name:' char(9) char(9) char(9) char(9) char(9) char(9) char(9) char(9) 'Signature:']));

    FileName = strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrdFile.SaveAs2(strcat(FileName, '_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '+w -s -h');
    delete(strcat(FileName,'.doc'));
    delete(strcat(FileName,'.pdf'));
    wrdFile.SaveAs2(strcat(FileName, '.doc'));
    delete(strcat(FileName,'_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '-w +s +h'); % Disallow write access to file
    wrdFile.SaveAs2(strcat(FileName, '.pdf'),17);
    wrdFile.Close;
    wrd.Quit();

    set(handles.text7, 'visible', 'off');
    set(handles.text70, 'visible', 'on');
    pause(2);
    set(handles.text70, 'visible', 'off');
    set(handles.text7, 'visible', 'on');
else
    w = msgbox(strcat(id, ' does not exist. Please register a new record first'), 'Warning', 'warn');
    id='';
    set(handles.edit20, 'String', '');
    return
end

id='';
cl='';
jl='';
ct='';
set(handles.edit32,'string','');
set(handles.edit33,'string','');
set(handles.edit34,'string','');
set(handles.edit35,'string','');



% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global id duration amount sentence v6

text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');

if(isempty(id))
    w = msgbox('Subject has not been selected', 'Warning', 'warn');
    return
elseif(isempty(regexp(id, '^(s[0-9]+)$')))  
    msgbox('Valid IDs can be "s" followed by a number only');
    set(handles.edit37, 'string', '');
    id='';
    return
elseif(isempty(strfind(text, id)) && length(id)>=2) % ID does not exist in RecList
    w = msgbox(strcat(id, ' does not exist. Please register a new record first'), 'Warning', 'warn');
    set(handles.edit37, 'string','');
    id='';
    return
elseif(isempty(amount) && (v6==3 || v6==4))
    w = msgbox('Fine amount must be specified', 'Warning', 'warn');
    return
elseif(isempty(regexp(amount, '^([0-9]+)$')) && (v6==3 || v6==4))  
    msgbox('Fine amount can be a number only');
    set(handles.edit39, 'string', '');
    amount='';
    return
elseif(isempty(duration) && (v6==2 || v6==5 || v6==6 || v6==7))
    w = msgbox('Duration of sentence must be specified', 'Warning', 'warn');
    return
elseif(isempty(regexp(duration, '^([0-9]+)$')) && (v6==2 || v6==5 || v6==6 || v6==7))  
    msgbox('Duration can be a number only');
    set(handles.edit38, 'string', '');
    duration='';
    return    
elseif(v6==1)
    w = msgbox('Please assign a valid sentence', 'Warning', 'warn');
    return
end

if(~isempty(strfind(text, id)) && length(id)>=2) % ID exists in RecList
    %% Start Microsoft Word
    FileName=strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrd = actxserver('word.application');
    set(wrd,'Visible',0);
    wrd.Application.DisplayAlerts = false; % Prevent activation message from popping up and interfering with save
    wrdFile=wrd.Documents.Open(strcat(FileName, '.doc'));

    end_of_doc = get(wrd.activedocument.content,'end');
    set(wrd.application.selection,'Start',end_of_doc);

    wrd.Selection.TypeText(sprintf('\n\n%s\n', '........................................................................................................................................................................'));
    if(v6==2 || v6==5 || v6==6 || v6==7)
        wrd.Selection.TypeText(sprintf('\n%s\n\n', ['Sentence' char(9) ' : ' char(9) sentence ' for ' duration ' years']));
    elseif(v6==3 || v6==4)
        wrd.Selection.TypeText(sprintf('\n%s\n\n', ['Sentence' char(9) ' : ' char(9) sentence ' for ' ' Rs. ' amount]));
    end
    wrd.Selection.TypeText(sprintf('\n%s', ['Jailer Name:' char(9) char(9) char(9) char(9) char(9) char(9) char(9) char(9) 'Signature:']));

    FileName = strcat('C:\Users\Public\Documents\CriminalReports\', id);
    wrdFile.SaveAs2(strcat(FileName, '_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '+w -s -h');
    delete(strcat(FileName,'.doc'));
    delete(strcat(FileName,'.pdf'));
    wrdFile.SaveAs2(strcat(FileName, '.doc'));
    delete(strcat(FileName,'_1.doc'));
    fileattrib(strcat(FileName, '.doc'), '-w +s +h'); % Disallow write access to file
    wrdFile.SaveAs2(strcat(FileName, '.pdf'),17);
    wrdFile.Close;
    wrd.Quit();

    set(handles.text7, 'visible', 'off');
    set(handles.text70, 'visible', 'on');
    pause(2);
    set(handles.text70, 'visible', 'off');
    set(handles.text7, 'visible', 'on');
else
    w = msgbox(strcat(id, ' does not exist. Please register a new record first'), 'Warning', 'warn');
    id='';
    set(handles.edit20, 'String', '');
    return
end

id='';
duration='';
amount='';
sentence='';
set(handles.edit37,'string','');
set(handles.edit38,'string','');
set(handles.edit39,'string','');
set(handles.popupmenu6,'value',1);


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel6,'visible','off');
set(handles.uipanel7,'visible','off');
set(handles.uipanel8,'visible','off');
set(handles.uipanel9,'visible','off');
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','off');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.text42,'visible','on');
set(handles.text7,'visible','off');
set(handles.jailer, 'visible', 'on');
set(handles.police, 'visible', 'on');
set(handles.cbi, 'visible', 'on');
set(handles.judge, 'visible', 'on');
set(handles.pushbutton20, 'visible', 'off');
set(handles.jailer, 'enable', 'on');
set(handles.police, 'enable', 'on');
set(handles.cbi, 'enable', 'on');
set(handles.judge, 'enable', 'on');

set(handles.edit5,'string','');
set(handles.edit6,'string','');
set(handles.edit7,'string','');
set(handles.edit17,'string','');
set(handles.edit18,'string','');

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im1 im1name PathName id FileName1 FileName2 FileName3
corr_path = strcat('C:\Users\Public\Documents\CriminalReports\', id, '\');
[FileName1,PathName] = uigetfile(strcat(corr_path, '*.pgm'),'Select the IMAGE file');
if FileName1 == 0
    w = msgbox('The corresponding photo must be uploaded', 'Warning', 'warn');
    return
elseif strcmp(PathName, corr_path) == 0
    w = msgbox(strcat('Cannot upload image. Face must belong to :-',id), 'Warning', 'warn');
    return
end
set(handles.uipanel16,'visible','on');
if FileName2 == 0
    set(handles.axes2,'visible','off');
end
if FileName3 == 0
    set(handles.axes3,'visible','off');
end
im1name=strcat(PathName,FileName1);
im1=imread(im1name);
axes(handles.axes1);
imshow(im1);

% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2 im2name PathName id FileName1 FileName2 FileName3
corr_path = strcat('C:\Users\Public\Documents\CriminalReports\', id, '\');
[FileName2,PathName] = uigetfile(strcat(corr_path, '*.tif'),'Select the IMAGE file');
if strcmp(PathName, corr_path) == 0
    w = msgbox(strcat('Cannot upload image. Fingerprint must belong to :-',id), 'Warning', 'warn');
    return
end
set(handles.uipanel16,'visible','on');
if FileName1 == 0
    set(handles.axes1,'visible','off');
end
if FileName3 == 0
    set(handles.axes3,'visible','off');
end
im2name=strcat(PathName,FileName2);
im2=imread(im2name);
axes(handles.axes2);
imshow(im2);

% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im3 im3name PathName id FileName1 FileName2 FileName3
corr_path = strcat('C:\Users\Public\Documents\CriminalReports\', id, '\');
[FileName3,PathName] = uigetfile(strcat(corr_path, '*.bmp'),'Select the IMAGE file');
if strcmp(PathName, corr_path) == 0
    w = msgbox(strcat('Cannot upload image. Iris must belong to :-',id), 'Warning', 'warn');
    return
end
set(handles.uipanel16,'visible','on');
if FileName1 == 0
    set(handles.axes1,'visible','off');
end
if FileName2 == 0
    set(handles.axes2,'visible','off');
end
im3name=strcat(PathName,FileName3);
im3=imread(im3name);
axes(handles.axes3)
imshow(im3);

%% popupmenu functions starts here 
% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
global crime v1
v1 = get(handles.popupmenu1,'Value'); %get currently selected option from menu
if v1 == 2
   crime='Theft';
elseif v1 == 3
   crime='Murder';
elseif v1 == 4
   crime='Kidnapping';
elseif v1 == 5
   crime='Robbery';
elseif v1 == 6
   crime='Others';
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
global  blood v2 id
text=fileread('C:\Users\Public\Documents\CriminalReports\RecList.txt');
v2 = get(handles.popupmenu2,'Value'); %get currently selected option from menu
if v2 == 2
   blood='A+';
elseif v2 == 3
   blood='A-';
elseif v2 == 4
   blood='B+';
elseif v2 == 5
   blood='B-';
elseif v2 == 6
   blood='O+';
elseif v2 == 7
   blood='O-';
elseif v2 == 8
   blood='AB+';
elseif v2 == 9
   blood='AB-';
end
if(~isempty(regexp(id, '^(s[0-9]+)$')) && isempty(strfind(text, id)) && length(id)>=2)   %  ID is valid and new
fileName=strcat('C:\Users\Public\Documents\CriminalReports\', blood, '.txt');
fileattrib(fileName, '+w');
fileID=fopen(fileName, 'a'); % Add to Record List of Blood Group
fprintf(fileID, '%s\r\n', id);
fclose(fileID);
fileattrib(fileName, '-w'); % Prevent write access to folder and its contents
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
global crime v3
v3 = get(handles.popupmenu3,'Value'); %get currently selected option from menu
if v3 == 2
   crime='Theft';
elseif v3 == 3
   crime='Murder';
elseif v3 == 4
   crime='Kidnapping';
elseif v3 == 5
   crime='Robbery';
elseif v3 == 6
   crime='Others';
end

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4
global v4 v5 names v14
v4 = get(handles.popupmenu4,'Value'); %get currently selected option from menu
set(handles.uipanel16,'visible','off');
if v4 == 1
    set(handles.text31,'visible','off');
    set(handles.edit30,'visible','off');
    set(handles.pushbutton16,'visible','off');
    set(handles.pushbutton17,'visible','on');
    set(handles.pushbutton45,'visible','off');
    set(handles.text33,'visible','off');
    set(handles.popupmenu5,'visible','off');
    set(handles.popupmenu14,'visible','off');
    set(handles.text69,'visible','off');
    return
elseif v4 == 2
    set(handles.text31,'visible','on');
    set(handles.edit30,'visible','on');
    set(handles.pushbutton16,'visible','off');
    set(handles.pushbutton17,'visible','on');
    set(handles.pushbutton45,'visible','off');
    set(handles.text33,'visible','off');
    set(handles.popupmenu5,'visible','off');    
    set(handles.popupmenu14,'visible','off');
    set(handles.text69,'visible','off');
elseif v4 == 3 || v4 == 4 || v4==5
    set(handles.text31,'visible','off');
    set(handles.edit30,'visible','off');
    set(handles.pushbutton16,'visible','on');
    set(handles.pushbutton17,'visible','on');
    set(handles.pushbutton45,'visible','off');
    set(handles.text33,'visible','off');
    set(handles.popupmenu5,'visible','off');    
    set(handles.popupmenu14,'visible','off');
    set(handles.text69,'visible','off');
elseif v4 == 6
    set(handles.popupmenu5, 'Value', 1);
    v5=1;
    names={'<Select>'};
    v14=1;
    set(handles.text31,'visible','off');
    set(handles.edit30,'visible','off');
    set(handles.pushbutton16,'visible','off');
    set(handles.pushbutton17,'visible','on');
    set(handles.pushbutton45,'visible','off');
    set(handles.text33,'visible','on');
    set(handles.popupmenu5,'visible','on');    
    set(handles.popupmenu14,'visible','off');
    set(handles.text69,'visible','off');
end

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5
global blood v5
v5 = get(handles.popupmenu5,'Value'); %get currently selected option from menu
if v5 == 2
   blood='A+';
elseif v5 == 3
   blood='A-';
elseif v5 == 4
   blood='B+';
elseif v5 == 5
   blood='B-';
elseif v5 == 6
   blood='O+';
elseif v5 == 7
   blood='O-';
elseif v5 == 8
   blood='AB+';
elseif v5 == 9
   blood='AB-';
end


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6
global sentence v6
v6 = get(handles.popupmenu6,'Value'); %get currently selected option from menu
if v6 == 2
   sentence='Probation';
   set(handles.edit38, 'visible', 'on');
   set(handles.text40, 'visible', 'on');
   set(handles.edit39, 'visible', 'off');
   set(handles.text41, 'visible', 'off');
elseif v6 == 3
   sentence='Fine';
   set(handles.edit38, 'visible', 'off');
   set(handles.text40, 'visible', 'off');
   set(handles.edit39, 'visible', 'on');
   set(handles.text41, 'visible', 'on');
elseif v6 == 4
   sentence='Restitution';
   set(handles.edit38, 'visible', 'off');
   set(handles.text40, 'visible', 'off');
   set(handles.edit39, 'visible', 'on');
   set(handles.text41, 'visible', 'on');
elseif v6 == 5
   sentence='Parole';
   set(handles.edit38, 'visible', 'on');
   set(handles.text40, 'visible', 'on');
   set(handles.edit39, 'visible', 'off');
   set(handles.text41, 'visible', 'off');
elseif v6 == 6
   sentence='Life Imprisonment';
   set(handles.edit38, 'visible', 'on');
   set(handles.text40, 'visible', 'on');
   set(handles.edit39, 'visible', 'off');
   set(handles.text41, 'visible', 'off');
elseif v6 == 7
   set(handles.edit38, 'visible', 'on');
   set(handles.text40, 'visible', 'on');
   set(handles.edit39, 'visible', 'off');
   set(handles.text41, 'visible', 'off');
end


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit35.
function edit35_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control (Blink cursor in edit box)
uicontrol(handles.edit35);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit22.
function edit22_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit22);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit23.
function edit23_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit23);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit24.
function edit24_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit24);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit11.
function edit11_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit11);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit12.
function edit12_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit12);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit13.
function edit13_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit13);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit14.
function edit14_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit14);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit15.
function edit15_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit15);
msgbox('Please follow dd/mm/yyyy format', 'Warning', 'warn');


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit16.
function edit16_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit16);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit33.
function edit33_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit33);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit34.
function edit34_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Toggle the "Enable" state (inactive) to ON and clear box
set(hObject, 'Enable', 'On');
set(hObject,'string','');
% Create UI control
uicontrol(handles.edit34);


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14
global v14
v14 = get(handles.popupmenu14,'Value');
    

% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global names v14
if length(names)==1 % Only '<Select>' field available
    w = msgbox('No record with this blood group', 'Warning', 'warn');
    return
elseif v14==1
    w = msgbox('Please select a valid file', 'Warning', 'warn');
    return
else
    open(strcat('C:\Users\Public\Documents\CriminalReports\', names{v14}, '.pdf'));
    set(handles.text7,'visible','off');
    set(handles.text68,'visible','on');
    pause(2);
    set(handles.text68,'visible','off');
    set(handles.text7,'visible','on');
end


% --- Executes during object creation, after setting all properties.
function text20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel10,'visible','off');
set(handles.uipanel11,'visible','off');
set(handles.uipanel12,'visible','on');
set(handles.uipanel13,'visible','off');
set(handles.uipanel14,'visible','off');
set(handles.uipanel15,'visible','off');
set(handles.uipanel16,'visible','off');
set(handles.text5,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit30,'string','');
