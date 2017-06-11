function LUT(image, coding)

image_LUT = intlut(image, coding)

subplot(2,2,1:2)
plot(coding)
title('LUT function')

subplot(2,2,3)
imshow(image, [])
title('Orginal')

subplot(2,2,4)
imshow(image_LUT, [])
title('After LUT')
end
