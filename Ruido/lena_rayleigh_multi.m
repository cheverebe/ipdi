function [ lena ] = lena_rayleigh_multi( e )
%LENA_RAYLEIGH_MULTI Summary of this function goes here
%   Detailed explanation goes here
    lena = imread('Images_test/lena.png');
    r = raylrnd(e,size(lena));
    lena = uint8(double(lena) .* r);
end