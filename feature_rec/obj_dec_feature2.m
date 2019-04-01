% Author: Andrea Murphy
% Date: April 1, 2019
% DESC: Object Detection in a Cluttered Scene Using Point Feature Matching
  
I = imread('Fruit.jpg');
sceneImage = rgb2gray(I);
[J, rect] = imcrop(sceneImage);

subplot(1,2,1)
imshow(I)
title('Original Image')
subplot(1,2,2)
imshow(J)
title('Cropped Image')

% Detect Feature Points
pinePoints = detectSURFFeatures(J);
scenePoints = detectSURFFeatures(sceneImage);

figure;
imshow(J);
title('100 Strongest Feature Points from Pine_ Image');
hold on;
plot(selectStrongest(pinePoints, 100));
 
figure;
imshow(sceneImage);
title('300 Strongest Feature Points from Scene Image');
hold on;
plot(selectStrongest(scenePoints, 300));
 

% Extract Feature Descriptors
[pineFeatures, pinePoints] = extractFeatures(J, pinePoints);
[sceneFeatures, scenePoints] = extractFeatures(sceneImage, scenePoints);
 
% Find Point Matches
pinePairs = matchFeatures(pineFeatures, sceneFeatures);

matchedPinePoints = pinePoints(pinePairs(:, 1), :);
matchedScenePoints = scenePoints(pinePairs(:, 2), :);

figure;
showMatchedFeatures(J, sceneImage, matchedPinePoints,...
    matchedScenePoints, 'montage');
title('Matched Points (Including Outliers)');

% Locate the Object in the original using matches
[tform, inlierPinePoints, inlierScenePoints] = ...
    estimateGeometricTransform(matchedPine_Points, matchedScenePoints, 'affine');
figure;
showMatchedFeatures(J, sceneImage, inlierPinePoints,...
    inlierScenePoints, 'montage');
title('Matched Points (Inliers Only)');
 

