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

% Last Modified by GUIDE v2.5 17-Dec-2018 12:54:41

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

lengthMatrixTable = uitable();
set(lengthMatrixTable, 'ColumnName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(lengthMatrixTable, 'RowName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(lengthMatrixTable, 'Position', [10 10 525 203])
set(lengthMatrixTable, 'FontUnits', 'Normalized');
set(lengthMatrixTable, 'ColumnWidth', {49});
drawnow;
set(handles.branchMatrixBtn, 'enable', 'off');
subNum = 1;

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

global distanceMatrix;
global branchLengthMatrix;
global branchLengthVector;
global cellLeafs;
global cellNodes;
global cellSequences;
global lengthMatrixTable;
global subNum;

error = false;

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

sequence1 = get(handles.sequenceEditText1,'String');
sequence2 = get(handles.sequenceEditText2,'String');
sequence3 = get(handles.sequenceEditText3,'String');
sequence4 = get(handles.sequenceEditText4,'String');
sequence5 = get(handles.sequenceEditText5,'String');
sequence6 = get(handles.sequenceEditText6,'String');
sequence7 = get(handles.sequenceEditText7,'String');
sequence8 = get(handles.sequenceEditText8,'String');
sequence9 = get(handles.sequenceEditText9,'String');
sequence10 = get(handles.sequenceEditText10,'String');

[matrixOfSequences, lengthOfSequence, error] = makeMatrixOfSequences(sequence1, sequence2, ...
    sequence3, sequence4, sequence5, sequence6, sequence7, sequence8, ...
    sequence9, sequence10);

if(isempty(matrixOfSequences))
    return
end

[distanceMatrix, error] = compareSequences(matrixOfSequences, lengthOfSequence);

if (~error)
    [cellNodes, cellLeafs, cellSequences, branchLengthVector, branchLengthMatrix] ...
        = createTreeByWpgmaMethod(distanceMatrix);
    set(lengthMatrixTable, 'data', distanceMatrix);
    set(handles.nextStepBtn, 'enable', 'on');
end

function nextStepBtn_Callback(hObject, eventdata, handles)
% hObject    handle to nextStepBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global lengthMatrixTable;
global distanceMatrix;
global subNum;
global cellNodes;
global cellLeafs;
global cellSequences;
global branchLengthVector;

lengthOfMatrix = length(distanceMatrix);
 
 if(lengthOfMatrix > 1)
     [minValueY, minValueX] = findFirstMinimumPosition(distanceMatrix);
     newDistanceMatrix = calculateNewDistanceMatrix(minValueY, minValueX, distanceMatrix);    
     distanceMatrix = newDistanceMatrix;
     displayTree(subNum, cellNodes, cellLeafs, cellSequences);
     set(lengthMatrixTable, 'data', distanceMatrix);
     set(handles.branchLengthTextBox, 'String', branchLengthVector(1, subNum));
     subNum = subNum + 1;
 end
 
 if (lengthOfMatrix == 2)
     set(handles.branchMatrixBtn, 'enable', 'on');
     set(handles.nextStepBtn, 'enable', 'off');
 end

% --- Executes on button press in resetBtn.
function resetBtn_Callback(hObject, eventdata, handles)
% hObject    handle to resetBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global lengthMatrixTable;
global subNum;

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
set(lengthMatrixTable, 'Data', cell(size(get(lengthMatrixTable,'Data'))));
set(handles.branchLengthTextBox, 'String', '');
set(handles.branchMatrixBtn, 'enable', 'off');

cla;
clc   

% --- Executes on mouse press over axes background.
function filogeneticTreeAxis_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to filogeneticTreeAxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in branchMatrixBtn.
function branchMatrixBtn_Callback(hObject, eventdata, handles)
% hObject    handle to branchMatrixBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global branchLengthMatrix; 

f = figure('Name', 'Matrix of branches length');
set(f,'Position', [330 120 700 300]);
branchLengthMatrixTable = uitable('Units','normalized','Position', [0.1 0.1 0.750 0.676]);
set(branchLengthMatrixTable, 'ColumnName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(branchLengthMatrixTable, 'RowName', {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
set(branchLengthMatrixTable, 'ColumnWidth', {49});
set(branchLengthMatrixTable, 'Data', branchLengthMatrix);

