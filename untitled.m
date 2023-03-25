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

% Last Modified by GUIDE v2.5 31-Jan-2023 13:39:52

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

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
[back,map]=imread('icons8-return-50.png');
back=imresize(back,[38 49]);
set(handles.pushbutton11,'cdata',back);

[reset,map]=imread('icons8-update-left-rotation-50.png');
reset=imresize(reset,[38 49]);
set(handles.pushbutton17,'cdata',reset);

[save,map]=imread('icons8-save-close-80.png');
save=imresize(save,[38 49]);
set(handles.pushbutton7,'cdata',save);

[Cut,map]=imread('icons8-scissors-64.png');
Cut=imresize(Cut,[38 49]);
set(handles.pushbutton12,'cdata',Cut);

[Rotate,map]=imread('icons8-3d-rotate-80.png');
Rotate=imresize(Rotate,[38 49]);
set(handles.pushbutton13,'cdata',Rotate);

[flip,map]=imread('icons8-flip-64.png');
flip=imresize(flip,[38 49]);
set(handles.pushbutton14,'cdata',flip);

[merge,map]=imread('icons8-merge-horizontal-80.png');
merge=imresize(merge,[38 49]);
set(handles.pushbutton15,'cdata',merge);

[exit,map]=imread('icons8-logout-80.png');
exit=imresize(exit,[38 49]);
set(handles.pushbutton16,'cdata',exit);

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")




% --------------------------------------------------------------------
function Edit_Callback(hObject, eventdata, handles)
% hObject    handle to Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")



% --------------------------------------------------------------------
function Import_Callback(hObject, eventdata, handles)
% hObject    handle to Import (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=imgetfile();
i=imread(i);
axes(handles.axes1);
imshow(i);
setappdata(0,'current',i);
setappdata(0,'initimage',i);
setappdata(0,'oldimage',i);
guidata(hObject,handles);
set(handles.Edit,'enable','on')
set(handles.Filters,'enable','on')
set(handles.Histogram,'enable','on')
set(handles.Detection,'enable','on')
set(handles.Lighting,'enable','on')
set(handles.Blur,'enable','on')
set(handles.Noises,'enable','on')
set(handles.Contours,'enable','on')
set(handles.Erosion,'enable','on')
set(handles.Back,'enable','on')
set(handles.Reset,'enable','on')
set(handles.Save,'enable','on')
set(handles.face,'enable','on')
set(handles.uipanel9,'Visible','on')





% --------------------------------------------------------------------
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
init=getappdata(0,'initimage');
setappdata(0,'oldimage',getappdata(0,'current'));
axes(handles.axes1);
imshow(init);
setappdata(0,'current',init);


% --------------------------------------------------------------------
function Back_Callback(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old=getappdata(0,'oldimage');
setappdata(0,'oldimage',getappdata(0,'current'));
axes(handles.axes1);
imshow(old);
setappdata(0,'current',old);


% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
s=imputfile;
imwrite(current,s);


% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Thanks For Using Image Processing Tool')
pause(1);
close();
close();



% --------------------------------------------------------------------
function Filters_Callback(hObject, eventdata, handles)
% hObject    handle to Filters (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Histogram_Callback(hObject, eventdata, handles)
% hObject    handle to Histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Video_Callback(hObject, eventdata, handles)
% hObject    handle to Video (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Detection_Callback(hObject, eventdata, handles)
% hObject    handle to Detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Erosion_Callback(hObject, eventdata, handles)
% hObject    handle to Erosion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Contours_Callback(hObject, eventdata, handles)
% hObject    handle to Contours (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Noises_Callback(hObject, eventdata, handles)
% hObject    handle to Noises (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Blur_Callback(hObject, eventdata, handles)
% hObject    handle to Blur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Lighting_Callback(hObject, eventdata, handles)
% hObject    handle to Lighting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Histograms_Callback(hObject, eventdata, handles)
% hObject    handle to Histograms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Forlight_Callback(hObject, eventdata, handles)
% hObject    handle to Forlight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","on")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")



% --------------------------------------------------------------------
function Darkening_Callback(hObject, eventdata, handles)
% hObject    handle to Darkening (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","on")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")




% --------------------------------------------------------------------
function Sharping_Callback(hObject, eventdata, handles)
% hObject    handle to Sharping (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","on")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")






% --------------------------------------------------------------------
function Intensity_Callback(hObject, eventdata, handles)
% hObject    handle to Intensity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","on")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")





% --------------------------------------------------------------------
function Convolution_Callback(hObject, eventdata, handles)
% hObject    handle to Convolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
ang=inputdlg('Put matrix','Matrix');
H=str2num(ang{:});
current = imfilter(current, H,'conv');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Blur3_Callback(hObject, eventdata, handles)
% hObject    handle to Blur3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
filterWindow3 = ones(3) / 9;
current = imfilter(current, filterWindow3);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Blur5_Callback(hObject, eventdata, handles)
% hObject    handle to Blur5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
filterWindow3 = ones(5,5) / 25;
current = imfilter(current, filterWindow3,'conv');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Blur9_Callback(hObject, eventdata, handles)
% hObject    handle to Blur9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
filterWindow3 = ones(9) / 91;
current = imfilter(current, filterWindow3);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Blur15_Callback(hObject, eventdata, handles)
% hObject    handle to Blur15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
filterWindow3 = ones(15) / 255;
current = imfilter(current, filterWindow3);
axes(handles.axes1);
imshow(current);

setappdata(0,'current',current);


% --------------------------------------------------------------------
function GaussianBlur_Callback(hObject, eventdata, handles)
% hObject    handle to GaussianBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
current = imgaussfilt(current,2);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);



% --------------------------------------------------------------------
function Gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to Gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","on")
set(handles.panel7,"Visible","off")
set(handles.panel7,"Visible","off")






% --------------------------------------------------------------------
function SaltPepper_Callback(hObject, eventdata, handles)
% hObject    handle to SaltPepper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","on")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","off")





% --------------------------------------------------------------------
function Sinusoidal_Callback(hObject, eventdata, handles)
% hObject    handle to Sinusoidal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.panel7,"Visible","on")



% --------------------------------------------------------------------
function Sobel_Callback(hObject, eventdata, handles)
% hObject    handle to Sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
current=im2gray(current);
current = edge(current,'sobel');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Prewit_Callback(hObject, eventdata, handles)
% hObject    handle to Prewit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
I=im2gray(current);
ed2= edge(I,'prewitt');
axes(handles.axes1); 
imshow(ed2);
setappdata(0,'current',ed2);



% --------------------------------------------------------------------
function Roberts_Callback(hObject, eventdata, handles)
% hObject    handle to Roberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
current=im2gray(current);
current = edge(current,'roberts');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Zerocross_Callback(hObject, eventdata, handles)
% hObject    handle to Zerocross (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
current=im2gray(current);
current = edge(current,'zerocross');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function ErosionCube_Callback(hObject, eventdata, handles)
% hObject    handle to ErosionCube (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);


st1=[1 1 1 
     1 1 1
     1 1 1];
current= imerode(current,st1);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function ErosionVertical_Callback(hObject, eventdata, handles)
% hObject    handle to ErosionVertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);

st3=[0 1 0 
     0 1 0
     0 1 0];
current= imerode(current,st3);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function ErosionCercle_Callback(hObject, eventdata, handles)
% hObject    handle to ErosionCercle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);

st2=[0 1 0 
     1 1 1
     0 1 0];
current= imerode(current,st2);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function ErosionHorizontal_Callback(hObject, eventdata, handles)
% hObject    handle to ErosionHorizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);

st3=[0 0 0 
     1 1 1
     0 0 0];
current= imerode(current,st3);
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function face_Callback(hObject, eventdata, handles)
% hObject    handle to face (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
the_Image      = getappdata(0,'current');
[width, height] = size(the_Image);

if width>320
the_Image = imresize(the_Image,[320 NaN]);
end

% Create a cascade detector object.
faceDetector = vision.CascadeObjectDetector();

%finding the bounding box that encloses the face on video frame
face_Location = step(faceDetector, the_Image);
bboxes=faceDetector(the_Image)
if ~isempty(bboxes)
% Draw the returned bounding box around the detected face.
the_Image = insertShape(the_Image, 'Rectangle', face_Location);
axes(handles.axes1);
imshow(the_Image); 
title('Detected face');
else
    position=[100 280];
    label='No face Detected';
    the_Imagef = insertText(the_Image,position,label ,'FontSize',20,'BoxOpacity',1);
    axes(handles.axes1);
imshow(the_Imagef); 

end


% --------------------------------------------------------------------
function FaceVideo_Callback(hObject, eventdata, handles)
% hObject    handle to FaceVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function split_Callback(hObject, eventdata, handles)
% hObject    handle to split (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i;

mov=getappdata(0,'r');

%opFolder=fullfile(cd,'opFolder');
%creation de dossier s'il nexiste pas
i=0;
if exist(num2str(i),'dir')
    i=i+1;
    mkdir(num2str(i));
else
    mkdir(num2str(i)); 
end
%numero de frames dans le vid
numFrames=mov.NumberOfFrames;
%set(handles.txt30,'String','Division Movie To Frames');
%set(handles.txt33,'String','Number Of Frames of This Movie :');
%set(handles.txt40,'String',numFrames);
%mettre le nombre de frames initialement a 0
numFramesWritten=0;
%boucle pour parcourir les frame de 1 a la derniere
for t=1:numFrames;
    currFrame=read(mov,t);
    opBaseFileName=sprintf('%1.1d.png',t);
    opFullFileName=fullfile(num2str(i),opBaseFileName);
    %sauvgarder la frame se forme png
    imwrite(currFrame,opFullFileName,'png');
    %incremente le nombre de frame sauvgarde
    numFramesWritten=numFramesWritten+1;
    %axes(handles.fen30);
    axes(handles.axes1);
    imshow(currFrame);
    %set(handles.txt40,'String',numFramesWritten);
end
progIndication=sprintf('wrote %d frames to folder "%s" ',numFramesWritten,num2str(i));
disp(progIndication);

function frame_mv_Callback(hObject, eventdata, handles)
path_dir=uigetdir('*','Choose The Directory of Picture');
aa='\';
nbr_frames=inputdlg('Put The Number Of Frames !','Reconstruction');
b=str2num(nbr_frames{:});
%set(handles.txt31,'String','Reconstruction Of Movie From Frames');
%set(handles.txt34,'String','Number Of Frames Used:');
outputVideo=VideoWriter(fullfile('','marked-vid'),'Uncompressed AVI');
outputVideo.FrameRate=25;
open(outputVideo);
for i=1:b
    a=[strcat(strcat(path_dir,aa),num2str(i)),'.png'];
    img=imread(fullfile('',a));
    writeVideo(outputVideo,img);
    axes(handles.axes1);
    imshow(img);
    %set(handles.txt50,'String',i);
end
close(outputVideo);

% --------------------------------------------------------------------
function Merge_Callback(hObject, eventdata, handles)
% hObject    handle to Merge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path_dir=uigetdir('*','Choose The Directory of Picture');
aa='\';
nbr_frames=inputdlg('Put The Number Of Frames !','Reconstruction');
b=str2num(nbr_frames{:});
%set(handles.txt31,'String','Reconstruction Of Movie From Frames');
%set(handles.txt34,'String','Number Of Frames Used:');
outputVideo=VideoWriter(fullfile('','marked-vid'),'Uncompressed AVI');
outputVideo.FrameRate=25;
open(outputVideo);
for i=1:b
    a=[strcat(strcat(path_dir,aa),num2str(i)),'.png'];
    img=imread(fullfile('',a));
    writeVideo(outputVideo,img);
    axes(handles.axes1);
    imshow(img);
    %set(handles.txt50,'String',i);
end
close(outputVideo);


% --------------------------------------------------------------------
function uploadvideo_Callback(hObject, eventdata, handles)
% hObject    handle to uploadvideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[f, p]=uigetfile('*','selectionne fichier');
set(handles.panel1,"Visible","off")
set(handles.panel2,"Visible","off")
set(handles.panel3,"Visible","off")
set(handles.panel4,"Visible","off")
set(handles.panel5,"Visible","off")
set(handles.panel6,"Visible","off")
set(handles.uipanel9,'Visible','off')
set(handles.Edit,'enable','off')
set(handles.Filters,'enable','off')
set(handles.Histogram,'enable','off')
set(handles.Detection,'enable','off')
set(handles.Lighting,'enable','off')
set(handles.Blur,'enable','off')
set(handles.Noises,'enable','off')
set(handles.Contours,'enable','off')
set(handles.Erosion,'enable','off')
set(handles.Back,'enable','off')
set(handles.Reset,'enable','off')
set(handles.Save,'enable','off')
set(handles.face,'enable','off')
set(handles.uipanel9,'Visible','off')
set(handles.panel7,"Visible","off")

r = VideoReader(fullfile(p,f));
setappdata(0,'r',r);
numFrames=r.NumberOfFrames;
for t=1:numFrames;
    currFrame=read(r,t);
     axes(handles.axes1);
    imshow( currFrame);
end

set(handles.Merge,'enable','on');
set(handles.VideoFilter,'enable','on');
set(handles.split,'enable','on');



% --------------------------------------------------------------------
function VideoFilter_Callback(hObject, eventdata, handles)
% hObject    handle to VideoFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Colors_Callback(hObject, eventdata, handles)
% hObject    handle to Colors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Complement_Callback(hObject, eventdata, handles)
% hObject    handle to Complement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
IM2=imcomplement(current);
axes(handles.axes1);
imshow(IM2);
setappdata(0,'current',IM2);


% --------------------------------------------------------------------
function Motion_Callback(hObject, eventdata, handles)
% hObject    handle to Motion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
h= fspecial('motion',50,40);
filterredRGB= imfilter(current,h);
axes(handles.axes1)
imshow(filterredRGB)
setappdata(0,'current',filterredRGB);



% --------------------------------------------------------------------
function Equalazation_Callback(hObject, eventdata, handles)
% hObject    handle to Equalazation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
I=rgb2gray(current);
eq=histeq(I);
axes(handles.axes1); 
imshow(eq)
setappdata(0,'current',eq);


% --------------------------------------------------------------------
function Low_Callback(hObject, eventdata, handles)
% hObject    handle to Low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
   I=rgb2gray(current)
noise=imnoise(I,'salt & pepper');
a3=fspecial('average',[7,7]);
t_sp_a3=filter2(a3,noise);
axes(handles.axes1); 
imshow(t_sp_a3/255)
setappdata(0,'current',t_sp_a3/255);


% --------------------------------------------------------------------
function Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
ang=inputdlg('Put Angle Of Rotation','Angle');
a=str2num(ang{:});
rotate=imrotate(current,a);
axes(handles.axes1);
imshow(rotate);
setappdata(0,'current',rotate);


% --------------------------------------------------------------------
function Resize_Callback(hObject, eventdata, handles)
% hObject    handle to Resize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
promptMessage = sprintf('Drag out a box that you want to copy,\nor click Cancel to quit.');
titleBarCaption = 'Continue?';
button = questdlg(promptMessage, titleBarCaption, 'Continue', 'Cancel', 'Continue');
if strcmpi(button, 'Cancel')
  close(hFig); % Close down the figure - get rid of it.
  return;
end
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
k = waitforbuttonpress;
point1 = get(gca,'CurrentPoint');    % button down detected
finalRect = rbbox;                   % return figure units
point2 = get(gca,'CurrentPoint');    % button up detected
point1 = point1(1,1:2);              % extract x and y
point2 = point2(1,1:2);
p1 = min(point1,point2);             % calculate locations
offset = abs(point1-point2);
% Find the coordinates of the box.
xCoords = [p1(1) p1(1)+offset(1) p1(1)+offset(1) p1(1) p1(1)];
yCoords = [p1(2) p1(2) p1(2)+offset(2) p1(2)+offset(2) p1(2)];
x1 = round(xCoords(1));
x2 = round(xCoords(2));
y1 = round(yCoords(5));
y2 = round(yCoords(3));
width = x2-x1;
height = y2-y1;
% The box from rbbox() disappears after drawing, so redraw the box over the image.
hold on
axis manual
plot(xCoords, yCoords, 'b-'); % redraw in dataspace units
pause(1)
% Display the cropped image.
delete(get(handles.axes1,'children'));
img = imcrop(current, [x1, y1, width, height]);
current=img
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);

% --------------------------------------------------------------------
function Flip_Callback(hObject, eventdata, handles)
% hObject    handle to Flip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Flip_Vertical_Callback(hObject, eventdata, handles)
% hObject    handle to Flip_Vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
flip=flipdim(current,1);
axes(handles.axes1); 
imshow(flip)
setappdata(0,'current',flip);


% --------------------------------------------------------------------
function Flip_Horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to Flip_Horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
flip=flipdim(current,2);
axes(handles.axes1); 
imshow(flip)
setappdata(0,'current',flip);


% --------------------------------------------------------------------
function Blue_Callback(hObject, eventdata, handles)
% hObject    handle to Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
blue=current;
blue(:,:,1)=0;
blue(:,:,2)=0;
axes(handles.axes1);
imshow(blue)
setappdata(0,'current',blue);


% --------------------------------------------------------------------
function Green_Callback(hObject, eventdata, handles)
% hObject    handle to Green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
green=current;
green(:,:,1)=0;
green(:,:,3)=0;
axes(handles.axes1);
imshow(green)
setappdata(0,'current',green);


% --------------------------------------------------------------------
function Red_Callback(hObject, eventdata, handles)
% hObject    handle to Red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
red=current;
red(:,:,2:3)=0;
axes(handles.axes1);
imshow(red)
setappdata(0,'current',red);


% --------------------------------------------------------------------
function Gray_Callback(hObject, eventdata, handles)
% hObject    handle to Gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
a_gray=rgb2gray(current);
axes(handles.axes1); 
imshow(a_gray)
setappdata(0,'current',a_gray);


% --------------------------------------------------------------------
function BlackWhite_Callback(hObject, eventdata, handles)
% hObject    handle to BlackWhite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
a_bw=im2bw(current,.44);
axes(handles.axes1);
imshow(a_bw)
setappdata(0,'current',a_bw);


% --------------------------------------------------------------------
function Vcoulors_Callback(hObject, eventdata, handles)
% hObject    handle to Vcoulors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Vgaussian_Callback(hObject, eventdata, handles)
% hObject    handle to Vgaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
    G=imnoise(y,'gaussian');
     axes(handles.axes1);
    imshow(G);
end


% --------------------------------------------------------------------
function Vcontour_Callback(hObject, eventdata, handles)
% hObject    handle to Vcontour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
    y=im2gray(y);
    G= edge(y,'canny');
     axes(handles.axes1);
    imshow(G);
end


% --------------------------------------------------------------------
function Vcomplement_Callback(hObject, eventdata, handles)
% hObject    handle to Vcomplement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
  G=imcomplement(y);
 axes(handles.axes1);
    imshow(G);
end


% --------------------------------------------------------------------
function VGray_Callback(hObject, eventdata, handles)
% hObject    handle to VGray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
    G=rgb2gray(y);
     axes(handles.axes1);
    imshow(G);
end



% --------------------------------------------------------------------
function Vblue_Callback(hObject, eventdata, handles)
% hObject    handle to Vblue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
   blue=y;
blue(:,:,1)=0;
blue(:,:,2)=0;
     axes(handles.axes1);
    imshow(blue);
end


% --------------------------------------------------------------------
function Vgreen_Callback(hObject, eventdata, handles)
% hObject    handle to Vgreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
   green=y;
green(:,:,1)=0;
green(:,:,3)=0;
     axes(handles.axes1);
    imshow(green);
end


% --------------------------------------------------------------------
function RVideo_Callback(hObject, eventdata, handles)
% hObject    handle to RVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
   red=y;
red(:,:,2:3)=0;
axes(handles.axes1);
imshow(red)
end


% --------------------------------------------------------------------
function Vblack_Callback(hObject, eventdata, handles)
% hObject    handle to Vblack (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=getappdata(0,'r');
for i=1:r.NumberOfFrame
    y=read(r,i);
    a_bw=im2bw(y,.44);
axes(handles.axes1);
imshow(a_bw)
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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider1,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
rr=(s)*(current.^1);
axes(handles.axes1); 
imshow(rr)
setappdata(0,'rgb2',rr);
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb2');
setappdata(0,'current',rgb);
set(handles.slider1,'value',0);




function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x=get(handles.slider2,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
t=imsharpen(current,'Radius',2*x,'Amount',4);
axes(handles.axes1); 
imshow(t)
setappdata(0,'rgb3',t);


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb3');
setappdata(0,'current',rgb);
set(handles.slider2,'value',0);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


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


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider4,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
adjust=imadjust(current,[0;s],[]);
axes(handles.axes1); 
imshow(adjust);
setappdata(0,'rgb1',adjust);


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb1');
setappdata(0,'current',rgb);
set(handles.slider4,'value',0);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb4');
setappdata(0,'current',rgb);
set(handles.slider3,'value',0);


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider3,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
noise=imnoise(current,'salt & pepper',s);
axes(handles.axes1); 
imshow(noise)
setappdata(0,'rgb4',noise);


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
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


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider5,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
x=current+150*s;
axes(handles.axes1); 
imshow(x)
setappdata(0,'rgb5',x);


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb5');
setappdata(0,'current',rgb);
set(handles.slider5,'value',0);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb6');
setappdata(0,'current',rgb);
set(handles.slider6,'value',0);


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider6,'value');
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
noise=imnoise(current,'gaussian',s);
axes(handles.axes1); 
imshow(noise)
setappdata(0,'rgb6',noise);


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


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


% --------------------------------------------------------------------
function Canny_Callback(hObject, eventdata, handles)
% hObject    handle to Canny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
current=im2gray(current);
current = edge(current,'canny');
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure;
imhist(getappdata(0,'current'));


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure;
imhist( rgb2gray(getappdata(0,'current')))


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
s=imputfile;
imwrite(current,s);



% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old=getappdata(0,'oldimage');
setappdata(0,'oldimage',getappdata(0,'current'));
axes(handles.axes1);
imshow(old);
setappdata(0,'current',old);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
promptMessage = sprintf('Drag out a box that you want to copy,\nor click Cancel to quit.');
titleBarCaption = 'Continue?';
button = questdlg(promptMessage, titleBarCaption, 'Continue', 'Cancel', 'Continue');
if strcmpi(button, 'Cancel')
  close(hFig); % Close down the figure - get rid of it.
  return;
end
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
k = waitforbuttonpress;
point1 = get(gca,'CurrentPoint');    % button down detected
finalRect = rbbox;                   % return figure units
point2 = get(gca,'CurrentPoint');    % button up detected
point1 = point1(1,1:2);              % extract x and y
point2 = point2(1,1:2);
p1 = min(point1,point2);             % calculate locations
offset = abs(point1-point2);
% Find the coordinates of the box.
xCoords = [p1(1) p1(1)+offset(1) p1(1)+offset(1) p1(1) p1(1)];
yCoords = [p1(2) p1(2) p1(2)+offset(2) p1(2)+offset(2) p1(2)];
x1 = round(xCoords(1));
x2 = round(xCoords(2));
y1 = round(yCoords(5));
y2 = round(yCoords(3));
width = x2-x1;
height = y2-y1;
% The box from rbbox() disappears after drawing, so redraw the box over the image.
hold on
axis manual
plot(xCoords, yCoords, 'b-'); % redraw in dataspace units
pause(1)
% Display the cropped image.
delete(get(handles.axes1,'children'));
img = imcrop(current, [x1, y1, width, height]);
current=img
axes(handles.axes1);
imshow(current);
setappdata(0,'current',current);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
ang=inputdlg('Put Angle Of Rotation','Angle');
a=str2num(ang{:});
rotate=imrotate(current,a);
axes(handles.axes1);
imshow(rotate);
setappdata(0,'current',rotate);


% --- Executes on button press in pushbutton14.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
flip=flipdim(current,1);
axes(handles.axes1); 
imshow(flip)
setappdata(0,'current',flip);


% --- Executes on button press in pushbutton15.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
flip=flipdim(current,2);
axes(handles.axes1); 
imshow(flip)
setappdata(0,'current',flip);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Thanks For Using Image Processing Tool')
pause(1);
close();
close();


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
init=getappdata(0,'initimage');
setappdata(0,'oldimage',getappdata(0,'current'));
axes(handles.axes1);
imshow(init);
setappdata(0,'current',init);



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(handles.slider7,'value');
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
% Get the size of the image
[rows, cols, channels] = size(current);

% Generate the sinusoidal noise
frequency = s;
phase = 0;
noise = sin(2 * pi * frequency * (1:cols) + phase);
noise = repmat(noise, rows, 1, channels);
% Add the noise to the image
resul= current + uint8(noise * 128);
axes(handles.axes1);
imshow(resul)
setappdata(0,'rgb8',resul);


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgb=getappdata(0,'rgb8');
setappdata(0,'current',rgb);
set(handles.slider7,'value',0);


% --------------------------------------------------------------------
function Median_Callback(hObject, eventdata, handles)
% hObject    handle to Median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
img2 = medfilt3(current);
axes(handles.axes1);
imshow(img2);
setappdata(0,'current',img2);


% --------------------------------------------------------------------
function fourier_Callback(hObject, eventdata, handles)
% hObject    handle to fourier (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldImage',current);
I1=current;
I1=rgb2gray(I1);
F=fft2(I1);
s=abs(F);
Fsh = fftshift(F);
s2 = log(1+abs(Fsh));
F=ifftshift(Fsh);
f=ifft2(F);
img2=f;
axes(handles.axes1);
imshow(img2,[]);
setappdata(0,'current',img2);


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);

[x,y] = ginput(1);
textTowrite = inputdlg('Enter a Text');
current  = insertText(current,[x,y], textTowrite, 'FontSize',30,TextColor='black');
axes(handles.axes1); 
imshow(current)
setappdata(0,'current',current);


% --------------------------------------------------------------------
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current=getappdata(0,'current');
setappdata(0,'oldimage',current);
[x,y] = ginput(1);
textTowrite = inputdlg('Enter a Text');
current  = insertText(current,[x,y], textTowrite, 'FontSize',100,TextColor='black',BoxColor='white');
axes(handles.axes1); 
imshow(current)
setappdata(0,'current',current);


% --------------------------------------------------------------------
