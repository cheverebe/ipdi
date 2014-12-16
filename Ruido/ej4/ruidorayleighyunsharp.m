function [ res ] = ruidorayleighyunsharp( img, e, size )
%RUIDOYSAUVIZADO Summary of this function goes here
%   Detailed explanation goes here

    ruido = noise_rayleigh_multi(img,e);
    res = unsharp(ruido,size);
    
end

