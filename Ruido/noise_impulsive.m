function [ res ] = noise_impulsive( img, intensidad )
%NOISE_IMPULSIVE Summary of this function goes here
%   Detailed explanation goes here SALT AND PEPPER
    ruido = randi([-1,1],size(img))*intensidad;
    res = img+uint8(ruido);
end

