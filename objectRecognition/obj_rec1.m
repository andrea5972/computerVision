% Author: Andrea Murphy
% Date: March 18, 2019
% DESC: Object Recognition with rectangles

pkg load image

figure;

% Creates simple rectangles
bw(1:100,1:100) = 256;
bw(40:60,40:60) = 0;
subplot(2,1,1);
imshow(bw)
title ('Make a black square within a white background')

% the edge image is binary 1 = edge point, 0 = no edge point
% ans = 1
% ans = 1
max(max(bw))
min(min(bw))

bounds = bwboundaries(bw); %finds the boundaries
[l, num] = bwlabel(bw, 8) % Labels binary 2 dimensional image
subplot(2,1,2);
imshow (bw)
hold on
for k = 1:numel (bounds)
plot(bounds {k} (:, 2), bounds {k} (:, 1), 'r', 'linewidth', 2);
endfor
hold off
title ('The Correlation Template Perfectly Overlaying Original image')

c = normxcorr2(bw,bw);
highest_value = max(max(c))
[x y] = find(c == highest_value)

figure
plot(x(1),y(1),'*r')
title('Max value location')
