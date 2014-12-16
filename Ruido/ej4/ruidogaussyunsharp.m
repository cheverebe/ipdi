function [ res ] = ruidogaussyunsharp( img, mu, sigma, size )
%RUIDOYSAUVIZADO Summary of this function goes here
%   Detailed explanation goes here

    ruido = noise_gauss_aditive(img,mu,sigma);
    res = unsharp(ruido,size);

end

