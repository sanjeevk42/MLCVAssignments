function ex0401(lambda)
    img = double(imnoise(imread('lena.pgm'),'gaussian'));
    [m,n] = size(img);
    f = img';
    f = f(:);
    N=m*n;
    nabla = getNablaOperator(m,n);
    % lambda*(f-u) + laplacian(u) = 0
    % (lambda * I - laplacian) * u = lambda*f (Au = f)
    lambda=1/lambda;
    laplacian = -1.*(nabla'*nabla);
    A = lambda*speye(N) - laplacian;
    b = lambda*f;
    u = A\b;
    imshow(uint8(vec2mat(f,n)));
    figure;
    imshow(uint8(vec2mat(u,n)));
end

function nab = getNablaOperator(m,n)
    N = m*n;
    nabX = sparse(1:N-1,1:N-1,-1,N,N) + sparse(1:N-1,2:N,1,N,N);
    nabX(m:m:end,m:m:end)=0;
    nabX(m:m:end,m+1:m:end)=0;
    nabY = sparse(1:N-1,1:N-1,-1,N,N) + sparse(1:N-m,m+1:N,1,N,N);
    nab = [nabX;nabY];
end