close all;
clear all;


image = zeros(90, 90);

image(45, 30) = 1;
image(45, 60) = 1;

Y = fftshift(fft2(image));


figure
subplot(1, 3, 1)
imshow(image, [])
title('Oryginal')

subplot(1, 3, 2)
A = abs(Y);
A = log10(A+1);
imshow(A, []);
title('Amplituda')

subplot(1, 3, 3)
F = angle(Y.*(A>0.0001));
imshow(F, []);
title('Faza')

