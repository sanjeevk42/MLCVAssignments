function out = denoise(img,lambda)
    f= double(img(:));
    denoisingMatrix = getDenoisingMatrix(lambda,size(f,1));
    u = gaussSeidel(denoisingMatrix,f);
    out = uint8(vec2mat(u,size(img,1))');
end

function denoisingMatrix = getDenoisingMatrix(lambda, n)
    diagonal = sparse(1:n,1:n, 1 + 2*lambda,n,n);
    lower = sparse(2:n,1:n-1,-lambda,n,n);
    denoisingMatrix = lower + diagonal + lower';
    denoisingMatrix(1,1) = 1 + lambda;
    denoisingMatrix(n,n) = 1 + lambda;
end

% solution to Ax=b using Gauss-Seidel algorithm.
function x = gaussSeidel(A, b)
    lower = tril(A);
    upper = triu(A) - diag(diag(A));
    x = b;
    for i=1:20
        x = lower\(b-upper*x);
    end
end