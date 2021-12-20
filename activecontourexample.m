clear all; close all; clc; 
I = imread(('x-ray.jpg'));
I = rgb2gray(I)
figure,imshow(I)
title('Original Image')
mask = zeros(size(I));
mask(25:end-25,25:end-25) = 1;
figure,imshow(mask)
title('Initial Contour Location')
% bw = activecontour(I,mask);
% figure,imshow(bw)
% title('Segmented Image, 100 Iterations')
bw = activecontour(I,mask,400);
imshow(bw)
title('Segmented Image, 400 Iterations')