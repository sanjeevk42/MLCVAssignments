% u(k+1) = u(k) - step * ((u-f) - div(nablaU()

epsilon = 0.01;
lambda = 1;
stepSize = 0.6;
img = double(rgb2gray(imread('images/noisy_input.png')));
[m,n]=size(img);
f = img(:);
N = m*n;
u = zeros(N,1);
D = [getDxOperator(N); getDyOperator(N)];
for i=1:20
    nablaU = D * u;
    %imshow(uint8(vec2mat(u,m))');figure;
    divergence = div(nablaU/sqrt(norm(nablaU)^2+epsilon^2));
    u = u - stepSize * ((u -f) - divergence);
    sum(u-f)
end
imshow(uint8(vec2mat(u,m))');
figure;
imshow(uint8(img));


