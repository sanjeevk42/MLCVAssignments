function ex0301
    f = double(imread('lena.pgm'));
    u = denoise(f,1);
    imshow(uint8(f));
    figure;
    imshow(u);
end