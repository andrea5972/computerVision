
%{ Author: Andrea Murphy
    Date: Febuary 4, 2019
    Sobel Filter and
    laplassian gaussian edge detector%}


pkg load image

%{read an image into the workspace by using the imread command,
and storing it in an array named I%}
I = imread('black_and_white_test_image.jpg');

% make it smooth to reduce noice
I = imsmooth(I);

figure;

% Places images in the same figures
subplot(1, 3, 1);
imshow(I);
title('Original Image')

% apply sobel filter.
BW = edge(I,'sobel',0.1) ;
subplot(1, 3, 2);
imshow(BW)
title('Sobel Filter')

% mask for laplassian gaussian edge detector
edge_mask = [
             0 0 3 2 2 2 3 0 0;
             0 2 3 5 5 5 3 2 0;
             3 3 5 3 0 3 5 3 3;
             2 5 3 -12 -23 -12 3 5 2;
             2 5 0 -23 -40 -23 0 5 2;
             2 5 3 -12 -23 -12 3 5 2;
             3 3 5 3 0 3 5 3 3;
             0 2 3 5 5 5 3 2 0;
             0 0 3 2 2 2 3 0 0
             ]
% find edges
edge_im = conv2(edge_mask,I);
subplot(1, 3, 3);
imshow(edge_im);
title('Laplassian Gaussian Edge Detector')
