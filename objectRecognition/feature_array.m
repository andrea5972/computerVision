% Author: Andrea Murphy
% Date: March 25, 2019
% DESC: Array feature coordinates

pkg load image

figure;                 %figure 1
I = imread('BANANA.jpg');
subplot(1,2,1);
imshow(I)
title('Original Image')
gs_I = rgb2gray(I);
subplot(1,2,2);         %figure 1
imshow(gs_I)
title('Image Converted to Grayscale')

figure;
% Threshold parameter controls the detail of the edge image
% Smaller the number: the greater the detail
%(Image, operator, Threshold)
BW1 = edge(gs_I,'sobel',0.02);
subplot(1,2,1);
imshow(BW1)
title('Sobel edge operator with threshold:0.02')
BW = edge(gs_I,'sobel',0.07);
subplot(1,2,2);
imshow(BW)
title('Sobel edge operator with threshold:0.07')

find (eye (2))

[i, j] = find (2 * eye (2))

 idx = find (65)

all ([2, 3; 1, 0])
