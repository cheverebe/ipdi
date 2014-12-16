function [ res ] = suavizar( img, size )
%SUAVIZAR Summary of this function goes here
%   Detailed explanation goes here

    res = filtro_pasabajo(img,size);

end

