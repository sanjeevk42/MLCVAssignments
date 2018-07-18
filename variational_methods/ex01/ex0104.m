function ex0104
    f = double(imread('coins.png'));
    [gradX,gradY]=gradientForward(f);
    imshow(gradX);
    figure;
    imshow(gradY);
end