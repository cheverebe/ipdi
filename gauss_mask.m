function [ res ] = gauss_mask( A, tam, sigma)
%GAUSS_MASK Summary of this function goes here
%   Detailed explanation goes here

g = fspecial('gaussian', [tam,tam], sigma);

res = conv2(double(g),double(A));
res = uint8(res);
end

