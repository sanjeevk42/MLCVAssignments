function Dy = getDyOperator(n)
    e = ones(n, 1);
    Dy = spdiags([-e e], 0:1, n, n);
    Dy(end, end) = 0;
end