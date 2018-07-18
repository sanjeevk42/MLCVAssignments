function d = div(gradient)
    n = size(gradient,1);
    gradX = gradient(1:n/2);
    gradY = gradient(n/2+1:end);
    Dx = getDxOperator(n/2);
    Dy = getDyOperator(n/2);
    d = Dx*gradX + Dy*gradY;
end