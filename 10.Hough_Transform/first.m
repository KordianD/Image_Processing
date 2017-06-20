clear all; 
close all;

image = zeros(11, 11);
image(10, 10) = 1;

[H, T, R] = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);

figure
subplot(1, 3, 1)
imshow(H, [])
title('Hough - one point')

image(5, 5) = 1;
[H, T, R] = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
subplot(1, 3, 2)
imshow(H, [])
title('Hough - two points')

image(2, 2) = 1;
image(1, 1) = 1;
[H, T, R] = hough(image, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
subplot(1, 3, 3)
imshow(H, [])
title('Hough - collinear');


