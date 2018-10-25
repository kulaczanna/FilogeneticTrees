function varargout = FilogeneticTrees(varargin)
% FILOGENETICTREES MATLAB code for FilogeneticTrees.fig
%      FILOGENETICTREES, by itself, creates a new FILOGENETICTREES or raises the existing
%      singleton*.
%
%      H = FILOGENETICTREES returns the handle to a new FILOGENETICTREES or the handle to
%      the existing singleton*.
%
%      FILOGENETICTREES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILOGENETICTREES.M with the given input arguments.
%
%      FILOGENETICTREES('Property','Value',...) creates a new FILOGENETICTREES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FilogeneticTrees_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FilogeneticTrees_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FilogeneticTrees

% Last Modified by GUIDE v2.5 25-Oct-2018 21:17:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FilogeneticTrees_OpeningFcn, ...
                   'gui_OutputFcn',  @FilogeneticTrees_OutputFcn, ...
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


% --- Executes just before FilogeneticTrees is made visible.
function FilogeneticTrees_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FilogeneticTrees (see VARARGIN)

% Choose default command line output for FilogeneticTrees
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% % UIWAIT makes FilogeneticTrees wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FilogeneticTrees_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function sequenceEditText1_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText1 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText1 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText2_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText2 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText2 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText3_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText3 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText3 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText4_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText4 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText4 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText5_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText5 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText5 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText6_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText6 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText6 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText7_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText7 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText7 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText8_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText8 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText8 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText9_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText9 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText9 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sequenceEditText10_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceEditText10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sequenceEditText10 as text
%        str2double(get(hObject,'String')) returns contents of sequenceEditText10 as a double


% --- Executes during object creation, after setting all properties.
function sequenceEditText10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sequenceEditText10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addSequencePushButton.
function addSequencePushButton_Callback(hObject, eventdata, handles)
% hObject    handle to addSequencePushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1sequenceCheckBox1.
function checkbox1sequenceCheckBox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1sequenceCheckBox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1sequenceCheckBox1


% --- Executes on button press in sequenceCheckBox2.
function sequenceCheckBox2_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox2


% --- Executes on button press in sequenceCheckBox3.
function sequenceCheckBox3_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox3


% --- Executes on button press in sequenceCheckBox4.
function sequenceCheckBox4_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox4


% --- Executes on button press in sequenceCheckBox5.
function sequenceCheckBox5_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox5


% --- Executes on button press in sequenceCheckBox6.
function sequenceCheckBox6_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox6


% --- Executes on button press in sequenceCheckBox7.
function sequenceCheckBox7_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox7


% --- Executes on button press in sequenceCheckBox8.
function sequenceCheckBox8_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox8


% --- Executes on button press in sequenceCheckBox9.
function sequenceCheckBox9_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox9


% --- Executes on button press in sequenceCheckBox10.
function sequenceCheckBox10_Callback(hObject, eventdata, handles)
% hObject    handle to sequenceCheckBox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sequenceCheckBox10


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


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
