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

% Last Modified by GUIDE v2.5 08-Dec-2018 18:06:03

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

global lengthMatrixTable; 
global subNum;
subNum = 1;
lengthMatrixTable = uitable('ColumnName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(lengthMatrixTable, 'RowName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(lengthMatrixTable, 'Position', [10 10 486 203])
set(lengthMatrixTable, 'FontUnits', 'Normalized');
set(lengthMatrixTable, 'ColumnWidth', {45});
drawnow;

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


% --- Executes on button press in compareSequenceBtn.
function compareSequenceBtn_Callback(hObject, eventdata, handles)
% hObject    handle to compareSequenceBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global lengthMatrixTable;
global distanceMatrix;
sequence1 = get(handles.sequenceEditText1,'String');
sequence2 = get(handles.sequenceEditText2,'String');
sequence3 = get(handles.sequenceEditText3,'String');
sequence4 = get(handles.sequenceEditText4,'String');
sequence5 = get(handles.sequenceEditText5,'String');
sequence6 = get(handles.sequenceEditText6,'String');
sequence7 = get(handles.sequenceEditText7,'String');
sequence8 = get(handles.sequenceEditText8,'String');
sequence9 = get(handles.sequenceEditText9,'String');
sequence10 = get(handles.sequenceEditText10,'String');   % b��d jak s� dwie identyczne sekwencje


sequences = [sequence1; sequence2; sequence3; sequence4; ...
    sequence5; sequence6; sequence7; sequence8; sequence9; sequence10];
[rows, columns] = size(sequences);
distanceMatrix = zeros(rows);
lengthOfSequence = length(sequence1)

for i = rows : -1 : 1
    for j = rows : -1 : 1
        if (i ~= j)
            counter = compareSequences(sequences(i, :), sequences(j, :))
            counter = jukesCantorModelDistance(counter, lengthOfSequence)
            distanceMatrix(j, i) = counter;
        end
    end
     rows = rows - 1;
end
clusterGroups = clusters(distanceMatrix);
set(lengthMatrixTable, 'data', distanceMatrix);
set(handles.nextStepBtn, 'enable', 'on');

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

% --- Executes on button press in nextStepBtn.
function nextStepBtn_Callback(hObject, eventdata, handles)
% hObject    handle to nextStepBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global lengthMatrixTable;
global distanceMatrix;
global subNum;

if (subNum == 1)
    set(handles.compareSequenceBtn, 'enable', 'off');
    set(handles.sequenceEditText1, 'enable', 'off');
    set(handles.sequenceEditText2, 'enable', 'off');
    set(handles.sequenceEditText3, 'enable', 'off');
    set(handles.sequenceEditText4, 'enable', 'off');
    set(handles.sequenceEditText5, 'enable', 'off');
    set(handles.sequenceEditText6, 'enable', 'off');
    set(handles.sequenceEditText7, 'enable', 'off');
    set(handles.sequenceEditText8, 'enable', 'off');
    set(handles.sequenceEditText9, 'enable', 'off');
    set(handles.sequenceEditText10, 'enable', 'off');
    set(handles.resetBtn, 'enable', 'on');

end
lengthOfMatrix = getMatrixSize(distanceMatrix);
 if(lengthOfMatrix > 1)
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     [branchLength, minimumValue] = calculateBranchLength(distanceMatrix, minValueY, minValueX);
     newDistanceMatrix = zeros(lengthOfMatrix-1);
     newDistanceMatrix = calculateNewDistanceMatrix(lengthOfMatrix, minValueY, minValueX, ...
         distanceMatrix, newDistanceMatrix);    
     distanceMatrix = newDistanceMatrix;
     set(lengthMatrixTable, 'data', distanceMatrix);
     drawTree(subNum)
     subNum = subNum + 1;
 end


% --- Executes on button press in resetBtn.
function resetBtn_Callback(hObject, eventdata, handles)
% hObject    handle to resetBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global subNum;
global lengthMatrixTable;
subNum = 1;
    set(handles.compareSequenceBtn, 'enable', 'on');
    set(handles.sequenceEditText1, 'enable', 'on');
    set(handles.sequenceEditText2, 'enable', 'on');
    set(handles.sequenceEditText3, 'enable', 'on');
    set(handles.sequenceEditText4, 'enable', 'on');
    set(handles.sequenceEditText5, 'enable', 'on');
    set(handles.sequenceEditText6, 'enable', 'on');
    set(handles.sequenceEditText7, 'enable', 'on');
    set(handles.sequenceEditText8, 'enable', 'on');
    set(handles.sequenceEditText9, 'enable', 'on');
    set(handles.sequenceEditText10, 'enable', 'on');
    set(handles.nextStepBtn, 'enable', 'off');
    set(lengthMatrixTable, 'Data', ...
        cell(size(get(lengthMatrixTable,'Data'))));
    cla;
    clc   


% --- Executes on mouse press over axes background.
function filogeneticTreeAxis_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to filogeneticTreeAxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
