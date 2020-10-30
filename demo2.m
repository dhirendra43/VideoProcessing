clc
clear
close all
a= VideoReader('xylophone.mp4');
disp(a)
No_of_farmes=a.NumFrames
disp(No_of_farmes)
Framerate=a.FrameRate;
disp(Framerate)
a.CurrentTime=4;
figure
h=axes;
for i=1:No_of_farmes
    Frame=read(a,i);
    Frame=imresize(Frame,[480,640]);
     Frame=rgb2gray(Frame);
    image(Frame,'Parent',h);
    pause(1/Framerate);
end
