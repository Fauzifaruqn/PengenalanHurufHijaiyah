function varargout = OCR(varargin)
% OCR MATLAB code for OCR.fig
%      OCR, by itself, creates a new OCR or raises the existing
%      singleton*.
%
%      H = OCR returns the handle to a new OCR or the handle to
%      the existing singleton*.
%
%      OCR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OCR.M with the given input arguments.
%
%      OCR('Property','Value',...) creates a new OCR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OCR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OCR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OCR

% Last Modified by GUIDE v2.5 06-Dec-2016 19:02:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OCR_OpeningFcn, ...
                   'gui_OutputFcn',  @OCR_OutputFcn, ...
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


% --- Executes just before OCR is made visible.
function OCR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OCR (see VARARGIN)

% Choose default command line output for OCR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OCR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OCR_OutputFcn(hObject, eventdata, handles) 
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
axes(handles.axes1);
%merah 1
%spesifikasi format webcam yang digunakan
vid = videoinput('dcam', 1, 'YUY2_320x240');
set(vid, 'TriggerRepeat', Inf);
vid.returnedcolorspace = 'rgb';
vid.FrameGrabInterval = 2;

while(vid.FramesAcquired<=100)
    %mengambil citra dari video
    data1 = getsnapshot(vid);
    
    data=rgb2gray(data1);
    % Convert to BW
    threshold = graythresh(data);
    data =~im2bw(data,threshold);
    % Remove all object containing fewer than 30 pixels
    data = bwareaopen(data,30);
    imshow(data1)
    %Storage matrix word from image
    word=[ ];
    
    re=data;
    % Load templates
    load templates
    global templates
    % Compute the number of letters in template file
    num_letras=size(templates,2);
    while 1
        %Fcn 'lines' separate lines in text
        [fl re]=lines(re);
        imgn=fl;
        %Uncomment line below to see lines one by one
        %imshow(fl);pause(0.5)    
        %-----------------------------------------------------------------     
        % Label and count connected components
        [L Ne] = bwlabel(imgn);    
        for n=1:Ne
            [r,c] = find(L==n);
            % Extract letter
            n1=imgn(min(r):max(r),min(c):max(c));  
            % Resize letter (same size of template)
            img_r=imresize(n1,[42 24]);
            %Uncomment line below to see letters one by one
             %imshow(img_r);pause(0.5)
            %-------------------------------------------------------------------
            % Call fcn to convert image to text
            letter=read_letter(img_r,num_letras);
            % Letter concatenation
            word=[word letter];
        end
        hold on
        plot(170, 100, '-m+')
        a = text(170, 100, mat2str(word));
        set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'Red');
        hold off
        %fprintf(fid,'%s\n',lower(word));%Write 'word' in text file (lower)
        %fprintf(fid,'%s\n',word);%Write 'word' in text file (upper)
        % Clear 'word' variable
        word=[ ];
        %*When the sentences finish, breaks the loop
        if isempty(re)  %See variable 're' in Fcn 'lines'
            break
        end    
    end
    %menampilkan citra hasil snapshot
    
    %set(handles.text1,'String', word);
end

stoppreview(vid)
