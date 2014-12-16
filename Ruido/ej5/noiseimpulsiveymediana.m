function [ res ] = noiseimpulsiveymediana( img, intensidad )
%NOISEIMPULSIVEYMEDIANA Summary of this function goes here
%   Detailed explanation goes here
    ruido = noise_impulsive(img,intensidad);
    res = filtro_mediana(ruido);

end

