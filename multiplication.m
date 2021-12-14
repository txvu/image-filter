% Reference: https://www.oreilly.com/library/view/programming-computer-vision/9781449341916/ch01.html

function new_image = multiplication(image, filter)
    [m, n, l] = size(image);
    for i = 1:m
        for j = 1:n
            temp = reshape(double(image(i,j,:)), 3, 1);
            new_image(i, j, :) = uint8(filter * temp);
        end;
    end;
end;