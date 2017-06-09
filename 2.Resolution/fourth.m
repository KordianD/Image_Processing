close all;
clear all;

lena = imread('lena.bmp');

lena90 = imrotate(lena, 90);
lena45 = imrotate(lena, 45);
lena_90 = imrotate(lena, -90);
lena_45 = imrotate(lena, -45);

figure();
subplot(2, 2, 1);
imshow(lena90, []);

subplot(2, 2, 2);
imshow(lena45, []);

subplot(2, 2, 3);
imshow(lena_90, []);

subplot(2, 2, 4);
imshow(lena_45, []);


chess = imread('chess_board.bmp');

chessNN = imrotate(chess, -45, 'nearest');

chessBL = imrotate(chess, -45, 'bilinear');

chessNC = imrotate(chess, -45, 'bicubic');

figure();
subplot(1, 3, 1);
imshow(chessNN, []);

subplot(1, 3, 2);
imshow(chessBL, []);

subplot(1, 3, 3);
imshow(chessNC, []);


figure()
theta = -45;
scale = 0.5;
pom = [scale 0 0; 0 scale 0; 0 0 1]; 
matrix = [cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1] * pom;
tform = affine2d(matrix);
img = imwarp(lena, tform);

imshow(img, []);


lena = imread('lena.bmp');
lena_translate = imtranslate(lena, [50 50]);
figure();
imshow(lena_translate, []);

translate_matrix = affine2d([1 0 0; 0 1 0; 50 50 1]);
             
lena_translate_imwarp = imwarp(lena, translate_matrix, 'OutputView', imref2d(size(lena)));
figure();
imshow(lena_translate_imwarp, []);
