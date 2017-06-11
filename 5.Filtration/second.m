close all;
clear all;

lenaSzum = imread('lenaSzum.bmp');

figure(1);
result = medfilt2(lenaSzum);

subplot(1, 3, 1);
imshow(lenaSzum, []);
title('Orginal');

subplot(1, 3, 2);
imshow(result, []);
title('After median filter');

subplot(1, 3, 3);
imshow(imabsdiff(lenaSzum, result), []);
title('Difference');

lena = imread('lena.bmp');
figure(2);
subplot(2, 3, 1);
imshow(lena);
title('Orginal');

subplot(2, 3, 2)
filter = fspecial('average');
result = uint8(conv2(double(lena), double(filter), 'same'));
imshow(result);
title('Low-pass filter')

subplot(2, 3, 3);
imshow(imabsdiff(lena, result), []);
title('Difference');

subplot(2, 3, 4);
imshow(result, []);
title('Orginal');

subplot(2, 3, 5);
result = medfilt2(lenaSzum);
imshow(result, []);
title('Median filter');

subplot(2, 3, 6);
imshow(imabsdiff(lenaSzum, result), []);
title('Difference');