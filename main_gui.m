function varargout = main_gui(varargin)
% MAIN_GUI MATLAB code for main_gui.fig
%      MAIN_GUI, by itself, creates a new MAIN_GUI or raises the existing
%      singleton*.
%
%      H = MAIN_GUI returns the handle to a new MAIN_GUI or the handle to
%      the existing singleton*.
%
%      MAIN_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_GUI.M with the given input arguments.
%
%      MAIN_GUI('Property','Value',...) creates a new MAIN_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_gui

% Last Modified by GUIDE v2.5 19-Dec-2019 09:53:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @main_gui_OutputFcn, ...
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


% --- Executes just before main_gui is made visible.
function main_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_gui (see VARARGIN)

% Choose default command line output for main_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;








function equationsTextBox_Callback(hObject, eventdata, handles)
% hObject    handle to equationsTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equationsTextBox as text
%        str2double(get(hObject,'String')) returns contents of equationsTextBox as a double


% --- Executes during object creation, after setting all properties.
function equationsTextBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equationsTextBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation1_textBox_Callback(hObject, eventdata, handles)
% hObject    handle to equation1_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation1_textBox as text
%        str2double(get(hObject,'String')) returns contents of equation1_textBox as a double


% --- Executes during object creation, after setting all properties.
function equation1_textBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation1_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation2_textBox_Callback(hObject, eventdata, handles)
% hObject    handle to equation2_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation2_textBox as text
%        str2double(get(hObject,'String')) returns contents of equation2_textBox as a double


% --- Executes during object creation, after setting all properties.
function equation2_textBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation2_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation3_textBox_Callback(hObject, eventdata, handles)
% hObject    handle to equation3_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation3_textBox as text
%        str2double(get(hObject,'String')) returns contents of equation3_textBox as a double


% --- Executes during object creation, after setting all properties.
function equation3_textBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation3_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation4_textBox_Callback(hObject, eventdata, handles)
% hObject    handle to equation4_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation4_textBox as text
%        str2double(get(hObject,'String')) returns contents of equation4_textBox as a double


% --- Executes during object creation, after setting all properties.
function equation4_textBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation4_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function equation5_textBox_Callback(hObject, eventdata, handles)
% hObject    handle to equation5_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation5_textBox as text
%        str2double(get(hObject,'String')) returns contents of equation5_textBox as a double


% --- Executes during object creation, after setting all properties.
function equation5_textBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation5_textBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in filebutton.
function filebutton_Callback(hObject, eventdata, handles)
% hObject    handle to filebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)file,path] = uigetfile('*.txt');
[file,path] = uigetfile('*.txt');

if isequal(file,0)
   disp('User selected Cancel');
else
    disp(['User selected ', fullfile(path,file)]);
    fid = fopen(fullfile(path,file));
    [equations,init,method]= readFile(fid,handles);
%     [A,B] = MatrixParser(equations);
    
%     [X]= msolve(A,B);

 
end

function [A,B] = MatrixParser(equations)
    A = [];
    B = []; 
    syms a b c d e;
    [A, B] = equationsToMatrix(equations);
    display(A);
    


% --- Executes on button press in submitBtn.
function submitBtn_Callback(hObject, eventdata, handles)
% hObject    handle to submitBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input=[];
eq1 = sym(get(handles.equation1_textBox,'string'));
eq2 = sym(get(handles.equation2_textBox,'string'));
eq3 = sym(get(handles.equation3_textBox,'string'));
eq4 = sym(get(handles.equation4_textBox,'string'));
eq5 = sym(get(handles.equation5_textBox,'string'));

input=[eq1;eq2;eq3;eq4;eq5];
display(input);
display(size(input));
[A,B] = MatrixParser(input);

iter = get(handles.iterations,'String');
tol = get(handles.error,'String');

switch get(handles.popupmenu1,'Value')
  
    case 1
    gauss_eliminations(A,B);
    case 2
    gauss_Jordan(A)
    case 3
    LU_solver(A,B);
    case 4
        
        x =   [ str2double(get(handles.init0,'String')) str2double(get(handles.init1,'String'))  ];
        n = size(B,1);
        if( n >= 3)
            x = [ x str2double(get(handles.init2,'String'))];
        end
        if (n >= 4)
             x = [x str2double(get(handles.init3,'String'))];
        end
        if( n >= 5)
             x = [x str2double(get(handles.init4,'String')) ];
        end
        
        if(isempty(iter))
            iter = 50;
        else
            iter=str2double(iter);
        end
        if(isempty(tol))
            tol = 0.00001;
        else
            tol=str2double(tol);
        end
         gausSeidel(A, B, x,iter, tol);
   
end







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



function init0_Callback(hObject, eventdata, handles)
% hObject    handle to init0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of init0 as text
%        str2double(get(hObject,'String')) returns contents of init0 as a double


% --- Executes during object creation, after setting all properties.
function init0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to init0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function init4_Callback(hObject, eventdata, handles)
% hObject    handle to init3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of init3 as text
%        str2double(get(hObject,'String')) returns contents of init3 as a double


% --- Executes during object creation, after setting all properties.
function init4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to init3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function init1_Callback(hObject, eventdata, handles)
% hObject    handle to init1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of init1 as text
%        str2double(get(hObject,'String')) returns contents of init1 as a double


% --- Executes during object creation, after setting all properties.
function init1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to init1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function init2_Callback(hObject, eventdata, handles)
% hObject    handle to init2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of init2 as text
%        str2double(get(hObject,'String')) returns contents of init2 as a double


% --- Executes during object creation, after setting all properties.
function init2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to init2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function init3_Callback(hObject, eventdata, handles)
% hObject    handle to init3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of init3 as text
%        str2double(get(hObject,'String')) returns contents of init3 as a double


% --- Executes during object creation, after setting all properties.
function init3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to init3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FileSubmitBtn.
function FileSubmitBtn_Callback(hObject, eventdata, handles)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function error_Callback(hObject, eventdata, handles)
% hObject    handle to text_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_error as text
%        str2double(get(hObject,'String')) returns contents of text_error as a double


% --- Executes during object creation, after setting all properties.
function text_error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iterations_Callback(hObject, eventdata, handles)
% hObject    handle to textI_iteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textI_iteration as text
%        str2double(get(hObject,'String')) returns contents of textI_iteration as a double


% --- Executes during object creation, after setting all properties.
function textI_iteration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textI_iteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
