clear all;
close all;

load functionLUT;

figure(1);
plot(kwadratowa);

figure(2);
lena = imread('lena.bmp');
imshow(lena, []);

figure(3);
lena_lut = intlut(lena, kwadratowa);
imshow(lena_lut, []);

figure(4);
LUT(lena, kwadratowa);

figure(5);
LUT(lena, wykladnicza);

figure(6);
LUT(lena, pierwiastkowa);

figure(7);
LUT(lena, odwrotna);

figure(8);
LUT(lena, pila);

figure(9);
LUT(lena, odwlog);

figure(10);
LUT(lena, ex);


