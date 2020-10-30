clc ;
clear;
close all;
% Construct a webcam object
camObj = webcam;

while(1)
    img=snapshot(camObj);
    
    [r g b]= imsplit(img);
    
    r= imnoise(r,'salt & pepper',0.12)
    g= imnoise(g,'salt & pepper',0.12)
    b= imnoise(b,'salt & pepper',0.12)
    
    r1=medfilt2(r,[3,3]);
    g1=medfilt2(g,[3,3]);
    b1=medfilt2(b,[3,3]);
    
    J(:,:,1)=r
    J(:,:,2)=g
    J(:,:,3)=b
    J1(:,:,1)=r1
    J1(:,:,2)=g1
    J1(:,:,3)=b1
    I=[img J J1];
    %subplot(1,2,1);
    %imshow(img);
    %subplot(1,2,2);
    imshow(I);
end

preview(camObj);

    