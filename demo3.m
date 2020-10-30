clc
clear
close all
a= VideoReader('xylophone.mp4');
disp(a)
No_of_farmes=a.NumFrames
Framerate=a.FrameRate;
for i=1:No_of_farmes
    Filename=strcat(num2str(i),'.bmp')
    Frame=read(a,i);
    Frame=rgb2gray(Frame);
    
    imwrite(Frame,Filename)
    
    imshow(Frame);
    pause(1/Framerate)
end
