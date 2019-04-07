% Author: Andrea Murphy
% Date: March 18, 2019
% DESC: Object Recognition of 2D image

figure;                 %figure 1

I = imread('apple.png');
subplot(1,2,1);
imshow(I)
title('Original Image')

gs_I = rgb2gray(I);
subplot(1,2,2);         %figure 1
imshow(gs_I)
title('Image Converted to Grayscale')

% Determines the row and column
whos gs_I

figure;
% Threshold parameter controls the detail of the edge image
% Smaller the number: the greater the detail
 %(Image, operator, Threshold)
BW1 = edge(gs_I,'sobel',0.02);
subplot(1,2,1);
imshow(BW1)
BW = edge(gs_I,'sobel',0.07);
subplot(1,2,1);
imshow(BW)
title('Sobel edge operator with threshold:0.07')

% the edge image is binary 1 = edge point, 0 = no edge point
% ans = 1
% ans = 0
max(max(BW))
min(min(BW))

figure;
% Trace the boundaries of the objects
% To create a Template
% and plot the results
bounds = bwboundaries(BW);
[l, num] = bwlabel(BW, 8);      % Labels binary 2 dimensional image
subplot(1,1,1);
imshow(gs_I);
hold on
for k = 1:numel (bounds)
plot (bounds {k} (:, 2), bounds {k} (:, 1), 'r', 'linewidth', 2);
end
hold off
title('Original greyscale image with template perfectly overlaying')

% Finds the Correlation between the Template
c = normxcorr2(gs_I,BW);
highest_value = max(max(c));
[x, y] = find(c == highest_value);

figure
plot(x(1),y(1),'*r')
title('Max value location')
