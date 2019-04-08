% Author: Andrea Murphy
% Date: April 7, 2019
% DESC: Color-Based Segmentation Using the L*a*b* Color Space

figure;
fruitIM = imread('fruit.jpg');
subplot(1,2,1);
imshow(fruitIM)
title('Original Picture')

lab_fruit = rgb2lab(fruitIM);
subplot(1,2,2);
imshow(lab_fruit)
title('rgb2lab')

figure
a = lab_fruit(:,:,2);
b = lab_fruit(:,:,3);
color_markers = zeros([nColors, 2]);

for count = 1:nColors
  color_markers(count,1) = mean2(a(sample_regions(:,:,count)));
  color_markers(count,2) = mean2(b(sample_regions(:,:,count)));
end

color_labels = 0:nColors-1;
a = double(a);
b = double(b);
distance = zeros([size(a), nColors]);

for count = 1:nColors
  distance(:,:,count) = ( (a - color_markers(count,1)).^2 + ...
                      (b - color_markers(count,2)).^2 ).^0.5;
end

[~,label] = min(distance,[],3);
label = color_labels(label);
clear distance;

rgb_label = repmat(label,[1 1 3]);
segmented_images = zeros([size(fruitIM), nColors],'uint8');

for count = 1:nColors
  color = fruitIM;
  color(rgb_label ~= color_labels(count)) = 0;
  segmented_images(:,:,:,count) = color;
end 

montage({segmented_images(:,:,:,2),segmented_images(:,:,:,3) ...
    segmented_images(:,:,:,4),segmented_images(:,:,:,5) ...
    segmented_images(:,:,:,6),segmented_images(:,:,:,1)});
