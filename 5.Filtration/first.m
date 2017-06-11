clear all;
close all;

board = imread('plansza.tif');

filter = fspecial('average');

result = uint8(conv2(double(board), double(filter), 'same'));

figure(1);
subplot(1, 3, 1);
imshow(board, []);
title('Orginal');

subplot(1, 3, 2);
imshow(result, []);
title('After low-pass filter');

subplot(1, 3, 3);
imshow(imabsdiff(board, result), []);
title('Difference');


figure(2);
subplot(1, 5, 1);
filter = fspecial('average', 5);
result = uint8(conv2(double(board), double(filter), 'same'));
imshow(result, []);
title('3x3');

subplot(1, 5, 2);
filter = fspecial('average', 5);
result = uint8(conv2(double(board), double(filter), 'same'));
imshow(result, []);
title('5x5');

subplot(1, 5, 3);
filter = fspecial('average', 9);
result = uint8(conv2(double(board), double(filter), 'same'));
imshow(result, []);
title('9x9');

subplot(1, 5, 4);
filter = fspecial('average', 15);
result = uint8(conv2(double(board), double(filter), 'same'));
imshow(result, []);
title('15x15');

subplot(1, 5, 5);
filter = fspecial('average', 35);
result = uint8(conv2(double(board), double(filter), 'same'));
imshow(result, []);
title('35x35');


lena = imread('lena.bmp');

figure(3);
subplot(1, 5, 1);
filter = fspecial('average', 5);
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result, []);
title('3x3');

subplot(1, 5, 2);
filter = fspecial('average', 5);
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result, []);
title('5x5');

subplot(1, 5, 3);
filter = fspecial('average', 9);
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result, []);
title('9x9')

subplot(1, 5, 4);
filter = fspecial('average', 15);
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result, []);
title('15x15')

subplot(1, 5, 5);
filter = fspecial('average', 35);
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result, []);
title('35x35');

Mask = [1 2 1; 2 4 2; 1 2 1];
Mask = Mask / sum(sum(Mask)); 
result = uint8(conv2(double(lena), double(Mask), 'same'));
figure(4);
subplot(1, 2, 1);
imshow(lena, []);
title('Oryginal');

subplot(1, 2, 2);
imshow(result, []);
title('Filtracja');

filter_gauss = fspecial('gaussian', 5, 0.5);
figure(5);
mesh(filter_gauss);

figure(6);
subplot(1, 3, 1);
filter_gauss = fspecial('gaussian', 5, 0.5);
result = uint8(conv2(double(lena), double(filter_gauss), 'same'));
imshow(result, []);
title('Std: 0.5');

subplot(1, 3, 2);
filter_gauss = fspecial('gaussian', 5, 5);
result = uint8(conv2(double(lena), double(filter_gauss), 'same'));
imshow(result, []);
title('Std: 5');

subplot(1, 3, 3);
filter_gauss = fspecial('gaussian', 5, 10);
result = uint8(conv2(double(lena), double(filter_gauss), 'same'));
imshow(result, []);
title('Std: 10');