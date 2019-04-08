% Author: Andrea Murphy
% Date: April 4, 2019
% DESC: Eye Detection of a 2D image 
% % % % Using vision.CascadeObjectDetector
% % % % and the Viola-Jones Algorithm

% Eye Detection
EyeDetect = vision.CascadeObjectDetector('EyePairBig');

%Read the input Image
I = imread('friend.jpg');

BB=step(EyeDetect,I);

figure,
imshow(I); hold on 
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',2,'LineStyle','-','EdgeColor','y');
end
title('Eyes Detection');
hold off;


