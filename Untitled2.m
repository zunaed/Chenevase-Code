close all
clear all
P = imread('final2.jpg');imshow(P) %final2 jpg is the synthetic image
gray_image = rgb2gray(P) ; 
gray_image=im2double(gray_image)
%show the image and select the contour 
figure(1)
imshow(gray_image)
[x_init y_init] = snakeinit();
fx = (gray_image)./255 ; 
fy = (gray_image)./255 ; 
[x,y] = snake(x_init,y_init,0.1,0.1,20,0.01,fx,fy,0.8,2,gray_image);