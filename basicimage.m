
%{ Author: Andrea Murphy
    Date: March 1, 2019
    DESC: Histogram to view the distribution
    of image pixel intensities %}


pkg load image

%{read an image into the workspace by using the imread command,
    and storing it in an array named I%}
I = imread('black_and_white_test_image.jpg');

%{Display the image, by using the imshow function
    shows the rows and columns
    ans = row columns%}
imshow(I)

% shows how the imread stores the imgage data
whos I

%{To view the distribution of image pixel intensities
    Create a histogram imhist%}
figure
imhist(I)

% apply sobel filter
size(I)
BW = edge(I,'sobel',0.1);
figure
imshow(BW)

