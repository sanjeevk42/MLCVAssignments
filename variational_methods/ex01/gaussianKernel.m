function g = gaussianKernel(sigma)
    g=zeros(3,3);
    for m=-1:1
        for n=-1:1
            g(m+2,n+2)=exp(-(m^2+n^2)/(2*sigma^2));
        end
    end
    g=g/sum(g(:));
end