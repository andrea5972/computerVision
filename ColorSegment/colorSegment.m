% Author: Andrea Murphy
% Date: April 5, 2019
% DESC: Color segmentation of a 2D Image

colorAB = imread('fruit.jpg');
figure;
hold on
imshow(colorAB)
title('Original Image')
ab = rgb2gray(colorAB);
ab = double(ab);

nrows = size(ab,1);
ncols = size(ab,2);

% Reshaping the number of rows and columns in ab
ab = reshape(ab,nrows*ncols,1);

% Number of Colors being segmented 
nColors = 4; 

% sqEuclidean: Distance metric
[idx] = kmeans(ab,nColors,'distance','sqEuclidean', 'Replicates', 3);
pixel_labels = reshape(idx,nrows,ncols);
figure;
hold on
imshow(pixel_labels,[])
title('segmented by region')

colorReshaped = reshape(colorAB,nrows*ncols,3);
colorReshaped = double(colorReshaped);

% Number of Colors being segmented 
nColors = 8;

[idx] = kmeans(colorReshaped,nColors,'distance','sqEuclidean', 'Replicates', 3);
color_pixel_labels = reshape(idx,nrows,ncols);
figure;
hold on
imshow(color_pixel_labels,[])
title('segmented by color')

