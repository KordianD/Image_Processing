clear all;
close all;

lena = imread('lena.bmp');
jet = imread('jet.bmp');

figure(1);
imshow(lena, []);

figure(2);
imshow(jet, []);

lena_jet = imadd(lena, jet);
lena_jet_uint16 = imadd(lena, jet, 'uint16');

figure(3);
imshow(lena_jet, []);

figure(4);
imshow(lena_jet_uint16, []);


lena_jet_comb = imlincomb(0.45, lena, 3, jet, 'uint16');
figure(5);
imshow(lena_jet_comb, []);

lena_jet_sub = imsubtract(lena, jet);
figure(6);
imshow(lena_jet_sub, []);


lena_jet_sub = imabsdiff(int16(lena), int16(jet));
figure(7);
imshow(lena_jet_sub, [])

square = imread('circle.bmp');
square = boolean(square);
figure(8);
imshow(immultiply(uint16(jet), square), []);






