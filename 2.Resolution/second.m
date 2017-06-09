close all;
clear all;

lena = imread('lena.bmp');

lena256 = imresize(lena, 0.5, 'nearest');
lena128 = imresize(lena, 0.25, 'nearest');
lena64 = imresize(lena, 0.125, 'nearest');

figure();
imshow(lena256, 'InitialMagnification', 200);

figure();
imshow(lena128, 'InitialMagnification', 400);

figure();
imshow(lena64, 'InitialMagnification', 800);