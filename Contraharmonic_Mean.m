%Contraharmonic_Mean
clc;
f = rgb2gray(imread('road.jpg'));
f = im2double(f);
f = imnoise(f, 'gaussian');
[M,N] = size(f);
fp = padarray(f, [1 1]);
g = zeros([M N]);
Q = 1;
for i = 2: M+1
    for j = 2: N+1
        g(i-1, j-1) = ((sum(sum(fp(i-1:i+1, j-1:j+1)))).^(Q+1) / (sum(sum(fp(i-1:i+1, j-1:j+1)))).^Q);
    end
end

figure; imshow(f, []);
figure; imshow(g, []);