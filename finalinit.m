clear all; close all; 
I1 = imread('final2.jpg');figure, imshow(I1) ;
I2 = rgb2gray(I1);figure, imshow(I2) ;
[x,y] = snakeinit()
%[x,y] = snake(x,y,alpha,beta,kappa, lambda, fx,fy,maxstep, displ,img)
fx = [0.4,0.2,0.3,0.4;0.4,0.2,0.3,0.4;0.4,0.2,0.3,0.4]; 
fy = [0.4,0.1,0.3,0.4;0.4,0.2,0.3,0.4;0.5,0.21,0.3,0.4]; 
[x,y] = snake(x,y,0.1,0.1,0.4, 0.05,fx,fy,0.4, 200,I2)



