% Introduction to image processing using MATLAB

clear all;
close all;

lenaBmp = imread('lena.bmp');
lenaJpg = imread('lena.jpg');

figure();
imshow(lenaBmp, []);

figure();
imshow(lenaJpg, []);

% Converting image to grayscale
lenaJpgGray = rgb2gray(lenaJpg);

figure();
imshow(lenaJpgGray, []);

% Saving image
imwrite(lenaJpgGray, 'lena_gray.bmp');

figure();
colormap gray;
mesh(double(lenaJpgGray));

figure();
plot(lenaJpgGray(10, :));

figure();
plot(lenaJpgGray(:, 10));



