function [gradX, gradY]=gradientForward(f)
    gradX=zeros(size(f));
    gradY=zeros(size(f));
    for i=1:size(f,1)
        for j=1:size(f,2)
            if i<size(f,1)
                gradY(i,j)=f(i+1,j)-f(i,j);
            end
            if j<size(f,2)
                gradX(i,j)=f(i,j+1)-f(i,j);
            end
        end
    end
end