function [] = split(image, x1, y1, x2, y2)

global segRes trigger minimum index mean_table

temp = image(x1:x2, y1:y2);
[row, col] = size(temp);
mean_ = mean(double(temp(:)));
std_ = std(double(temp(:)));

    if std_ > trigger && row > minimum && col > minimum

        split(image, x1, y1, round((x2-x1)/2)+x1, round((y2-y1)/2)+y1);
        split(image, x1, round((y2-y1)/2)+y1, round((x2-x1)/2)+x1, y2);
        split(image, round((x2-x1)/2)+x1, y1, x2, round((y2-y1)/2)+y1);
        split(image, round((x2-x1)/2)+x1, round((y2-y1)/2)+y1, x2, y2);
    else 
        index = index + 1;
        segRes(x1:x2, y1:y2) = index;
        mean_table(x1:x2, y1:y2) = mean_;
    end

end