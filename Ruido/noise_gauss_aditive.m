function [ res ] = noise_gauss_aditive( img, mu, sigma )
%LENA_GAUSS_ADITIVE Summary of this function goes here
%   Detailed explanation goes here

    
    r = normrnd(mu,sigma,size(img));
    %r = rand(size(lena)) * amount - amount/2;
    res = uint8(double(img) + r);
end

