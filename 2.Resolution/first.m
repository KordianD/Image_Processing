close all;
clear all;

figure();
lena = imread('lena100.bmp');
imshow(lena);

lenaNN = imresize(lena, 2, 'nearest');
figure();
imshow(lenaNN, []);

lenaBL = imresize(lena, 2, 'bilinear');
figure();
imshow(lenaBL, []);

lenaBC = imresize(lena, 2, 'bicubic');
figure();
imshow(lenaBC, []);


chess = imread('chess_board.bmp');


szachNN = imresize(chess, 10, 'nearest');
figure(4)
imshow(szachNN)

szachBL = imresize(chess, 10, 'bilinear');
figure(5)
imshow(szachBL)


szachBC = imresize(chess, 10, 'bilinear');
figure(6)
imshow(szachBC)


szachNN = imresize(chess, 6.25, 'nearest');
figure(7)
imshow(szachNN)


szachBL = imresize(chess, 6.25, 'bilinear');
figure(8)
imshow(szachBL)


szachBC = imresize(chess, 6.25, 'bilinear');
figure(9)
imshow(szachBC)


