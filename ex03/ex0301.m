function ex0301(lambda)
    f = double(imread('lena.pgm'));
    u = denoise(f,lambda);
    imshow(uint8(f));
    figure;
    imshow(u);
end