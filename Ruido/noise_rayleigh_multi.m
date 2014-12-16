function [ lena ] = noise_rayleigh_multi( img, e )
%LENA_RAYLEIGH_MULTI Summary of this function goes here
%   Detailed explanation goes here
    lena = img;
    r = raylrnd(e,size(lena))
    lena = uint8(double(lena) .* r);
end