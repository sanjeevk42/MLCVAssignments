function ex0106
    f=double(imread('coins.png'));
    frames(20)=struct('cdata',[],'colormap',[]);
    i=1;
    for sigma=0.1:0.1:2
        g = uint8(convolve(f,gaussianKernel(sigma)));
        frames(i)=im2frame(g,gray(256));
        i = i+1;
    end
    movie(frames);
end