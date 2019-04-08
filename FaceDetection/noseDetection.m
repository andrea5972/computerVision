% Author: Andrea Murphy
% Date: April 4, 2019
% DESC: Nose Detection of a 2D image 
% % % % Using vision.CascadeObjectDetector
% % % % and the Viola-Jones Algorithm

%Read the input image
I = imread('friend.jpg');

% Nose Detection
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',8);

BB=step(NoseDetect,I);

figure;
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',2,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');
hold off;