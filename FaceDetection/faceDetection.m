% Author: Andrea Murphy
% Date: April 4, 2019
% DESC: Face Detection of a 2D image 
% % % % Using vision.CascadeObjectDetector
% % % % and the Viola-Jones Algorithm

% Face Detection
FDetect = vision.CascadeObjectDetector;

%Read the input image
I = imread('friend.jpg');

%Returns Bounding Box values based on number of objects
BB = step(FDetect,I);

figure;
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',3,'LineStyle','-','EdgeColor','r');
end
title('Face Detection');
hold off;


