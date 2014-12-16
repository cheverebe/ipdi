function [ res ] = ruidorayleighysauvizado( img, e, size )
%RUIDOYSAUVIZADO Summary of this function goes here
%   Detailed explanation goes here

    ruido = noise_rayleigh_multi(img,e);
    res = suavizar(ruido,size);

end

