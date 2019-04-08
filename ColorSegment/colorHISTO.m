% Author: Andrea Murphy
% Date: April 7, 2019
% DESC: Color histogram equalization 

figure;
fruit = imread('fruit.jpg');
subplot(1,2,1);
imshow(fruit)
title('Original Picture')

HSV = rgb2hsv(fruit);
subplot(1,2,2);
imshow(HSV)
title('Histogram Equalization')