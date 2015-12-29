function ex0302
    f = double(imread('lena.pgm'));
    g = f + rand(size(f));
    u = denoise(g,1.0);
    imshow(uint8(f));
    figure;
    imshow(uint8(g));
    figure;
    imshow(u);
end