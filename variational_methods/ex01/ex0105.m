function ex0105
    f = double(imread('coins.png'));
    [gradX,gradY]=imgradientxy(f,'IntermediateDifference');
    imshow(gradX);
    figure;
    imshow(gradY);
end