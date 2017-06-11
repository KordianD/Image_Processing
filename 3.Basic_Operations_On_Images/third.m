close all;
clear all;

square = imread('square.bmp');
circle = imread('circle.bmp');

square = boolean(square);
circle = boolean(circle);

figure(1);
imshow(circle, []);

figure(2);
imshow(square, []);

figure(3);
subplot(2, 2, 1);
imshow(~square, []);

subplot(2, 2, 2);
imshow(square & circle, []);

subplot(2, 2, 3);
imshow(square | circle, []);

subplot(2, 2, 4);
imshow(xor(square, circle), []);

