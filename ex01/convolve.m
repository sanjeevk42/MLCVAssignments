function g=convolve(f,w)
    g= f;
    m = size(w,1);
    n=size(w,2);
    for i=1:size(f,1)-m+1
        for j=1:size(f,2)-n+1
            g(i+floor(m/2),j+floor(n/2))=sum(sum(f(i:i+m-1,j:j+n-1).*w));
        end
    end
end
