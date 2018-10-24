video=videoinput('winvideo',1,'YUY2_320x240');
set(video,'ReturnedColorSpace','rgb');
im=getsnapshot(video);
%im=imread('Untitled7.png');
imshow(im);
if size(im,3)==3 
    im=rgb2gray(im);
    figure,imshow(im);
end
threshold = graythresh(im);
i =~im2bw(im,threshold);
%figure,imshow(im2);
%im1=imcrop(im2,[15,56,125,52]);
%i=imrotate(im1,180);
%figure,imshow(i);
fid = fopen('text.txt', 'wt');
load templates;
global templates;
num=size(templates,2);
i = bwareaopen(i,30);
k=i;
[L Ne] = bwlabel(i);
for n=1:Ne
    i=k;
    [f co]=find(L==n);
    inew=i(min(f):max(f),min(co):max(co));
  %  figure,imshow(inew);
    inew1=imresize(inew,[42 24]);
   comp=[ ];
for n=1:26
    sem=corr2(templates{1,n},inew1);
    comp=[comp sem];
end
ind=find(comp==max(comp));
if ind==1
fprintf(fid,'%s','Alif ');
elseif ind==2
fprintf(fid,'%s','Ba ');
elseif ind==3
fprintf(fid,'%s','Ta ');
elseif ind==4
fprintf(fid,'%s','Tsa ');
elseif ind==5
fprintf(fid,'%s','Jim ');
elseif ind==6
fprintf(fid,'%s','Ha ');
elseif ind==7
fprintf(fid,'%s','Kha ');
elseif ind==8
fprintf(fid,'%s','Dal ');
elseif ind==9
fprintf(fid,'%s','Dzal ');
elseif ind==10
fprintf(fid,'%s','Ra ');
elseif ind==11
fprintf(fid,'%s','Zay ');
elseif ind==12
fprintf(fid,'%s','Sin ');
elseif ind==13
fprintf(fid,'%s','Shin ');
elseif ind==14
fprintf(fid,'%s','Shad ');
elseif ind==15
fprintf(fid,'%s','Dha ');
elseif ind==16
fprintf(fid,'%s','Tho ');
elseif ind==17
fprintf(fid,'%s','Ain ');
elseif ind==18
fprintf(fid,'%s','Ghoin ');
elseif ind==19
fprintf(fid,'%s','Qof ');
elseif ind==20
fprintf(fid,'%s','Kaf ');
elseif ind==21
fprintf(fid,'%s','Lam ');
elseif ind==22
fprintf(fid,'%s','Mim');
elseif ind==23
fprintf(fid,'%s','Nun');
elseif ind==24
fprintf(fid,'%s','Waw');
elseif ind==25
fprintf(fid,'%s','Ha');
elseif ind==26
fprintf(fid,'%s','Lam Alif');
elseif ind==27
fprintf(fid,'%s','Ya');
end 
co=[ ];
f=[];
end
fclose(fid);
%fid = fopen('text.txt');
%url2=fscanf(fid,'%s')
%url1='http://www.oxforddictionaries.com/definition/english/';
 %   url=[url1 url2];
  %  [stat,h]= web(url);
 %fclose(fid);
winopen('text.txt')