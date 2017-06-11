clear all;
close all;

image = imread('knee.png');
image = double(image);
[img_x, img_y] = size(image);

figure(1);
imshow(image, []);

stos = zeros(10000, 2);
visited = zeros(img_x, img_y);
segmented = zeros(img_x, img_y);

% visited(:, 1) = 1;
% visited(:, img_y) = 1;
% visited(1, :) = 1;
% visited(img_x, :) = 1;

[y_set, x_set] = ginput(1); 
x_set = floor(x_set);
y_set = floor(y_set); 

stos(1,1) = x_set;
stos(1,2) = y_set;
i = 1; 

visited(x_set,y_set) = 1; segmented(x_set,y_set) = 1;
threshold = 50;

while i ~= 0
   temp_x = stos(i,1); 
   temp_y = stos(i,2);
   i = i - 1; 
   for  j = (temp_x-1):(temp_x+1)
      for k = (temp_y-1):(temp_y+1)
          if visited(j,k) == 0
             if abs(image(j,k) - image(x_set,y_set)) < threshold
                segmented(j,k) = 1; 
                i = i + 1;
                stos(i, 1) = j;
                stos(i,2) = k;
             end
             visited(j,k) = 1;
          end
      end
   end
end

figure(2)
imshow(segmented, [])