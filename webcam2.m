clc ;
clear;
% Construct a webcam object
camObj = webcam;

while(1)
    img=snapshot(camObj);
    img=rgb2gray(img);
    edge1=edge(img,'canny');
    subplot(1,2,1);
    imshow(img);
    subplot(1,2,2);
    imshow(edge1);
end

preview(camObj);

    