function ex0201
    f = double(imread('lena.pgm'));
    w = gaussian1D(3,1.0);
    g1 = f;
    filterSize = size(w,2);
    for i=1:size(f,1)
        for j=1:size(f,2)-filterSize+1
            g1(i,j)=sum(f(i,j:j+filterSize-1).*w);
        end
    end
    g2 = g1;
    for i=1:size(f,1)-filterSize+1
        for j=1:size(f,2)
            g2(i,j)=sum(g1(i:i+filterSize-1,j).*w');
        end
    end
    imshow(uint8(f));
    figure;
    imshow(uint8(g2));
end