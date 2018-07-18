function ex0103
    f = double(imread('coins.png'));
    w = gaussianKernel(1.0);
    g = convolve(f,w);
    imshow(uint8(f));
    figure;
    imshow(uint8(g));
end