function Dx = getDxOperator(n)
    e = ones(n, 1);
    Dx = spdiags([e -e], -1:0, n, n); 
    Dx(:, end) = 0;
end