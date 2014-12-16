function [ res ] = filtro_pasaalto( img, size )
%FILTRO_PASAALTO Summary of this function goes here
%   Detailed explanation goes here

    mask = ones(size);
    mask = -mask;
    mask(ceil(size(1)/2),ceil(size(2)/2)) = size(1)*size(2);
    
    res = mascara_arbitraria(img,mask);


end

