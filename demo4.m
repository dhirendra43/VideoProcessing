vidObj = VideoWriter('Matlab2.avi');
open(vidObj);
h=axes'
for i=1:141
    filename =strcat(num2str(i),'.bmp');
    a=imread(filename);
    image(a,'Parent',h);
    currFrame=getframe(gca);
    pause(1/10);
    writeVideo(vidObj,currFrame);
end
close(vidObj);