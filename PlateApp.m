% PROGRAMIMIZ GÖRSEL KULLANICI ARAYÜZÜ İLE ÇALIŞAN HALİ
function varargout = PlateApp(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PlateApp_OpeningFcn, ...
                   'gui_OutputFcn',  @PlateApp_OutputFcn, ...
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

function PlateApp_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = PlateApp_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%--------------------------------------------------------------------------
function pushbutton1_Callback(hObject, eventdata, handles)
% Load Image---------------------------------------------------------------
global im
load imgfildata;
[file,path]=uigetfile({'*.jpg;*.jpeg;*.bmp;*.png;*.tif'},'Choose an image');
s=[path,file];
im=imread(s);
% Find Location of Plate---------------------------------------------------
im = imresize(im, [480 NaN]);
picture = im;
imgray = rgb2gray(im);
imbin = imbinarize(imgray);
im = edge(imbin, 'sobel');

im = imdilate(im, strel('diamond', 2));
im = imfill(im, 'holes');
im = imerode(im, strel('diamond', 10));

Iprops=regionprops(im,'BoundingBox','Area', 'Image');
area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for i=1:count
   if maxa<Iprops(i).Area
       maxa=Iprops(i).Area;
       boundingBox=Iprops(i).BoundingBox;
   end
end  
axes(handles.axes3)
im = picture;
imshow(im);
rectangle('Position',boundingBox,'EdgeColor','r','LineWidth',2);

for i=3:4
    boundingBox(i)=boundingBox(i)+34;
end
for i=1:2
    boundingBox(i)=boundingBox(i)-17;
end
im = imcrop(picture, boundingBox);
axes(handles.axes1)
imshow(im);
% Get rid of noise---------------------------------------------------------
picture=imresize(im,[200 600]);
if size(picture,3)==3
  picture=rgb2gray(picture);
end 
picture =imbinarize(picture);
picture = bwareaopen(picture,750);
picture=~picture;
picture=bwareaopen(picture,300);
picture1=bwareaopen(picture,6000);
picture2=picture-picture1;

im = picture2;
axes(handles.axes2)
imshow(im);
% Selection of Characters--------------------------------------------------
[L,Ne]=bwlabel(picture2);
propied=regionprops(L,'BoundingBox');
hold on
for n=1:Ne
  pause(0.1);
  rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',2);
end 
hold off
% Definetion of Characters-------------------------------------------------
final_output=[];
t=[];
for n=1:Ne
  [r,c] = find(L==n);
  n1=picture(min(r):max(r),min(c):max(c));
  n1=imresize(n1,[42,24]);


  x=[ ];
totalLetters=size(imgfile,2);
 for k=1:totalLetters
    y=corr2(imgfile{1,k},n1);
    x=[x y];
 end
 
 t=[t max(x)];
 if max(x)>.45
 z=find(x==max(x));
 out=cell2mat(imgfile(2,z));

final_output=[final_output out];
end
end
% Print Results------------------------------------------------------------
il = State_founder(final_output);
set(handles.edit3,'String',final_output);
set(handles.edit4,'String',il);
% End----------------------------------------------------------------------
