clc
clear
a= VideoReader('xylophone.mp4');
disp(a)
No_of_farmes=a.NumFrames
disp(No_of_farmes)
Framerate=a.FrameRate;
disp(Framerate)
a.CurrentTime=0;
figure
h=axes;
while hasFrame(a)
    Frame=readFrame(a);
    image(Frame,'Parent',h);
    h.Visible='off'
    pause(1/Framerate);
end
