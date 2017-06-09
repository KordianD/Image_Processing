clear all;
close all;

lena = imread('lena_gray.bmp');

[image, map_lena] = gray2ind(lena, 256);

figure();
imshow(image, map_lena);

figure();
new_map = colormap('summer');
imshow(image, new_map);