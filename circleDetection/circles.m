% Author: Andrea Murphy
% Date: April 5, 2019
% DESC: A Hough transform function for detecting circles

% Load the image
I = imread('circles.jpg');
imshow(I)

% Find Circles
% imfindcircles finds circular objects that are brighter
% than the background

[centers,radii] = imfindcircles(I,[31 70],'ObjectPolarity','dark', ...
    'Sensitivity',0.92,'Method','twostage');

[centersSmall,radiiSmall] = imfindcircles(I,[5 30],'ObjectPolarity','dark', ...
    'Sensitivity',0.92);

imshow(I)
hugh = viscircles(centers, radii);
hughSmall = viscircles(centersSmall, radiiSmall, 'Color','y');


[centersBright,radiiBright,metricBright] = imfindcircles(I,[20 60], ...
    'ObjectPolarity','bright','Sensitivity',0.92,'EdgeThreshold',0.1);

hBright = viscircles(centersBright, radiiBright,'Color','b');


[centersDark, radiiDark] = imfindcircles(I,[20 60], ...
    'ObjectPolarity','dark','Sensitivity',0.92,'EdgeThreshold',0.1);

hDark = viscircles(centersDark, radiiDark,'Color','g');

length(centers)
length(centersSmall)
length(centersBright)
length(centersDark)
