function g = gaussian1D(size,sigma)
    g = zeros(size);
    for i = -floor(size/2):floor((size+1)/2)+1
        g(i+floor(size/2)+1)=exp(-(i^2)/(2*sigma^2));
    end
    g = g/sum(g);
    g = g';
end