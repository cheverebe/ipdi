function [ lena ] = lena_gauss_aditive( amount )
%LENA_GAUSS_ADITIVE Summary of this function goes here
%   Detailed explanation goes here

    lena = imread('Images_test/lena.png');
    r = rand(size(lena)) * amount - amount/2;
    lena = uint8(double(lena) + r);
end

