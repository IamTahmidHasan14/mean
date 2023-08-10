clc;
f = rgb2gray(imread('road.jpg'));
f = im2double(f);
[M,N] = size(f);
h = [0 -1 0; -1 4 -1; 0 -1 0];
fp = padarray(f, [1 1]);
g = zeros([M N]);

for i = 2: M+1
    for j = 2: N+1
        g(i-1, j-1) = sum(sum(h .* fp(i-1:i+1, j-1:j+1)));
    end
end

figure; imshow(f, []);
figure; imshow(g, []);